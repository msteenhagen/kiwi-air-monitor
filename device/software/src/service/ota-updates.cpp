#include "service/ota-updates.hpp"
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <StreamString.h>
#include "user-config.h"

// a global, since the callback of mqtt framework doesn't support an aux pointer
static char otaSum[MD5_TEXT_SIZE + 1];

BearSSL::PublicKey signPubKey(KIWI_OTA_PUBLIC_KEY, KIWI_OTA_PUBLIC_KEY_len);
BearSSL::HashSHA256 hash;
BearSSL::SigningVerifier sign(&signPubKey);

OTAUpdates::OTAUpdates(WifiConnection *wifi, MqttConnection *mqtt, KiwiTimer &timer):  mqtt{mqtt}, wifi{wifi} {

    EVERY(timer, 60*1000, OTAUpdates, checkOta);
    EVERY(timer, 60*1000, OTAUpdates, reportState);

    memcpy(currentSum, ESP.getSketchMD5().c_str(), MD5_TEXT_SIZE + 1);
    memcpy(otaSum, currentSum, MD5_TEXT_SIZE + 1);

    mqtt->subscribe("kiwi/all/update_firmware", [](char* buf, uint16_t len) -> void {
        if (len == MD5_TEXT_SIZE || len == MD5_TEXT_SIZE + 1) {
            memcpy(otaSum, buf, MD5_TEXT_SIZE);
            otaSum[MD5_TEXT_SIZE] = '\0';
        }
    });

}

bool OTAUpdates::reportState() {
    if (wifi->isConnected()) {
        mqtt->publish("state/firmware", currentSum);
    }
    return true;
}


static bool checkHTTPSuccess(HTTPClient &http, int code, int len) {
    if (code <= 0) {
        Serial.printf("Failure getting firmware :%s\n", http.errorToString(code).c_str());
        return false;
    }
    if (code != HTTP_CODE_OK) {
        Serial.printf("Unexpected code returned from HTTP: %d\n", code);
        return false;
        return true;
    }

    if (len > (int)ESP.getFreeSketchSpace()) {
        Serial.printf("Nog enough space for update, need %d, got: %d\n", len, ESP.getFreeSketchSpace());
        return false;
    }
    return true;
}

static void printUpdaterError(const char* prefix) {
    StreamString errorStream;
    Update.printError(errorStream);
    errorStream.trim();
    Serial.printf("%s: %s\n", prefix, errorStream.c_str());
}

static bool prepareUpdater(int len) {
    Update.installSignature(&hash, &sign);
    if (!Update.begin(len, U_FLASH, LED_BUILTIN, HIGH)) {
        printUpdaterError("Updater init failed");
        return false;
    }

    if (!Update.setMD5(otaSum)) {
        Serial.println("Updater failed with md5 setup");
        return false;
    }
    return true;
}



bool OTAUpdates::checkOta() {
    if (memcmp(otaSum, currentSum, MD5_TEXT_SIZE) == 0 || !wifi->isConnected()) {
        return true;
    }
    Serial.println("Starting update download ");
    WiFiClient client;
    HTTPClient http;
    http.begin(client, KIWI_OTA_URL);
    http.useHTTP10(true); // no transfer encoding etc
    http.setTimeout(5000);
    http.setFollowRedirects(followRedirects_t::HTTPC_FORCE_FOLLOW_REDIRECTS);
    http.setUserAgent(F("Kiwi-OTA"));
    http.addHeader("X-Kiwi-Current", String(currentSum));

    int code = http.GET();
    int len = http.getSize();

    if (!checkHTTPSuccess(http, code, len)) {
        http.end();
        return true;
    }

    WiFiClient * tcp = http.getStreamPtr();
    // stop all active connections
    WiFiClient::stopAllExcept(tcp);
    delay(100); // wait for wifi chip to be done with closing connections

    if (!prepareUpdater(len)) {
        http.end();
        return true;
    }


    if ((int)Update.writeStream(*tcp) != len) {
        printUpdaterError("Updater download");
        http.end();
        return true;
    }

    if (!Update.end()) {
        printUpdaterError("Update.end failed");
        http.end();
        return true;
    }

    http.end();

    // we've update firmware, and it was valid, so let's reboot
    Serial.println("Updated firmware, rebooting");
    Serial.flush();
    ESP.restart();
    return true;
}
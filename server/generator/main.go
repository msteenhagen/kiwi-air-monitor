package main

import (
	"crypto/tls"
	"flag"
	"fmt"
	"log"
	"math"
	"math/rand"
	"net/url"
	"time"

	mqtt "github.com/eclipse/paho.mqtt.golang"
)

func connect(uri *url.URL) mqtt.Client {
	opts := createClientOptions("kiwi-test", uri)
	client := mqtt.NewClient(opts)
	token := client.Connect()
	for !token.WaitTimeout(3 * time.Second) {
	}
	if err := token.Error(); err != nil {
		log.Fatal(err)
	}
	return client
}

func createClientOptions(clientId string, uri *url.URL) *mqtt.ClientOptions {
	opts := mqtt.NewClientOptions()
	var target string
	if uri.Scheme == "mqtt" {
		target = fmt.Sprintf("tcp://%s", uri.Host)
	} else {
		tlsConfig := &tls.Config{InsecureSkipVerify: true, ClientAuth: tls.NoClientCert}
		opts.SetTLSConfig(tlsConfig)
		target = fmt.Sprintf("ssl://%s", uri.Host)
	}

	opts.AddBroker(target)
	opts.SetUsername(uri.User.Username())
	password, _ := uri.User.Password()
	opts.SetPassword(password)
	opts.SetClientID(clientId)
	return opts
}

func shiftedSin(s, min, max float64) float64 {
	height := max - min
	return min + (height / 2) + (math.Sin(s) * (height / 2))
}

const simulateSteps = 60

func generateValues(min float64, max float64, target chan float64) {
	// two nested sinuses, between min and max
	sBig := rand.Float64() * math.Pi
	for true {
		if sBig >= math.Pi {
			sBig = 0
		}
		offset := shiftedSin(sBig, min, max)
		currentMax := offset + (rand.Float64() * 0.3 * (max - offset))
		for sSmall := 0.0; sSmall < math.Pi; sSmall += rand.Float64() * math.Pi {
			target <- shiftedSin(sSmall, offset, currentMax)
		}
		sBig += math.Pi / simulateSteps
	}
}

func fakeClient(client mqtt.Client, clientID byte) {
	co2 := make(chan float64)
	temps := make(chan float64)
	humidity := make(chan float64)
	pressure := make(chan float64)

	go generateValues(400, 1500, co2)
	go generateValues(17, 35, temps)
	go generateValues(40, 70, humidity)
	go generateValues(100000, 103000, pressure)

	timer := time.NewTicker(10 * time.Second)
	clientMac := fmt.Sprintf("FE:ED:C0:DE:00:00:00:%02X", clientID)

	publishFloat := func(kind string, value float64) {
		topic := fmt.Sprintf("kiwi/%s/sensor/%s", clientMac, kind)
		client.Publish(topic, 0, false, fmt.Sprintf("%.2f", value)).WaitTimeout(1 * time.Second)
	}
	for range timer.C {
		publishFloat("CO2", <-co2)
		publishFloat("Temperature", <-temps)
		publishFloat("Humidity", <-humidity)
		publishFloat("Pressure", <-pressure)
		client.Publish(fmt.Sprintf("kiwi/%s/state/Active", clientMac), 0, false, "true").WaitTimeout(1 * time.Second)
	}
}

func main() {
	var mqttURL string
	var amountOfClients int

	flag.StringVar(&mqttURL, "mqttURL", "mqtt://localhost:8883/", "Mqtt server to connect to")
	flag.IntVar(&amountOfClients, "clients", 2, "Specifiy the amount of clients to generate")
	flag.Parse()

	uri, err := url.Parse(mqttURL)
	if err != nil {
		log.Fatal(err)
	}

	client := connect(uri)
	for cID := 1; cID < amountOfClients; cID++ {
		go fakeClient(client, byte(cID))
	}
	// just switch main loop to running on of the fake clients (the other are scheduled in background)
	fakeClient(client, 0)
}

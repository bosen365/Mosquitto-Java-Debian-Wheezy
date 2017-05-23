#!/bin/bash

wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key

cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list
cd

sudo apt-get update
sudo apt-get install mosquitto mosquitto-clients mosquitto-dev

### UNCOMMENT THESE LINES FOR BUILDING FROM SOURCE ###
# mkdir MQTT_Project
# cd MQTT_Project
# git clone https://github.com/eclipse/paho.mqtt.java.git 
# sudo apt-get install maven
# mvn package -DskipTests
# cp paho.mqtt.java/org.eclipse.paho.client.mqttv3/target/org.eclipse.paho.client.mqttv3-1.1.1.jar .
### UNCOMMENT THESE LINES FOR BUILDING FROM SOURCE ###

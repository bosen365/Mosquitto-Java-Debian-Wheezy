#!/bin/bash

wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key

cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list
cd

sudo apt-get update
sudo apt-get install mosquitto mosquitto-clients mosquitto-dev

mkdir MQTT_Project
cd MQTT_Project

#git clone https://github.com/eclipse/paho.mqtt.java.git
 
#sudo apt-get install maven
#mvn package -DskipTests

#cp paho.mqtt.java/org.eclipse.paho.client.mqttv3/target/org.eclipse.paho.client.mqttv3-1.1.1.jar .

# https://mosquitto.org/download/
# https://mosquitto.org/2013/01/mosquitto-debian-repository/
# http://tgrall.github.io/blog/2017/01/02/getting-started-with-mqtt/
# https://github.com/eclipse/paho.mqtt.java
# https://github.com/tgrall/mqtt-sample-java

#!/bin/bash

cd /home/cs6300/Documents/recording/recordingserver-3.70.0.200/controllers/linux/controller/bin

#config the machine name and the server address
UUID=$(cat /proc/sys/kernel/random/uuid)
sed -i.bak s/"test machine"/${UUID}/g config.properties
sed -i.bak s/"127.0.0.1"/"143.215.128.105"/g config.properties

chmod a+x *.sh
sudo ./installDaemon.sh
sudo ./startDaemon.sh

cd ..
if [ ! -d data ]; then
	mkdir data;
fi;
cd data

if [ ! -d apps ]; then
	mkdir apps;
fi;
cd apps

if [ ! -d JetUML ]; then
	mkdir JetUML;
fi;
cd JetUML

if [ ! -d configs ]; then
	mkdir configs;
fi;
cd configs
echo "include = ca.mcgill.cs.stg.jetuml.**" >> JetUML_cfg.config

cd /home/cs6300/Documents/recording/recordingserver-3.70.0.200/recorder
printf '%sservermode = true\nname=JetUML\nautostartwithconfig=JetUML_cfg' > chrononcfg.txt

cd /home/cs6300/Documents/recording
java -javaagent:/home/cs6300/Documents/recording/recordingserver-3.70.0.200/recorder/recorder-3.70.0.200.jar -agentpath:/home/cs6300/Documents/recording/recordingserver-3.70.0.200/recorder/librecorderagent64-3.0.7.so -noverify -jar $1

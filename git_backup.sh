#!/bin/sh
cd ~/node-red-config
docker cp nodered:/data/flows.json -| tar -xO | python -m json.tool > flows_raspberrypi.json
git commit -am "Auto commit `date -Iminutes`"
git push -u origin master

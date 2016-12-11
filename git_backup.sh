#!/bin/sh
cd ~/node-red-config
python -m json.tool ~/.node-red/flows_raspberrypi.json > flows_raspberrypi.json
git commit -am "Auto commit `date -Iminutes`"
git push -u origin master

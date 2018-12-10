FROM nodered/node-red-docker:rpi

RUN npm install node-red-contrib-moment
RUN npm install node-red-dashboard

ADD flows_raspberrypi.json /data/flows.json

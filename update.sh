#!/bin/bash
docker build --no-cache --pull -t node-red-docker . &&
docker stop nodered &&
docker rm nodered &&
docker run --name nodered -dit --restart unless-stopped -p 1880:1880 node-red-docker

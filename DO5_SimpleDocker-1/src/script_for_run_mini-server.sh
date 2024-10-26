#!/bin/bash

docker build -t mini-server:3.0 .
docker run -d -p 80:81 --name mini-server -v ./server/nginx:/etc/nginx mini-server:3.0
curl http://localhost/status 
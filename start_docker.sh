#!/bin/bash


docker build -t jdeskins/hello-node .

docker run -d --name hello-node -p 8080:8080 jdeskins/hello-node

sleep 1

curl http://$(docker-machine ip default):8080/version

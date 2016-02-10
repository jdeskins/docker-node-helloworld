#!/bin/bash

echo "Stopping container..."
docker stop hello-node
docker rm hello-node

echo "Removing any orphaned images..."
docker images -q --filter "dangling=true" | xargs docker rmi


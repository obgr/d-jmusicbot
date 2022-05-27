#!/bin/bash
# Vars
IMAGEVER="2.1"

# Build Image
docker build . -t jmusicbot:${IMAGEVER}
# Run Image
docker run -d \
 --mount type=bind,source="$(pwd)"/srv,target=/srv \
 --restart unless-stopped \
 jmusicbot:${IMAGEVER}

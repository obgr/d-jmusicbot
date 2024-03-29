#!/bin/bash
# Vars
IMAGEVER="2.2"

# Build Image
docker build . -t d-jmusicbot:${IMAGEVER}
# Run Image
docker run -d \
 --mount type=bind,source="$(pwd)"/srv,target=/srv \
 --restart unless-stopped \
 d-jmusicbot:${IMAGEVER}

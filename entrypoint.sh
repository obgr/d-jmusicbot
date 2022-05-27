#!/bin/bash

# Functions
get_latest_release() {
   curl --silent "https://api.github.com/repos/$1/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")' # Consult github api and grep/sed out result
}
download_latest_release() {
   # Download JMusicBot
   echo "Downloading $FILE from github."
   wget -q https://github.com/${REPO}/releases/download/${TAG}/${FILE}
}
start_bot() {
   # Start JMusicBot
   echo "Starting $FILE."
   java -Dnogui=true -jar ${FILE}
}

# Variables
REPO="jagrosh/MusicBot"
TAG=$(get_latest_release ${REPO})
FILE=JMusicBot-${TAG}.jar

echo "Container startup!"
echo "Latest tag is ${TAG}"
if [ -f $FILE ]; then
   echo "File $FILE exists."
   start_bot
else
   echo "File $FILE does not exist."
   download_latest_release
   start_bot
fi


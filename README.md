# d-jmusicbot
Dockerized implementation of [jagrosh/MusicBot](https://github.com/jagrosh/MusicBot)

## Build and run
``` bash start.sh ```

## Build and run manually
Build
``` docker build . -t jmusicbot:2.1 ```

Run
``` docker run --mount type=bind,source="$(pwd)"/srv,target=/srv jmusicbot:2.1 ```

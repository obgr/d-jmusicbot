# d-jmusicbot
Dockerized implementation of [jagrosh/MusicBot](https://github.com/jagrosh/MusicBot)

## Build and run
``` bash start.sh ```

## Build and run manually
Build

``` docker build . -t d-jmusicbot:2.2 ```

Run
```
docker run -d \
 --mount type=bind,source="$(pwd)"/srv,target=/srv \
 --restart unless-stopped \
 d-jmusicbot:2.1
```

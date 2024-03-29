FROM openjdk:22-slim-bookworm

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install wget curl

WORKDIR /srv

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]

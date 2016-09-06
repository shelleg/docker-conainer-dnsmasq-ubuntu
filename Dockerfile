FROM ubuntu:16.04
MAINTAINER hagzag@tikalk.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y dnsmasq

EXPOSE 53
EXPOSE 53/udp

CMD ["/usr/sbin/dnsmasq", "-d"]

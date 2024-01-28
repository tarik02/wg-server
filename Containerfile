FROM ubuntu:latest AS server

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y wireguard-tools inotify-tools iproute2 iptables

ADD ./entrypoint /usr/local/bin/entrypoint

ENTRYPOINT bash /usr/local/bin/entrypoint

FROM ubuntu:14.04

RUN \
  apt-get update && \
  apt-get install -y wget screen && \
  wget -qO - https://s3-eu-west-1.amazonaws.com/benthicmaw-debs/pubkey.txt | sudo apt-key add - && \
  echo "deb http://s3-eu-west-1.amazonaws.com/benthicmaw-debs trusty main" >> /etc/apt/sources.list && \
  apt-get update

RUN \
  apt-get install -y dfterm2

RUN \
  dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y libsdl1.2debian libsdl-image1.2 libsdl-ttf2.0-0 libglu1-mesa libgtk2.0-0 && \
  apt-get install -y libsdl1.2debian:i386 libsdl-image1.2:i386 libsdl-ttf2.0-0:i386 libglu1-mesa:i386 libgtk2.0-0:i386

ENV LANG C.UTF-8

EXPOSE 8000

VOLUME ["/games"]
VOLUME ["/config"]

ENTRYPOINT ["dfterm2", "--conf", "/config/dfterm2.conf"]

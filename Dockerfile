FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies && setup basics
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -qqy && \
  DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    apt-utils \
    build-essential \
    ca-certificates \
    curl \
    dirmngr \
    dnsutils \
    findutils \
    gpg \
    jq \
    pigz \
    pkg-config \
    sudo \
    rename \
    tar \
    util-linux \
    wget && \
  mkdir -p /work && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /work

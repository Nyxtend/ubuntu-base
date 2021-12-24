FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies && setup basics
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -qqy && \
  DEBIAN_FRONTEND=noninteractive apt-get install -qqy \
    apt-utils \
    ca-certificates \
    curl \
    dirmngr \
    findutils \
    gpg \
    pigz \
    jq \
    rename \
    tar \
    util-linux && \
  mkdir -p /work

WORKDIR /work

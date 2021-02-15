FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y \
    mpich \
    python3 \
    python3-pip \
    python3-tk \
  && rm -rf /var/lib/apt/lists/*

COPY . /spinningup/
WORKDIR /spinningup/
RUN python3 -m pip install -e .

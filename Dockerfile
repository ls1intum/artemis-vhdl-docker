FROM ubuntu:20.10

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
  g++ \
  g++-multilib \
  gcc \
  gcc-multilib \
  nasm \
  python3 \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install junit-xml

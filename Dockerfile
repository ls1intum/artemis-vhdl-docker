FROM ubuntu:19.10

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
  gcc \
  ghdl \
  python3 \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install junit-xml

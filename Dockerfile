FROM ubuntu:18.04

#COPY ./config/apt/sources.list /etc/apt/sources.list
RUN apt-get update \
  && apt-get install -y ssh \
    build-essential \
    gcc \
    g++ \
    gdb \
    clang \
    cmake \
    rsync \
    tar \
    python \
  && apt-get clean

RUN useradd -m user && yes password | passwd user

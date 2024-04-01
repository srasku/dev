FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        cmake \
        curl \
        git \
        mercurial \
        shellcheck

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}

# Install Google Test
RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        googletest \
        g++ && \
    cd /usr/src/googletest && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make install

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

RUN git clone https://github.com/neovim/neovim.git && \
    apt-get install -y \
        gettext \
        ninja-build \
        unzip && \
    cd /home/develop/neovim && \
    git checkout v0.9.5 && \
    make CMAKE_BUILD_TYPE=RelWithDebInfo && \
    make install && \
    rm -rf /home/develop/neovim

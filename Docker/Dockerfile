FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN set -ex && \
    apt-get update && \
    apt-get install -y \
        cmake \
        git \
        mercurial \
        shellcheck

ENV HOME_DIR /home/develop

WORKDIR ${HOME_DIR}

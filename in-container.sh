#!/bin/sh -e

IMAGE=srasku-dev:latest
DOCKER_BUILDKIT=0 docker build -f Docker/Dockerfile -t ${IMAGE} Docker
docker run -it -v "$(pwd):/home/develop" --rm ${IMAGE} "$@"

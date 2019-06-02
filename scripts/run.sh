#!/usr/bin/env bash

DOCKER_IMAGE=node:12

pushd "$1"
shift

exec docker run --rm -it \
  --volume="$PWD:/web-ext" -w "/web-ext" \
  $DOCKER_IMAGE "$@"

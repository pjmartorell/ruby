#!/usr/bin/env bash
set -x -e

docker build -t "$1"/rubybase:2.6.2 base_images/2.6.2
docker build --no-cache -t "$1"/ruby:2.6.2 2.6.2

docker login -u "$2" -p "$3"

docker push "$1"/ruby:2.6.2

docker logout

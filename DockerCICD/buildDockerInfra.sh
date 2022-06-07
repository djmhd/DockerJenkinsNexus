#!/bin/bash
set +e
set -x

mkdir /tmp/nexusdata

docker network create external-compose-net

docker-compose up -d --build --force-recreate
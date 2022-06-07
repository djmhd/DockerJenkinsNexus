#!/bin/bash
set +e
set -x
docker network create external-compose-net

docker-compose up -d --build --force-recreate
#!/bin/sh

set -e
influx bucket create \
    -n "${NET_RESPONSE_BUCKET}" \
    -o "${DOCKER_INFLUXDB_INIT_ORG}" \
    -r 30d
#!/bin/sh

set -e
influx bucket create \
    -n "${FORTIGATE_MONITOR_BUCKET}" \
    -o "${DOCKER_INFLUXDB_INIT_ORG}" \
    -r 30d

influx bucket create \
    -n "${FORTIGATE_MONITOR_SWITCH_CONTROLLER_BUCKET}" \
    -o "${DOCKER_INFLUXDB_INIT_ORG}" \
    -r 30d

influx bucket create \
    -n "${FORTIGATE_MONITOR_WIFI_CONTROLLER_BUCKET}" \
    -o "${DOCKER_INFLUXDB_INIT_ORG}" \
    -r 30d
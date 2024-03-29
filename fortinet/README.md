# Fortinet

## Populate .env file with your values
```bash
cat << 'EOF' > .env
COMPOSE_PROJECT_NAME=tig_stack_fortinet

# Influxdb-v2
DOCKER_INFLUXDB_INIT_MODE=setup
DOCKER_INFLUXDB_INIT_USERNAME=admin
DOCKER_INFLUXDB_INIT_PASSWORD=changeme
DOCKER_INFLUXDB_INIT_ORG=tig_fortinet
DOCKER_INFLUXDB_INIT_BUCKET=telegraf
DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=tig_fortinet
DOCKER_INFLUXDB_INIT_RETENTION=30d

# Bucket for fortinet metrics
FORTIGATE_MONITOR_BUCKET=fortios_monitor
FORTIGATE_MONITOR_SWITCH_CONTROLLER_BUCKET=fortios_monitor_switch_controller
FORTIGATE_MONITOR_WIFI_CONTROLLER_BUCKET=fortios_monitor_wifi_controller

# Grafana
GF_AUTH_ANONYMOUS_ENABLED="true"
GF_AUTH_ANONYMOUS_ORG_ROLE="Admin"

# Fortigate
FORTIGATE_HOST="192.168.8.1"
FORTIGATE_API_TOKEN="blahblah"
EOF
```

## Bring up the stack
```bash
docker compose up -d
```


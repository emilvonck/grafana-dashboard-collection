# Net response

## Populate .env file with your values
```bash
cat << 'EOF' > .env
CCOMPOSE_PROJECT_NAME=tig_net_response

# Influxdb-v2
DOCKER_INFLUXDB_INIT_MODE=setup
DOCKER_INFLUXDB_INIT_USERNAME=admin
DOCKER_INFLUXDB_INIT_PASSWORD=changeme
DOCKER_INFLUXDB_INIT_ORG=tig_net_response
DOCKER_INFLUXDB_INIT_BUCKET=telegraf
DOCKER_INFLUXDB_INIT_ADMIN_TOKEN=tig_net_response
DOCKER_INFLUXDB_INIT_RETENTION=30d

# Bucket for net_response metrics
NET_RESPONSE_BUCKET=net_response

# Grafana
GF_AUTH_ANONYMOUS_ENABLED="true"
GF_AUTH_ANONYMOUS_ORG_ROLE="Admin"

# NET_RESPONSE Targets
## Devnet Sandboxes
APP1_NAME="IOS XE on Cat8kv AlwaysOn"
APP1_FAMILY="Network Devices"
APP1_HOST="devnetsandboxiosxe.cisco.com"
APP1_FUNC1_PORT=22
APP1_FUNC1_NAME="SSH"
APP1_FUNC2_PORT=830
APP1_FUNC2_NAME="Netconf"
APP1_FUNC3_PORT=443
APP1_FUNC3_NAME="Restconf"

APP2_NAME="IOS XR Programmabilty AlwaysOn"
APP2_FAMILY="Network Devices"
APP2_HOST="sandbox-iosxr-1.cisco.com"
APP2_FUNC1_PORT=22
APP2_FUNC1_NAME="SSH"
APP2_FUNC2_PORT=830
APP2_FUNC2_NAME="Netconf"
APP2_FUNC3_PORT=443 # This service should fail no restconf support on IOS-XR
APP2_FUNC3_NAME="Restconf" # This service should fail no restconf support on IOS-XR
EOF
```

## Bring up the stack
```bash
docker compose up -d
```

## Grafana dashboard screenshots
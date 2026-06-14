# Sensor Helm Chart

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Sensor Application Helm Chart

**Homepage:** <https://teacherspet.tech>

## Usage

```bash
helm install -f values.yaml sensor .
```

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| preston | <prestonblckbrn@gmail.com> |  |

## Source Code

* <https://github.com/PrestonBlackburn/datacenter_monitor_server>

## Dependencies

None


## Requirements

None

## Values
 
**TBD**


## Dev

Install deps
```bash
helm dependency update
```

dry run
```bash
helm lint
helm template .
helm install -f values.yaml sensor . --namespace sensor --dry-run --debug

# Update helm chart deployment
helm upgrade sensor . -f values.yaml --namespace sensor

helm uninstall sensor --namespace sensor
```

view on ingress -
```bash
http://localhost:5432
```
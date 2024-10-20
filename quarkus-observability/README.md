# Quarkus & OpenTelemetry

## Create namespace
``oc new-project quarkus-observability``

## Deploy on OpenShift
``oc create -f app-openshift-java17.yaml``

## Monitoring stack
### OpenTelemetry Collector + Prometheus + Jaeger
``oc create -n spring-observability -f monitoring.yaml``

### Grafana (Community operator)
``oc create -n grafana -f grafana/operator-deploy.yaml``


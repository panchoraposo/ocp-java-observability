## Quarkus observability
oc new-project quarkus-observability
oc apply -f ./quarkus-observability/app-openshift-java17.yaml
oc apply -n quarkus-observability -f ./quarkus-observability/monitoring-openshift.yaml
oc create -n grafana-operator -f ./grafana/operator-deploy.yaml

## Spring Boot observability
oc new-project spring-observability
oc new-app --name spring-opentelemetry https://github.com/panchoraposo/ocp-java-observability.git --context-dir=springboot-observability
oc apply -n spring-observability -f ./springboot-observability/monitoring.yaml
oc create -n grafana-operator -f ./grafana/operator-deploy.yaml

## LokiStack

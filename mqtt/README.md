# Deploy the MQTT Source connector

## Prereq
You will need 
- Confluent Cloud Kafka Cluster API key and secret, bootstrap server endpoint
- Confluent Cloud Schema Registry API key and secret, url
- MQTT Broker information (url, username and password)
- Confluent License Key (optional)
  
## Install Confluent for Kubernetes Operator
```
./install-cfk.sh
```

## Create K8s Secrets 
- Confluent Cloud Kafka Cluster API
- Confluent Cloud Schema Registry API
- Confluent Platform License Key
```  
vi  ccloud-sr-credentials.txt
vi  cluster-secret.txt
vi cp-license.txt
./cc-secret.sh
```
## Start Confluent Self Managed Connect Cluster 
- update the kafka bootstrap and schema registry url in the yaml
```
vi connect.yaml
kubectl apply -f connect.yaml
```
## Deploy MQTT Source Connector
- update the schema registry API key and url in the yaml
- update the MQTT broker information (url, username, password)
```
vi mqtt-source-connector.yaml
kubectl apply -f mqtt-source-connector.yaml
```

## (optional) Start Confluent Control Center
- update the kafka bootstrap and schema registry url in the yaml
```
vi control-center.yaml
kubectl apply -f control-center.yaml
```

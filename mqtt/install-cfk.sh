helm repo add confluentinc https://packages.confluent.io/helm
helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes --namespace confluent


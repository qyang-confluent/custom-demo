kubectl create secret generic cluster-demo-credentials --from-file=plain.txt=cluster-secret.txt --namespace confluent
kubectl create secret generic ccloud-sr-credentials --from-file=basic.txt=ccloud-sr-credentials.txt --namespace confluent
kubectl create secret generic confluent-license --from-file=license.txt=./cp-license.txt --namespace confluent

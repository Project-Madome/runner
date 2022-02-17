SERVICE_ACCOUNT=/var/run/secrets/kubernetes.io/serviceaccount

kubectl config set-cluster cluster \
    --server=https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT \
    --embed-certs \
    --certificate-authority=$SERVICE_ACCOUNT/ca.crt \
    --namespace=$(cat $SERVICE_ACCOUNT/namespace)

kubectl config set-credentials user \
    --token=$(cat $SERVICE_ACCOUNT/token)

kubectl config set-context loaded-context \
    --cluster=cluster \
    --user=user

kubectl config use-context loaded-context

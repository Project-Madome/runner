kubectl apply -f secret.yml &&
    kubectl apply -f github-runner.yml &&
    kubectl rollout restart deployment/madome-runner
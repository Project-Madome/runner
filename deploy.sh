docker build -t "madome-runner:latest" . &&
    kubectl apply -f secret.yml &&
    kubectl apply -f madome-runner.yml &&
    kubectl rollout restart deployment/madome-runner

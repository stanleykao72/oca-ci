kubectl delete secret gh-docker-credentials
# 後產生或更新 Kubernetes 的 docker 憑證 Secret
kubectl create secret generic gh-docker-credentials \
  --from-file=.dockerconfigjson=./.dockerconfigjson \
  --type=kubernetes.io/dockerconfigjson \
  --dry-run=client -o yaml | kubectl apply -f -
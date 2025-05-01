kubectl create secret generic gh-docker-credentials \
  --from-file=.dockerconfigjson=./.dockerconfigjson \
  --type=kubernetes.io/dockerconfigjson
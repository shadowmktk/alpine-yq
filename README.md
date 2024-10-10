# alpine-yq
构建yq命令的镜像

# Running
```
docker build -t alpine-yq:v1.0.0 .

docker run --rm --name alpine-yq alpine-yq:v1.0.0

wget https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/application/deployment.yaml
docker run --rm --name alpine-yq -v $PWD/deployment.yaml:/tmp/deployment.yaml alpine-yq:v1.0.0 e /tmp/deployment.yaml
docker run --rm --name alpine-yq -v $PWD/deployment.yaml:/tmp/deployment.yaml alpine-yq:v1.0.0 e '.spec.replicas = 3' /tmp/deployment.yaml
```
# Quick Usage Guide
https://github.com/mikefarah/yq


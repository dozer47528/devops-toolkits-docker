# devops-toolkits-docker
Docker container includes toolkits for devops.

[![Docker Stars](https://img.shields.io/docker/stars/dozer47528/devops-toolkits-docker.svg)](https://hub.docker.com/r/dozer47528/devops-toolkits-docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dozer47528/devops-toolkits-docker.svg)](https://hub.docker.com/r/dozer47528/devops-toolkits-docker/)


## How to use
```shell
kubectl run devops-yuyang --rm --image=dozer47528/devops-toolkits-docker:latest -it
```

## Available Tags

- `latest`: basic toolkit
- `database`: database releated toolkit like: mysql, redis
- `benchmark`: ab, sysbench, fortio
- `golang`: golang toolkit
- `jdk8`: jdk8 toolkit
- `jdk11`: jdk11 toolkit
- `websocket`: wscat for debugging websocket
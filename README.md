# docker-kubectl

## Descripton
Small docker image based on bash:latest with kubectl installed. 
Was build for integration with drone.io.

## Configuration
Configuration can be either supplied by

- supplying a volume mount for `/home/kubectl-user/.kube`
- supplying a base64 decoded config file as environment variable `CONFIG`

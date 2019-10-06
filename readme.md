# Docker Container for running Laravel tests

This is a [docker container](https://cloud.docker.com/u/kirschbaumdevelopment/repository/docker/kirschbaumdevelopment/laravel-test-runner) for running Laravel tests in Github actions.

## Building the image

**Build**:

```
docker build --pull -t kirschbaumdevelopment/laravel-test-runner .
```

**Tag**:

```
docker tag kirschbaumdevelopment/laravel-test-runner:latest kirschbaumdevelopment/laravel-test-runner:6.0.1
```

**Push**:

```
docker push kirschbaumdevelopment/laravel-test-runner:latest
docker push kirschbaumdevelopment/laravel-test-runner:6.0.1
```

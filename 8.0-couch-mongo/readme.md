# Canvas Test Runner

Docker Container with PHP and extensions to be compatible with most Laravel applications. Also installed on this container we have Composer and NodeJS/NPM/Yarn.

## Building and pushing the image

**Build**:

```
docker build -t kirschbaumdevelopment/laravel-test-runner .
```

**Tag**:

```
docker tag kirschbaumdevelopment/laravel-test-runner:latest kirschbaumdevelopment/laravel-test-runner:8.0-couch-mongo
```

**Login**
```
docker login --username=yourhubusername --email=youremail@provider.com
```


**Push**:

```
docker push kirschbaumdevelopment/laravel-test-runner:8.0-couch-mongo
```

## Credits

- [Luis Dalmolin](https://github.com/luisdalmolin)

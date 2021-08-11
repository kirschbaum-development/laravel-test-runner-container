# Canvas Test Runner

Docker Container with PHP and extensions to be compatible with most Laravel applications. Also installed on this container we have Composer and NodeJS/NPM/Yarn.

## Building and pushing the image

**Build**:

```
docker build -t pfizer/canvas-test-runner .
```

**Tag**:

```
docker tag pfizer/canvas-test-runner:latest pfizer/canvas-test-runner:7.4
```

**Login**
```
docker login --username=yourhubusername --email=youremail@provider.com
```


**Push**:

```
docker push pfizer/canvas-test-runner:7.4
```

## Credits

- [Luis Dalmolin](https://github.com/luisdalmolin)

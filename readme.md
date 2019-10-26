# Docker Container for running Laravel tests

[![Docker Badge](https://img.shields.io/docker/pulls/kirschbaumdevelopment/laravel-test-runner)](https://hub.docker.com/r/kirschbaumdevelopment/laravel-test-runner/)

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

## Credits

- [Luis Dalmolin](https://github.com/luisdalmolin)

## Sponsorship

Development of this package is sponsored by Kirschbaum Development Group, a developer driven company focused on problem solving, team building, and community. Learn more [about us](https://kirschbaumdevelopment.com) or [join us](https://careers.kirschbaumdevelopment.com)!

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

# Laravel Test Runner - PHP 7.3

Docker Container with PHP 7.3 and extensions to be compatible with most Laravel applications. Also installed on this container we have Composer and NodeJS/NPM/Yarn.

## Building and pushing the image

**Build**:

```
docker build --pull -t kirschbaumdevelopment/laravel-test-runner .
```

**Tag**:

```
docker tag kirschbaumdevelopment/laravel-test-runner:latest kirschbaumdevelopment/laravel-test-runner:7.3.x
```

**Push**:

```
docker push kirschbaumdevelopment/laravel-test-runner:7.3.x
```

## Credits

- [Luis Dalmolin](https://github.com/luisdalmolin)

## Sponsorship

Development of this package is sponsored by Kirschbaum Development Group, a developer driven company focused on problem solving, team building, and community. Learn more [about us](https://kirschbaumdevelopment.com) or [join us](https://careers.kirschbaumdevelopment.com)!

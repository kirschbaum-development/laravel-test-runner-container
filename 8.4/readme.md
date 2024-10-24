# Laravel Test Runner - PHP 8.4

Docker Container with PHP 8.4 and extensions to be compatible with most Laravel applications. Also installed on this container we have Composer and NodeJS/NPM/Yarn.

## Building and pushing the image

**Build**:

```
docker build --pull -t kirschbaumdevelopment/laravel-test-runner .
```

**Tag**:

```
docker tag kirschbaumdevelopment/laravel-test-runner:latest kirschbaumdevelopment/laravel-test-runner:8.4
```

**Push**:

```
docker push kirschbaumdevelopment/laravel-test-runner:8.4
```

## Credits

- [Pushpak Chhajed](https://github.com/pushpak1300)

## Sponsorship

Development of this package is sponsored by Kirschbaum Development Group, a developer driven company focused on problem solving, team building, and community. Learn more [about us](https://kirschbaumdevelopment.com) or [join us](https://careers.kirschbaumdevelopment.com)!

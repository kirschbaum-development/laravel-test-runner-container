![Laravel Test Runner Container](banner.jpg "Laravel Test Runner Container")

# Docker Container for running Laravel tests

[![Docker Badge](https://img.shields.io/docker/pulls/kirschbaumdevelopment/laravel-test-runner)](https://hub.docker.com/r/kirschbaumdevelopment/laravel-test-runner/)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://cloud.docker.com/u/kirschbaumdevelopment/repository/docker/kirschbaumdevelopment/laravel-test-runner)

This is a [docker container](https://cloud.docker.com/u/kirschbaumdevelopment/repository/docker/kirschbaumdevelopment/laravel-test-runner) for running Laravel tests in Github actions.

| PHP version | Link                                                                                          | Status | Container Tag |
| ---------- |-----------------------------------------------------------------------------------------------| ------ | ------------- |
| 8.4 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/8.4) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-8.4-publish/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:8.4 |
| 8.3 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/8.3) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-8.3-publish/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:8.3 |
| 8.2 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/8.2) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-8.2-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:8.2 |
| 8.1 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/8.1) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-8.1-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:8.1 |
| 8.0 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/8.0) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-8.0-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:8.0 |
| 7.4 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/7.4) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-7.4-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:7.4 |
| 7.3 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/7.3) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-7.3-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:7.3 |
| 7.2 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/7.2) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-7.2-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:7.2 |
| 7.1 | [🔗](https://github.com/kirschbaum-development/laravel-test-runner-container/blob/master/7.1) | [![Actions Status](https://github.com/kirschbaum-development/laravel-test-runner-container/workflows/php-7.1-validate/badge.svg)](https://github.com/kirschbaum-development/laravel-test-runner-container/actions) | kirschbaumdevelopment/laravel-test-runner:7.1 |

You may want to check [this blog post](https://kirschbaumdevelopment.com/news-articles/using-github-actions-to-setup-ci-cd-with-laravel-and-mysql) on how to use this container to run your Laravel tests with Github Actions.

## Custom extensions

In case you need any custom extensions, the container is running Ubuntu, so you can simply install them:

```bash
apt-get install -y php8.2-bz2
```

Example on Github actions:

```yaml
-   name: Install additional PHP extensions
    run: apt-get install -y php8.2-bz2 php8.2-soap
```

## Issues

If you have any issues running your tests with this container, please open an issue or send a pull request.

## Credits

- [Luis Dalmolin](https://github.com/luisdalmolin)

## Sponsorship

Development of this package is sponsored by Kirschbaum Development Group, a developer driven company focused on problem solving, team building, and community. Learn more [about us](https://kirschbaumdevelopment.com) or [join us](https://careers.kirschbaumdevelopment.com)!

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

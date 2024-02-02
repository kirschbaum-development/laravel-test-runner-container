FROM ubuntu:20.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

ENV GOSS_VERSION="0.3.6"

RUN apt-get update && apt-get install -y software-properties-common curl
RUN add-apt-repository ppa:ondrej/php -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y
RUN apt-get install -y \
    unzip \
    php8.1-cli \
    php8.1-gd \
    php8.1-ldap \
    php8.1-mbstring \
    php8.1-mysql \
    php8.1-pgsql \
    php8.1-sqlite3 \
    php8.1-xml \
    php8.1-xsl \
    php8.1-zip \
    php8.1-curl \
    php8.1-soap \
    php8.1-gmp \
    php8.1-bcmath \
    php8.1-intl \
    php8.1-imap \
    php8.1-phpdbg \
    php8.1-bz2 \
    php8.1-redis

# composer
ENV COMPOSER_HOME=/composer
ENV PATH=./vendor/bin:/composer/vendor/bin:/root/.yarn/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# mysql client
RUN apt-get install -y mysql-client

# git
RUN apt-get install -y git

# node and yarn
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

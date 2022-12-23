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
    php8.2-cli \
    php8.2-gd \
    php8.2-ldap \
    php8.2-mbstring \
    php8.2-mysql \
    php8.2-pgsql \
    php8.2-sqlite3 \
    php8.2-xml \
    php8.2-xsl \
    php8.2-zip \
    php8.2-curl \
    php8.2-soap \
    php8.2-gmp \
    php8.2-bcmath \
    php8.2-intl \
    php8.2-imap \
    php8.2-phpdbg \
    php8.2-bz2 \
    php8.2-redis

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

# goss
RUN curl -fsSL https://goss.rocks/install | GOSS_VER=v${GOSS_VERSION} sh

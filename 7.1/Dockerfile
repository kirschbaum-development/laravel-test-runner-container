FROM ubuntu:18.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

ENV GOSS_VERSION="0.3.6"

RUN apt-get update && apt-get install -y software-properties-common curl
RUN add-apt-repository ppa:ondrej/php -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y
RUN apt-get install -y \
    unzip  \
    php7.1-cli \
    php7.1-gd \
    php7.1-json \
    php7.1-ldap \
    php7.1-mbstring \
    php7.1-mysql \
    php7.1-pgsql \
    php7.1-sqlite3 \
    php7.1-xml \
    php7.1-xsl \
    php7.1-zip \
    php7.1-curl \
    php7.1-soap \
    php7.1-gmp \
    php7.1-bcmath \
    php7.1-imagick \
    php7.1-intl \
    php7.1-redis \
    php7.1-imap \
    php7.1-phpdbg

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
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

# goss
RUN curl -fsSL https://goss.rocks/install | GOSS_VER=v${GOSS_VERSION} sh

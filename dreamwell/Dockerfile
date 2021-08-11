FROM ubuntu:20.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

ENV GOSS_VERSION="0.3.6"

RUN apt-get update && apt-get install -y software-properties-common curl
RUN add-apt-repository ppa:ondrej/php -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y
RUN apt-get install -y \
    unzip  \
    php7.4-cli \
    php7.4-gd \
    php7.4-json \
    php7.4-ldap \
    php7.4-mbstring \
    php7.4-mysql \
    php7.4-pgsql \
    php7.4-sqlite3 \
    php7.4-xml \
    php7.4-xsl \
    php7.4-zip \
    php7.4-curl \
    php7.4-soap \
    php7.4-gmp \
    php7.4-bcmath \
    php7.4-imagick \
    php7.4-intl \
    php7.4-redis \
    php7.4-imap \
    php7.4-phpdbg \
    php7.4-dom \
    php7.4-pdo \
    php7.4-sqlite \
    php7.4-bcmath \
    php7.4-intl \
    php7.4-soap \
    php7.4-exif \
    php7.4-iconv \
    php7.4-imagick

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
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

# goss
RUN curl -fsSL https://goss.rocks/install | GOSS_VER=v${GOSS_VERSION} sh


# Install system dependencies for couchbase
RUN apt-get install -y wget
RUN wget -O - https://packages.couchbase.com/clients/c/repos/deb/couchbase.key | apt-key add -
RUN echo "deb https://packages.couchbase.com/clients/c/repos/deb/ubuntu2004 focal focal/main" | tee /etc/apt/sources.list.d/couchbase.list
RUN apt-get update -y
RUN apt-get install -y libcouchbase3 libcouchbase-dev libcouchbase3-tools libcouchbase-dbg libcouchbase3-libev libcouchbase3-libevent

## Install PECL
RUN apt-get install -y php-pear php7.4-dev php7.4-xml

## MongoDB
## Dreamwell need mongodb > 1.6
RUN pecl install mongodb-1.10.0alpha1

## Couchbase
## Dreamwell need couchbase > 3.0
RUN pecl install couchbase-3.2.0

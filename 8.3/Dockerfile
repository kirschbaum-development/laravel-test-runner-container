FROM ubuntu:22.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

ENV PHP_VERSION="8.3"
ENV GOSS_VERSION="0.4.4"
ENV NODE_MAJOR="20"

RUN apt-get update && apt-get install -y software-properties-common curl ca-certificates gnupg
RUN add-apt-repository ppa:ondrej/php -y
RUN add-apt-repository ppa:git-core/ppa -y
RUN apt-get update -y
RUN apt-get install -y \
    unzip \
    php${PHP_VERSION}-cli \
    php${PHP_VERSION}-gd \
    php${PHP_VERSION}-ldap \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-mysql \
    php${PHP_VERSION}-pgsql \
    php${PHP_VERSION}-sqlite3 \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-xsl \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-soap \
    php${PHP_VERSION}-gmp \
    php${PHP_VERSION}-bcmath \
    php${PHP_VERSION}-intl \
    php${PHP_VERSION}-imap \
    php${PHP_VERSION}-phpdbg \
    php${PHP_VERSION}-bz2 \
    php${PHP_VERSION}-redis

# composer
ENV COMPOSER_HOME=/composer
ENV PATH=./vendor/bin:/composer/vendor/bin:/root/.yarn/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV COMPOSER_ALLOW_SUPERUSER=1
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# mysql client
RUN apt-get install -y mysql-client

# git
RUN apt-get install -y git

# node
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update && apt-get install nodejs -y


# yarn
RUN npm install -g yarn

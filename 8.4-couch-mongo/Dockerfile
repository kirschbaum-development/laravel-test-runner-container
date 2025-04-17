FROM kirschbaumdevelopment/laravel-test-runner:8.4

ENV PHP_VERSION="8.4"
ENV MONGODB_VERSION="2.0.0"
ENV COUCHBASE_VERSION="3.2.2"

# Install system dependencies for couchbase
RUN apt-get install -y wget
RUN wget -O - https://packages.couchbase.com/clients/c/repos/deb/couchbase.key | apt-key add -
RUN echo "deb https://packages.couchbase.com/clients/c/repos/deb/ubuntu1804 bionic bionic/main" | tee /etc/apt/sources.list.d/couchbase.list
RUN apt-get update 
RUN apt-get install -y libcouchbase3 libcouchbase-dev

## Install PECL
RUN apt-get install -y php-pear php${PHP_VERSION}-dev php${PHP_VERSION}-xml
### Making sure we're using the correct php version
RUN rm /etc/alternatives/php
RUN ln -s /usr/bin/php${PHP_VERSION} /etc/alternatives/php


## MongoDB
RUN pecl install mongodb-${MONGODB_VERSION}
RUN echo "extension=mongodb.so" | tee -a /etc/php/${PHP_VERSION}/cli/conf.d/20-mongodb.ini


## Couchbase
RUN pecl install couchbase-${COUCHBASE_VERSION}
RUN echo "extension=couchbase.so" | tee -a /etc/php/${PHP_VERSION}/cli/conf.d/30-couchbase.ini

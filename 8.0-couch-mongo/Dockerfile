FROM kirschbaumdevelopment/laravel-test-runner:8.0

# Install system dependencies for couchbase
RUN apt-get install -y wget
RUN wget -O - https://packages.couchbase.com/clients/c/repos/deb/couchbase.key | apt-key add -
RUN echo "deb https://packages.couchbase.com/clients/c/repos/deb/ubuntu1804 bionic bionic/main" | tee /etc/apt/sources.list.d/couchbase.list
RUN apt-get update 
RUN apt-get install -y libcouchbase3 libcouchbase-dev

## Install PECL
RUN apt-get install -y php-pear php8.0-dev php8.0-xml
### This is sometimes installing latest php version (php8.1 in the time of writing this). Reverting to php8.0 like wanted
RUN rm /etc/alternatives/php
RUN ln -s /usr/bin/php8.0 /etc/alternatives/php


## MongoDB
RUN pecl install mongodb-1.13.0
RUN echo "extension=mongodb.so" | tee -a /etc/php/8.0/cli/conf.d/20-mongodb.ini


## Couchbase
RUN pecl install couchbase-3.2.0
RUN echo "extension=couchbase.so" | tee -a /etc/php/8.0/cli/conf.d/30-couchbase.ini

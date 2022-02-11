FROM kirschbaumdevelopment/laravel-test-runner:8.1

# Install system dependencies for couchbase
RUN apt-get install -y wget
RUN wget -O - https://packages.couchbase.com/clients/c/repos/deb/couchbase.key | apt-key add -
RUN echo "deb https://packages.couchbase.com/clients/c/repos/deb/ubuntu1804 bionic bionic/main" | tee /etc/apt/sources.list.d/couchbase.list
RUN apt-get update 
RUN apt-get install -y libcouchbase3 libcouchbase-dev

## Install PECL
RUN apt-get install -y php-pear php8.1-dev php8.1-xml
### Making sure we're using the correct php version
RUN rm /etc/alternatives/php
RUN ln -s /usr/bin/php8.1 /etc/alternatives/php


## MongoDB
RUN pecl install mongodb-1.12.0
RUN echo "extension=mongodb.so" | tee -a /etc/php/8.1/cli/conf.d/20-mongodb.ini


## Couchbase
RUN pecl install couchbase-3.2.0
RUN echo "extension=couchbase.so" | tee -a /etc/php/8.1/cli/conf.d/30-couchbase.ini

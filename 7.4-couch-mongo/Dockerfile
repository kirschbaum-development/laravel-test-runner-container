FROM kirschbaumdevelopment/laravel-test-runner:7.4

# Install system dependencies for couchbase
RUN apt-get install -y wget
RUN wget -O - https://packages.couchbase.com/clients/c/repos/deb/couchbase.key | apt-key add -
RUN echo "deb https://packages.couchbase.com/clients/c/repos/deb/ubuntu1804 bionic bionic/main" | tee /etc/apt/sources.list.d/couchbase.list
RUN apt-get update -y
RUN apt-get install -y libcouchbase3 libcouchbase-dev

## Install PECL
RUN apt-get install -y php-pear php7.4-dev php7.4-xml

## MongoDB
RUN pecl install mongodb-1.10.0alpha1
RUN echo "extension=mongodb.so" | tee -a /etc/php/7.4/cli/conf.d/20-mongodb.ini


## Couchbase
RUN pecl install couchbase-3.2.0
RUN echo "extension=couchbase.so" | tee -a /etc/php/7.4/cli/conf.d/30-couchbase.ini

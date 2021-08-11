FROM kirschbaumdevelopment/laravel-test-runner:7.4

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

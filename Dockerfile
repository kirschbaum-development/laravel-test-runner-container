FROM ubuntu:18.04
LABEL maintainer="Luis Dalmolin <luis@kirschbaumdevelopment.com>"
ARG DEBIAN_FRONTEND=noninteractive

ENV MYSQL_USER=mysql \
    MYSQL_VERSION=5.7.26 \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update && apt-get install -y software-properties-common curl
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update -y
RUN apt-get install -y \
    php7.3-cli \
    php7.3-gd \
    php7.3-json \
    php7.3-ldap \
    php7.3-mbstring \
    php7.3-mysql \
    php7.3-pgsql \
    php7.3-sqlite3 \
    php7.3-xml \
    php7.3-xsl \
    php7.3-zip \
    php7.3-curl \
    php7.3-soap \
    php7.3-gmp \
    php7.3-bcmath \
    composer

# mysql
RUN apt-get install -y mysql-server
RUN rm -rf ${MYSQL_DATA_DIR} && mkdir -p ${MYSQL_DATA_DIR} && chmod -R 0755 ${MYSQL_DATA_DIR} && chown -R ${MYSQL_USER}:${MYSQL_USER} ${MYSQL_DATA_DIR}
RUN usermod -d ${MYSQL_DATA_DIR} ${MYSQL_USER}
RUN mkdir -p ${MYSQL_RUN_DIR} && chmod -R 0755 ${MYSQL_RUN_DIR} && chown -R ${MYSQL_USER}:${MYSQL_USER} ${MYSQL_RUN_DIR}
RUN mkdir -p ${MYSQL_LOG_DIR} && chmod -R 0755 ${MYSQL_LOG_DIR} && chown -R ${MYSQL_USER}:${MYSQL_USER} ${MYSQL_LOG_DIR}
RUN mysqld --initialize-insecure
RUN rm ${MYSQL_DATA_DIR}/ib_buffer_pool && touch ${MYSQL_DATA_DIR}/ib_buffer_pool

# node and yarn
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g yarn

CMD chmod -R 0755 /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql && service mysql start

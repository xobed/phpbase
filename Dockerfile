FROM php:8-apache

RUN apt update &&\
    apt install -y \
        unzip \
        libzip-dev \
        postgresql-client \
        libpq-dev \
        libpng-dev \
        libicu-dev

RUN docker-php-ext-install zip gd pcntl pdo_pgsql pgsql intl &&\
    pecl install -o -f redis &&\
    docker-php-ext-enable redis

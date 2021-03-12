FROM php:7.4-apache

RUN apt-get update &&\
    apt-get install -y supervisor zip curl cron \
    postgresql-client \
    libzip-dev \
    libpq-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    libxml2-dev \
    libpng-dev

RUN docker-php-ext-install zip gd intl xml pcntl curl pdo_pgsql pgsql exif &&\
    pecl install -o -f redis &&\
    docker-php-ext-enable redis

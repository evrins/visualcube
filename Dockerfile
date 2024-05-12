FROM php:apache

RUN apt update && \
    apt install -y  \
    imagemagick \
    && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN docker-php-ext-install mysqli

COPY . /var/www/html/

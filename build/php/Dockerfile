FROM php:8.2.0-apache

WORKDIR /var/www/html

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
FROM php:7.4-apache
RUN apt update -y \
    && apt upgrade -y  \
    && apt install $PHPIZE_DEPS \
    && docker-php-ext-install pdo pdo_mysql

FROM php:8.1-fpm

# Instalar dependencias requeridas y Composer
RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip \
    git \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Configuración opcional
WORKDIR /var/www/html
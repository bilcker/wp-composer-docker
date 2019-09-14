#########################
### PHP:APACHE SERVER ###
#########################
FROM php:7.0-apache

# Install PHP and Mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy composer.lock and composer.json
COPY composer.json /var/www/html/

# Change working dir
WORKDIR /var/www/html

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    mysql-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl

# Clear cache
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

# Download composer and unzip it in the proper directory
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies
RUN composer install --prefer-dist --no-scripts --no-dev --no-autoloader

# Run Composer
RUN composer dump-autoload --no-scripts --no-dev --optimize

# Copy wordpress configuration file 
COPY ./dist/wp-config.php /var/www/html/dist/

# Expose port 9000 and start php-fpm server
EXPOSE 9000

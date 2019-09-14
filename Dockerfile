#########################
### PHP:APACHE SERVER ###
#########################
FROM php:7.0-apache

# Copy composer.lock and composer.json
COPY composer.json /var/www/html/

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

# Run Linux apt (Advanced Package Tool) to and install any packages
# RUN apt-get update && \
#   apt-get install -y --no-install-recommends


# Clear cache
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip

# RUN curl --silent --show-error https://getcomposer.org/installer | php

# RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies
# COPY composer.json composer.json
RUN composer install --prefer-dist --no-scripts --no-dev --no-autoloader

# Copy codebase
# COPY . ./cd dist

# Finish composer
RUN composer dump-autoload --no-scripts --no-dev --optimize

# Copy existing application directory contents
# COPY ./dist/ /var/www/html

# # Copy existing application directory permissions
# COPY --chown=www:www . /var/www/html

# # Change current user to www
# USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
# Manually set up the apache environment variables
# ENV APACHE_RUN_USER www-data
# ENV APACHE_RUN_GROUP www-data
# ENV APACHE_LOG_DIR /var/log/apache2
# ENV APACHE_LOCK_DIR /var/lock/apache2
# ENV APACHE_PID_FILE /var/run/apache2.pid

# Expose apache.
# EXPOSE 80

# WORKDIR /var/www/html

# # Run composer installer
# RUN curl -sS https://getcomposer.org/installer | \
#     php -- --install-dir=/usr/bin/ --filename=composer

# # Copy composer config file
# COPY composer.json /var/www/html
# # COPY all files
# COPY dist/ /var/www/html/

# RUN composer install --no-scripts --no-autoloader --prefer-dist
# RUN composer dump-autoload --optimize

# EXPOSE 80
# # Name the build to ensure the Copy won't break even if code reordered
# # FROM composer/composer:php7
# # FROM composer/composer:php7 as build

# WORKDIR /var/www/html
# # Run composer installer
# RUN curl -sS https://getcomposer.org/installer | \
#     php -- --install-dir=/usr/bin/ --filename=composer
# # Copy composer config file
# COPY composer.json /var/www/html
# # COPY all files
# COPY dist/ /var/www/html/
# # Install Composer
# RUN composer install --no-scripts --no-autoloader
# RUN composer dump-autoload --optimize
# # Run the wordpress and php image
# # FROM wordpress:5.1.1-php7.3-apache

# # Set our environment variables for logging into wordpress
# # ENV WORDPRESS_DB_HOST database:3306
# # ENV WORDPRESS_DB_USER bilcker
# # ENV WORDPRESS_DB_PASSWORD 200169316*Db

# # COPY --from=build /var/www/html/ /var/www/html/

# # # Expose a port to run on
# # EXPOSE 8080:80

# Name the build to ensure the Copy won't break even if code reordered
FROM composer/composer:php7 as build

WORKDIR /var/www/html
# Run composer installer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer
# Copy composer config file
COPY composer.json /var/www/html
# COPY all files
COPY app/ /var/www/html/
# Install Composer
RUN composer install --no-scripts --no-autoloader
RUN composer dump-autoload --optimize
# Run the wordpress and php image
FROM wordpress:5.1.1-php7.3-apache

# Set our environment variables for logging into wordpress
ENV WORDPRESS_DB_HOST database:3306
ENV WORDPRESS_DB_USER bilcker
ENV WORDPRESS_DB_PASSWORD 200169316*Db

COPY --from=build /var/www/html/ /var/www/html/

# Expose a port to run on
EXPOSE 8080:80

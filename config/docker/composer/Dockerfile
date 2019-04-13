# start with the official Composer Image and name it
FROM composer:1.5.1 AS composer

# Continue with the official PHP image
FROM php:7.1.8

# Copy the Composer PHAR from the COmposer image into the PHP image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Show that both Composer and PHP run as expected
RUN composer --version && php -v
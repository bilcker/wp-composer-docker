FROM composer/composer:php7

# Install composer
WORKDIR /var/www/html/wp-content
COPY ./includes/composer.json /var/www/html/wp-content

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer
# COPY composer.lock ./
RUN composer install --no-scripts --no-autoloader
COPY ./ /var/www/

RUN composer dump-autoload --optimize
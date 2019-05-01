FROM composer/composer:php7
COPY composer.json /app

RUN composer install --ignore-platform-reqs --no-scripts

WORKDIR /app

RUN composer install --prefer-source --no-interaction

ENV PATH="~/.composer/vendor/bin:./vendor/bin:${PATH}"

# COPY ./ /app
# # COPY composer.json /var/www/html/wp-content
# # COPY composer.json C:/Users\tbilc\OneDrive\Documents\Repos\wp-docker\dist
# RUN composer install --ignore-platform-reqs --no-scripts

# WORKDIR /app/
# # FROM php:fpm
# # WORKDIR /var/www/html/

# # RUN apt-get update && apt-get install -y \
# #         libfreetype6-dev \
# #         libjpeg62-turbo-dev \
# #         libmcrypt-dev \
# #         libpng12-dev \
# #         zip \
# #         unzip \
# #     && docker-php-ext-install -j$(nproc) iconv mcrypt \
# #     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
# #     && docker-php-ext-install -j$(nproc) gd \
# #     && docker-php-ext-install mysqli \
# #     && docker-php-ext-enable opcache
# # Install composer
# # WORKDIR /var/www/html/wp-content
# # RUN curl -sS https://getcomposer.org/installer | \
# #     php -- --install-dir=/usr/bin/ --filename=composer
    
# # # COPY composer.lock ./
# # RUN composer install --no-scripts --no-autoloader
# # # COPY ./ /var/www/
# # RUN composer dump-autoload --optimize

# COPY ./ /var/www/html/
# COPY --from=composer ./app/ /var/www/html/
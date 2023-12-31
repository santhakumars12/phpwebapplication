FROM php:7.4-apache

WORKDIR /var/www/html

COPY . .

RUN docker-php-ext-install mysqli

EXPOSE 80

CMD ["apache2-foreground"]
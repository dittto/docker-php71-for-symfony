FROM php:7.1-apache

MAINTAINER "Nick Stacey" <nick@ditt.to>

RUN  curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN  a2enmod rewrite

COPY docker/vhost/test-api.conf /etc/apache2/sites-available/.
RUN  rm /etc/apache2/sites-enabled/000-default.conf && \
     ln -s /etc/apache2/sites-available/test-api.conf /etc/apache2/sites-enabled/.

EXPOSE 80

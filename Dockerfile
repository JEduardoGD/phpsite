FROM php:7.4-apache

# Update system core
RUN apt update -y && apt upgrade -y
#RUN apt-get install -y iputils-ping netcat
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli && apachectl restart

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
COPY start-apache /usr/local/bin
RUN a2enmod rewrite

RUN mkdir -p /var/deploy
RUN chown -R www-data:www-data /var/deploy

# Copy application source
COPY src /var/www/public
RUN chown -R www-data:www-data /var/www
CMD ["start-apache"]
EXPOSE 80

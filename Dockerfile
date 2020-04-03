FROM php:7.3.16-cli

## Installer composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"



## Dependences php
COPY bin/fordocker.sh /usr/bin/local/fordocker.sh

RUN /usr/bin/local/fordocker.sh
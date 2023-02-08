FROM debian:buster-slim 

MAINTAINER ="Edjanio Silva <edjaniosilva.al@gmail.com>"
LABEL description="Webserver Apache2"
LABEL version="1.0"

RUN apt update && apt install -y --no-install-recommends \
       apache2 \
       apache2-utils \
       tzdata

#Timezone para o container
RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo "America/Sao_Paulo" > /etc/timezone

RUN chown www-data:www-data /var/lock && chown www-data:www-data /var/run/ && chown www-data:www-data /var/log/
ENV APACHE_LOCK_DIR="/var/lock" \
    APACHE_PID_FILE="/var/run/apache2.pid" \
    APACHE_RUN_USER="www-data" \
    APACHE_RUN_GROUP="www-data" \
    APACHE_LOG_DIR="/var/log/apache2"

#ADD static.tar /var/www/html/
COPY file* static /var/www/html
WORKDIR /var/www/html/

VOLUME /var/www/html
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D","FOREGROUND"]

FROM httpd:2.4.55-alpine

LABEL webserver="1.0"
MAINTAINER ="Edjanio Silva <edjaniosilva.al@gmail.com>"

#Variaveis de ambiente
ENV HTTPD_PREFIX /usr/local/apache2/htdocs \
    PATH $HTTPD_PREFIX/bin:$PATH

#Criar o diretório e define o usuário www-data como dono
RUN mkdir -p "$HTTPD_PREFIX" \
	&& chown www-data:www-data "$HTTPD_PREFIX"

#Diretório de trabalho
WORKDIR $HTTPD_PREFIX

#Adicionando o apk tzdata para a timezone do container
RUN apk add --no-cache --virtual .build-deps \
    tzdata

# https://httpd.apache.org/security/vulnerabilities_24.html
ENV HTTPD_PATCHES=""

#Definindo a timezone para o container "America/Sao_Paulo"

RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo "America/Sao_Paulo" > /etc/timezone

#Adicionando os arquivos do site durante a criação da image
COPY file* kreo /usr/local/apache2/htdocs/

#Expondo uma porta para o container
EXPOSE 80
CMD [ "httpd-foreground" ]


# https://hub.docker.com/_/httpd
# https://github.com/docker-library/httpd/blob/a7acc047c8970e0502f4c6b577775f840f1f99b6/2.4/alpine/Dockerfile

FROM httpd:2.4.52-alpine

LABEL webserver="1.0"
MAINTAINER ="Edjanio Silva <edjaniosilva.al@gmail.com>"

# O usuario www-data já esta disponivel por padrão nesta imagem com suas devidas pemissões.

#Variaveis de ambiente
ENV HTTPD_PREFIX /usr/local/apache2/htdocs \
    PATH $HTTPD_PREFIX/bin:$PATH

#Criar o diretório e define o usuário www-data como dono
RUN mkdir -p "$HTTPD_PREFIX" \
	&& chown www-data:www-data "$HTTPD_PREFIX"

#Diretório de trabalho
WORKDIR $HTTPD_PREFIX

#Adicionando um app para a timezone do sistema
RUN apk add --no-cache \
    tzdata

#Definindo a timezone para o container "America/Sao_Paulo"

RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo "America/Sao_Paulo" > /etc/timezone

#Adicionando os arquivos do site durante a criação da image
COPY file* kreo /usr/local/apache2/htdocs/

#Expondo uma porta para o container
EXPOSE 80
CMD [ "httpd-foreground" ]


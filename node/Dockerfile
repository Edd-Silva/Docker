FROM node:14-alpine

LABEL version="1.0"
MAINTAINERr="Edjanio <edjaniosilva.al@gmail.com>"

# Adicionando um usuário nao root ao container
RUN adduser -u 1001 -D alpine -h /home/alpine
#RUN useradd -ms /bin/bash node_user
#Instalando pacotes
RUN apk add --no-cache \
   tzdata \
   #tar \
   #bash \
   #g++ \
   #musl-dev \
   #ca-certificates

# Time_zone, A variável TZ, vai receber o fuzo horário que você determinar.
ENV TZ="America/Sao_Paulo"
#RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo "America/Sao_Paulo" > /etc/timezone

#Criando um diretório para a aplicação

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Instalando as dependências para a aplicação

COPY package.json /usr/src/app/
RUN npm install

# Copia da aplicação
COPY . /usr/src/app

# Expondo a porta do container
EXPOSE 8080
USER alpine
CMD ["node", "/usr/src/app/app.js"]

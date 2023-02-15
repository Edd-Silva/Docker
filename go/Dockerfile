FROM golang:alpine3.11

RUN mkdir /app

ADD . /app

WORKDIR /app

#Definindo um usuário não root
RUN adduser -u 1001 -D go -h /home/go

RUN apk add --no-cache \
   tzdata \
   build-base 

#Definindo uma time zone para o container
#ENV TZ="America/Sao_Paulo"

RUN cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && echo "America/Sao_Paulo" > /etc/timezone

RUN go build -o main .

EXPOSE 8080

USER go

CMD [ "/app/main" ]


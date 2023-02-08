Um simples exemplo de como dockerizar uma aplicação em node.

Criando a imagem 

$ docker build -t app-node:v1 .

Iniciando o container
$ docker container run  -d -p 80:80 app-node:v1


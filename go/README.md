
![](golang.png)

# Container docker com app em GoLang

# No repositório do projeto-1, tem um exemplo de um Dockerfile multi-stage

# Para criar a imagem do projeto-1
$docker build -t hellogo:v.1 .

# Para executar a imagem
$docker container run -ti hellogo:v.1

# Algumas modificações que fiz na imagem do repositório do projeto-2 ;)

A imagem antes era baseada Debian mudei para rodar o Alpine, minimalista e segura.
No Dockerfile adicionei o tzdata para configurar um timezone da minha região.
Foi adicionado um usuário go, para que o container inicie em modo non-root.

# Para começar execute os comandos abaixo.

# Para criar uma imagem
$docker build -t golangwebpi:v.1 .

# Para subir um container fazendo um bind de porta
$docker container run -d -p 8080:8080 golangwebpi:v.1

# Acessando o container 
$docker container exec -it container_id sh

# Para sair do container e deixa-lo em execução.

Ctrl+p+q

# Referência:

https://github.com/AdminTurnedDevOps/GoWebAPI

 

![](Docker-logo.png)
                                                                                                         
# Repositório para arquivos Dockerfile e alguns comandos.

# Alguns comandos básicos para iniciar.

# Verificar a versão do Docker

$ docker version

# Executando um container.

$ docker container run "id-container"

# Parando um container

$ docker contanier stop "id-container"

# Restartando um container

$ docker container restart "id-container"

# Revomendo um container a flag -f força a remoção.

$ docker container rm "id-container"

# Listando somente os containers que estão em execução

$ docker container ls

# Listando todos os containers parados e em execução.

$ docker container ls -a

# Inspecionando um container

$ docker container inspect "id-container"

# Interagindo com container em execução

# Listando o conteúdo do container

$ docker container exec -it "id-container" ls 

# Entrando no container

$ docker container exec -it "id-container" /bin/bash

# Para acessar um container com permissão de usuários root.

$ docker container exec -u -0 -it "id-container" /bin/bash

# Listando imagens

$ docker image ls

# Insecionando uma imagem

$ docker image inspect "id-image"

# Alguns Parâmetros

|Parâmetros| Significado                                                              |
|----------|--------------------------------------------------------------------------|
| -d       | Executa o container em background                                        |
| -i       | Modo interativo. Mantém o STDIN aberto mesmo sem console anexado         |
| -t       | Aloca uma pseudo TTY                                                     |
| --rm     | Automaticamente remove o container após finalização (Não funciona com -d)|
| --name   | Nomear o container                                                       |
| -v       | Mapeamento de volule                                                     |
| -p       | Mapeamento de portas                                                     |
| -m       | Limitar o uso de memória RAM                                             |
| -c       | Balancear o uso de CPU                                                   |



<!-- Markdown link & img dfn's -->



# Container Docker apache2     

Neste exemplo temos um Dockerfile com a image do Alpine Linux com apache2, com um explo de site. Onde definimos um timezone para o container.

# Fontes:

https://hub.docker.com/_/httpd

https://github.com/docker-library/httpd/blob/a7acc047c8970e0502f4c6b577775f840f1f99b6/2.4/alpine/Dockerfile

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
|

# 3. Conceptos Básicos de Docker 


- Imágenes y contenedores.

  - Una "imagen" es una plantilla que contiene un sistema de archivos con todo lo necesario para ejecutar una aplicación, incluyendo código, bibliotecas y configuraciones. Las imágenes son de solo lectura y se utilizan para crear "contenedores".

  - Un "contenedor" es una instancia en tiempo de ejecución de una imagen. Los contenedores son entornos aislados que comparten el mismo kernel del sistema operativo subyacente, pero tienen su propio sistema de archivos y procesos. Los contenedores son ligeros y rápidos de crear y destruir.

- Docker Hub y repositorios de imágenes.
[Docker Hub](https://hub.docker.com/) es un registro público de imágenes de Docker que los desarrolladores pueden usar. Docker Hub alberga miles de imágenes predefinidas que se pueden usar como base para crear contenedores personalizados.


- Comandos esenciales de Docker (docker run, docker build, docker ps, etc.).
docker run: Para crear y ejecutar un contenedor a partir de una imagen.
docker build: Para crear una nueva imagen a partir de un Dockerfile.
docker ps: Para listar los contenedores en ejecución.
docker stop y docker rm: Para detener y eliminar contenedores.
docker images: Para listar las imágenes disponibles localmente.

[docker cheat sheet](https://docs.docker.com/get-started/docker_cheatsheet.pdf)


Ejemplo:

Ejecutar varias imágenes de MSSQL Server en distintas versiones

```pwsh
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -p 1434:1433 -d mcr.microsoft.com/mssql/server:2022-latest

docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -p 1435:1433 -d mcr.microsoft.com/mssql/server:2019-latest

docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=yourStrong(!)Password" -p 1436:1433 -d mcr.microsoft.com/mssql/server:2017-latest
```
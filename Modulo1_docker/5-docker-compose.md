# 5. Docker compose

Docker Compose es una herramienta poderosa que permite definir y gestionar aplicaciones multi-contenedor de forma declarativa. A medida que las aplicaciones se vuelven más complejas y requieren la interacción de varios servicios y componentes, Docker Compose se convierte en una solución eficiente para coordinar todos estos elementos.

Simplifica la orquestación: Docker Compose simplifica el proceso de definir, configurar y orquestar múltiples contenedores en una aplicación. Esto facilita el trabajo con aplicaciones complejas que constan de varios servicios.

Portabilidad: Los archivos de Compose son independientes de la plataforma y el entorno, lo que significa que puedes definir una aplicación una vez y ejecutarla en diferentes sistemas operativos y entornos de desarrollo.

Configuración en un solo lugar: Con Compose, puedes mantener toda la configuración de tu aplicación en un solo archivo YAML (docker-compose.yml). Esto hace que sea más fácil gestionar y mantener la configuración a medida que la aplicación evoluciona.

Reproducibilidad: Al definir tu aplicación en un archivo Compose, puedes garantizar que cualquier persona pueda ejecutar la misma aplicación con la misma configuración, lo que facilita la colaboración en equipos de desarrollo.

Creación de archivos YAML de Compose
Para utilizar Docker Compose, primero debes crear un archivo YAML llamado docker-compose.yml en el directorio de tu proyecto. Este archivo contendrá la definición de todos los servicios y configuraciones necesarios para tu aplicación.

Un archivo de Compose típico se estructura de la siguiente manera:

```yaml
version: '3'  # Versión de Compose
services:     # Definición de servicios
  servicio1:  # Nombre del servicio
    image: imagen1:tag  # Imagen del contenedor
    ports:
      - "80:80"         # Mapeo de puertos
    volumes:
      - /ruta/local:/ruta/contenedor  # Mapeo de volúmenes
    environment:
      - VARIABLE=valor  # Variables de entorno
  servicio2:
    # ...
networks:     # Definición de redes
  red1:       # Nombre de la red
    # ...
volumes:      # Definición de volúmenes
  vol1:       # Nombre del volumen
    # ...
```

Definición de servicios y contenedores
En la sección services de tu archivo docker-compose.yml, defines los servicios que componen tu aplicación. Cada servicio tiene un nombre único y puede incluir lo siguiente:

image: La imagen del contenedor que se utilizará para ese servicio. Puede ser una imagen pública de Docker Hub o una imagen personalizada que hayas creado.

ports: El mapeo de puertos que permite acceder a servicios dentro del contenedor desde el host. Por ejemplo, "80:80" mapea el puerto 80 del host al puerto 80 del contenedor.

volumes: El mapeo de volúmenes que conecta rutas locales con rutas dentro del contenedor. Esto se utiliza para compartir datos y archivos entre el host y el contenedor.

environment: Las variables de entorno que se pueden configurar para el servicio. Estas variables pueden ser cruciales para la configuración de la aplicación dentro del contenedor.

## Comandos

docker-compose up: Iniciar servicios definidos en el archivo Compose y ejecutar la aplicación.

docker-compose down: Detener y eliminar los contenedores definidos en el archivo Compose.

docker-compose ps: Listar los servicios en ejecución y su estado.

Referencia: [https://docs.docker.com/compose/compose-file/](https://docs.docker.com/compose/compose-file/)

## Ejemplo:

Montando un wordpress:

```yaml
version: '3'

services:
    db:
        image: mysql:5.7
        volumes:
            - data:/var/lib/mysql
        environment:
            - MYSQL_ROOT_PASSWORD=secret
            - MYSQL_DATABASE=wordpress
            - MYSQL_USER=manager
            - MYSQL_PASSWORD=secret
    web:
        image: wordpress
        depends_on:
            - db
        volumes:
            - ./target:/var/www/html
        environment:
            - WORDPRESS_DB_USER=manager
            - WORDPRESS_DB_PASSWORD=secret
            - WORDPRESS_DB_HOST=db
        ports:
            - 8080:80

volumes:
    data:
```
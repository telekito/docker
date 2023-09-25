# 4. Creación de Contenedores

Un Dockerfile es un archivo de texto plano que contiene instrucciones y comandos para construir una imagen de Docker de manera automatizada. Las imágenes de Docker son plantillas de solo lectura que contienen un sistema de archivos con todo lo necesario para ejecutar una aplicación, incluyendo el código, las bibliotecas, las dependencias y las configuraciones del entorno. Los Dockerfiles proporcionan un medio para definir cómo se debe construir una imagen Docker paso a paso.

Los Dockerfiles son esenciales en la tecnología de contenedores, ya que permiten la reproducibilidad y la automatización de la creación de imágenes, lo que facilita la implementación y el despliegue de aplicaciones en entornos de contenedores. Algunas de las características y componentes clave de un Dockerfile incluyen:

1. Instrucciones: Un Dockerfile contiene una serie de instrucciones que se ejecutan secuencialmente para construir la imagen. Estas instrucciones incluyen comandos como FROM, RUN, COPY, EXPOSE, CMD, entre otros.

2. Capas: Cada instrucción en un Dockerfile crea una nueva capa en la imagen resultante. Las capas son una parte fundamental de la arquitectura de Docker, ya que permiten la reutilización de capas comunes entre imágenes, lo que ahorra espacio de almacenamiento.

3. FROM: La primera instrucción en un Dockerfile debe ser FROM, que especifica la imagen base a partir de la cual se construirá la nueva imagen. Por ejemplo, FROM ubuntu:20.04 indica que se utilizará la imagen base de Ubuntu 20.04 como punto de partida.

4. RUN: La instrucción RUN se utiliza para ejecutar comandos dentro del contenedor durante el proceso de construcción. Estos comandos pueden incluir la instalación de paquetes, la descarga de dependencias o la compilación de código.

5. COPY y ADD: Estas instrucciones permiten copiar archivos y directorios desde el sistema de archivos local del host al sistema de archivos del contenedor. COPY se utiliza principalmente para copiar archivos locales al contenedor, mientras que ADD puede realizar tareas adicionales, como descomprimir archivos.

6. EXPOSE: La instrucción EXPOSE se utiliza para especificar los puertos en los que el contenedor escuchará las conexiones. Sin embargo, esta instrucción no publica automáticamente los puertos en el host, es simplemente una documentación de la intención del contenedor.

7. CMD y ENTRYPOINT: Estas instrucciones definen el comando que se ejecutará cuando se inicie un contenedor basado en la imagen. CMD se utiliza para proporcionar un comando predeterminado que se puede sobrescribir cuando se ejecuta el contenedor, mientras que ENTRYPOINT define un comando que no se puede sobrescribir fácilmente.

8. Variables de entorno: Se pueden definir variables de entorno dentro del Dockerfile para configurar el entorno de ejecución de la aplicación en el contenedor.

Los Dockerfiles son esenciales para el desarrollo y la implementación de aplicaciones en contenedores Docker, ya que permiten a los desarrolladores definir de manera precisa y automatizada cómo se deben configurar y construir las imágenes de sus aplicaciones. Esto facilita la creación de imágenes consistentes y reproducibles, lo que es fundamental para la adopción exitosa de la tecnología de contenedores.
## 4.1. Creación de un Dockerfile Personalizado

1. Crea un archivo llamado Dockerfile en un directorio de tu elección.

2. Abre el archivo Dockerfile en un editor de texto y agrega el siguiente contenido:

```Dockerfile
# Usa una imagen base de Ubuntu
FROM ubuntu:23.10

# Actualiza el sistema y instala una aplicación
RUN apt-get update && apt-get install -y nginx

# Expón el puerto 80 para que se pueda acceder a la aplicación
EXPOSE 80

# Comando de inicio de la aplicación
CMD ["nginx", "-g", "daemon off;"]
```

Este Dockerfile crea una imagen basada en Ubuntu, actualiza el sistema, instala el servidor web Nginx y luego expone el puerto 80 para que se pueda acceder a la aplicación.

3. Guarda el archivo Dockerfile.

## 4.2. Construcción de una Imagen a partir del Dockerfile

1. Abre una terminal y navega hasta el directorio donde guardaste el archivo Dockerfile.

2. Ejecuta el siguiente comando para construir la imagen Docker a partir del Dockerfile:

```powershell
docker build -t mi-imagen-nginx .
```
Esto construirá una imagen con el nombre mi-imagen-nginx utilizando el Dockerfile en el directorio actual (.).

3. Una vez que la construcción haya finalizado, puedes verificar que la imagen se haya creado correctamente usando el siguiente comando:

```powershell
docker images
```

## 4.3. Ejecución y Gestión de Múltiples Contenedores
1. Ahora que tienes la imagen mi-imagen-nginx, puedes crear y ejecutar un contenedor a partir de ella utilizando el siguiente comando:

```powershell
docker run -d -p 8080:80 --name mi-contenedor-nginx mi-imagen-nginx
```

Este comando crea un contenedor a partir de la imagen mi-imagen-nginx, lo ejecuta en segundo plano (-d), mapea el puerto 8080 del host al puerto 80 del contenedor (-p 8080:80), y le da un nombre (--name mi-contenedor-nginx).


Paso 2: Verifica que el contenedor se está ejecutando correctamente:

```powershell
docker ps
```
Deberías ver mi-contenedor-nginx en la lista de contenedores en ejecución.

3. Para detener y eliminar el contenedor cuando hayas terminado, utiliza los siguientes comandos:

```powershell
docker stop mi-contenedor-nginx
docker rm mi-contenedor-nginx
```
Esto detendrá y eliminará el contenedor.

Referencia: [https://docs.docker.com/engine/reference/builder/](https://docs.docker.com/engine/reference/builder/)
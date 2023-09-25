# 4. Creación de Contenedores (20 minutos)
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
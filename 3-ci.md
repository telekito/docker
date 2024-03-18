# 3. Integración continua (CI)

Antes de comenzar a construir nuestro pipeline de CI debemos subir nuestro código al repositorio de GitHub sobre el que trabajaremos. Una vez hecho esto podemos comenzar con nuestro pipeline:

 1. Creación del pipeline: tenemos que colocar en el repositorio donde tenemos el código un archivo yaml con la definicion del pipeline. Este archivo lo ubicaremos en la siguiente ruta: ``` .github\workflows\ ``` y le daremos el nombre al archivo yaml. En nuestro ejemplo crearemos el archivo ci.yaml
 2. Comenzamos añadiendo a nuestro archivo las siguientes lineas:

    ```yaml
    name: Docker Image CI

    on:
        push:
            branches: [ "main" ]
        pull_request:
            branches: [ "main" ]
    ```
    - name: es el nombre de nuestro pipeline
    - on: indica cuando se ejecutará nuestro pipeline, en este caso se ejecutará cuando se haga push o pull_request sobre la rama main.

3. Definimos nuestro trabajos añadiendo el siguiente contenido al fichero y añadimos los pasos de nuestra compilación

    ```yaml
    jobs:
        build:
            runs-on: ubuntu-latest
            steps:
            - uses: actions/checkout@v3
            - name: Build the Docker image
              run: docker build . --file Dockerfile --tag nginx:$(date +%s)
    ```
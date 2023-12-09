# 1. ¿Qué es un registry?

Un registry es un repositorio centralizado donde se almacenan y gestionan las imágenes de los contenedores. Este registro actúa como un almacén de imágenes accesible a través de la red, permitiendo a los usuarios almacenar, compartir y descargar imágenes de contenedores.

Existen varias opciones para registros de contenedores:

## 1.1. Registro Público
- Docker Hub: Es el registro público de imágenes de Docker más utilizado. Contiene una gran cantidad de imágenes públicas que los usuarios pueden utilizar de forma gratuita. Ofrece la opción de imágenes públicas y privadas (mediante suscripción de pago).
Registros Privados
- Azure Container Registry (ACR): Un servicio de Azure para almacenar imágenes de contenedores Docker de manera privada y segura. Proporciona un registro privado que se puede integrar con otros servicios de Azure.
- Amazon Elastic Container Registry (ECR): Similar a ACR, es un servicio de AWS para almacenar, administrar y desplegar imágenes de contenedores de manera privada.

- Google Container Registry (GCR): Ofrecido por Google Cloud, proporciona un registro privado para almacenar imágenes de contenedores Docker y está integrado con otras herramientas de Google Cloud.

## 1.2. Registros On-Premises
- Docker Trusted Registry (DTR): Ofrece un registro privado on-premises para almacenar y gestionar imágenes de contenedores en entornos locales.
- Harbor: Una solución de registro de contenedores de código abierto que proporciona características avanzadas de seguridad y gestión de imágenes.
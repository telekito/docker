# 3. Subir imagen

1. Iniciar sesión en Azure desde la CLI:

```bash
az login
```

2. Iniciar sesión en tu ACR:

```bash
az acr login --name <nombre-del-registro>
```
Reemplaza <nombre-del-registro> con el nombre de tu ACR.

3. Etiquetar la imagen: Etiqueta la imagen local con la dirección del registro de Azure.

```bash
docker tag <nombre-de-la-imagen-local> <nombre-del-registro>.azurecr.io/<nombre-de-la-imagen-en-acr>:<tag>
```
<nombre-de-la-imagen-local>: Nombre de la imagen que tienes localmente.
<nombre-del-registro>: Nombre de tu ACR en Azure.
<nombre-de-la-imagen-en-acr>: Nombre que deseas para la imagen en tu ACR.
<tag>: Versión o etiqueta de la imagen.

4. Subir la imagen etiquetada al ACR:

```bash
docker push <nombre-del-registro>.azurecr.io/<nombre-de-la-imagen-en-acr>:<tag>
```

Esto subirá la imagen etiquetada a tu registro de Azure.

5. Verificar la subida exitosa: Ve a Azure Portal, ingresa a tu ACR y verifica que la imagen esté presente en la lista de imágenes.
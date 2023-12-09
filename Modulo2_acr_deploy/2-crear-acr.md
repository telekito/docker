# 2. Creación de un Azure Container Registry

## 2.1. Creación de un Azure Container Registry (ACR) en Azure Portal:
1. Inicia sesión en Azure Portal: Accede a tu cuenta de Azure en portal.azure.com.

2. Crear un nuevo recurso: Haz clic en el botón "+ Crear un recurso" en el panel izquierdo del portal.

3. Buscar Azure Container Registry: En el campo de búsqueda, escribe "Azure Container Registry" y selecciona esa opción cuando aparezca en los resultados.

4. Configuración del ACR:

    - Detalles básicos: Llena los campos como suscripción, grupo de recursos, nombre del registro, ubicación, etc.
    - Sku (nivel de precios): Selecciona el nivel de precios (por ejemplo, Basic, Standard, Premium) basado en tus necesidades de almacenamiento y funcionalidades.
5. Habilitar opciones avanzadas (opcional): Puedes configurar opciones avanzadas como la replicación geográfica para redundancia y la integración con otros servicios.

6. Revisar y crear: Revisa la configuración que has establecido y haz clic en "Crear" para iniciar la creación del ACR.

7. Esperar a que se complete la creación: El proceso de creación puede llevar unos minutos. Una vez completado, verás un mensaje de notificación en Azure Portal.

## 2.2. Acceder al ACR y Configurar Permiso de Acceso:
1. Acceder al ACR: Una vez que se complete la creación, haz clic en el recurso ACR que acabas de crear para acceder a su página de detalles.

2. Configurar permisos de acceso (opcional): Puedes configurar permisos de acceso en la sección "Control de acceso (IAM)" para permitir que otros usuarios o servicios accedan y gestionen el registro.

![Permisos](images/permisos.png)

## 2.3. Iniciar Sesión y Utilizar el ACR desde la CLI de Azure:
1. Instalar la CLI de Azure: Si no la tienes, instala la CLI de Azure en tu máquina local.

2. Iniciar sesión en Azure desde la CLI: Ejecuta el comando az login para iniciar sesión en tu cuenta de Azure desde la CLI.

```bash
az login
```

3. Iniciar sesión en el ACR: Ejecuta el comando az acr login --name <nombre-del-registro> para iniciar sesión en el ACR desde la CLI.

```bash
az acr login --name <nombre-del-registro>
```
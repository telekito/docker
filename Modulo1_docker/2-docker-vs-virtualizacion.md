# Docker vs Virtualizacion

Docker y otras formas de virtualización, como las máquinas virtuales (VM), tienen diferencias significativas en cuanto a su enfoque, arquitectura y casos de uso.

![docker-vs-vm](images/containers-vs-virtual-machines.jpg)

# Docker:
1. Virtualización a nivel de contenedor:
   - Docker utiliza contenedores, que son entornos ligeros y autocontenidos que comparten el mismo sistema operativo host. Cada contenedor se ejecuta en una única instancia del kernel del sistema operativo subyacente.
   - Los contenedores son más eficientes en términos de recursos en comparación con las VMs, ya que no requieren un sistema operativo completo para cada aplicación.
  
2. Rapidez y eficiencia:
   - Los contenedores de Docker inician más rápido y consumen menos recursos que las VMs, lo que los hace ideales para implementaciones rápidas y escalabilidad horizontal.
   - Docker permite ejecutar múltiples contenedores en un solo host sin un gran impacto en el rendimiento.

3. Portabilidad y consistencia:
   - Docker garantiza que una aplicación se comporte de la misma manera en diferentes entornos, lo que simplifica la portabilidad y la consistencia.
   - Docker Hub proporciona un repositorio centralizado para compartir y distribuir imágenes de contenedores.
  
4. Orquestación:
   - Docker se utiliza comúnmente junto con herramientas de orquestación como Kubernetes y Docker Swarm para gestionar y escalar contenedores en entornos de producción.

# Máquinas Virtuales (VMs):

1. Virtualización a nivel de hardware:
   - Las VMs emulan un hardware completo y pueden ejecutar múltiples sistemas operativos completos en un solo host físico.
   - Cada VM incluye su propio sistema operativo, lo que aumenta el consumo de recursos.
2. Aislamiento y seguridad:
   - Debido a su aislamiento más fuerte, las VMs pueden ser más seguras en entornos de múltiples inquilinos, ya que un fallo en una VM no afecta a las demás.
   - Las VMs son adecuadas para aplicaciones que requieren un alto grado de aislamiento y seguridad.
  
3. Uso de recursos:
   - Las VMs consumen más recursos, como memoria y espacio en disco, en comparación con los contenedores.
   - El tiempo de inicio de una VM es más largo que el de un contenedor.
4. Aplicaciones heredadas:
   - Las VMs son útiles para ejecutar aplicaciones heredadas que no se pueden modificar fácilmente para ejecutarse en contenedores.
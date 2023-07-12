**Investigación**

Para esta practica instalaremos la herramienta stress-ng:

**Instalación**

Actualice y renueve el gestor de paquetes

dnf update

dnf makecache --refresh Instale la herramienta

dnf -y install stress-ng

**Desinstalar**

Para desinstalar la herramienta ejecute el comando dnf remove stress-ng

**Instrucciones**

1. Ejecute el comando man stress-ng y lea la documentación de la herramienta.
1. Genere un comando que evalúe la CPU.
1. Genere un comando que evalúe la memoria.
1. Genere un comando que evalúe el manejo de proceso e hilos.
1. Almacene los resultados en diferentes archivos.
1. Genere un documento .md donde se visualice:
   1. Nombre y breve descripción de la herramienta.
   1. Los comandos creados con una descripción de lo que hace y porque lo hace.
   1. Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas.
1. Suba el documento a su repositorio.

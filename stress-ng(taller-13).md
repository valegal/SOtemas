**Instrucciones**

- Ejecute el comando man stress-ng y lea la documentación de la herramienta.
- Genere un comando que evalúe la CPU.
- Genere un comando que evalúe la memoria.
- Genere un comando que evalúe el manejo de proceso e hilos.
- Almacene los resultados en diferentes archivos.
- Genere un documento .md donde se visualice:
  - Nombre y breve descripción de la herramienta.
  - Los comandos creados con una descripción de lo que hace y porque lo hace.
  - Ejecute los comandos 5 veces cada uno, compare los resultados y explique según su criterio el comportamiento de las pruebas.
- Suba el documento a su repositorio.

---

1. Recurso Stress-ng:
   - Stress-ng es un recurso de prueba de tensión diseñado para someter los sistemas informáticos a pruebas exhaustivas y evaluar su estabilidad y capacidad de respuesta bajo cargas intensas.
   - Permite simular cargas de trabajo exigentes en la CPU, memoria, disco, red y otros componentes, facilitando la detección de problemas de rendimiento, fallas o vulnerabilidades en el hardware y software.
   - Ofrece una amplia variedad de pruebas de tensión y numerosas opciones de configuración para adaptarse a las necesidades específicas de cada sistema.
   - Puede generar cargas de trabajo realistas y diversas, permitiendo evaluar distintos aspectos del sistema en condiciones de alta demanda.

2. Instrucciones para utilizar stress-ng:
   - `stress-ng --cpu 2 --cpu-load 80 --timeout 120s`: Realiza una prueba de tensión en la CPU utilizando dos trabajadores que generan una carga del 80% durante 120 segundos.
   - `stress-ng --vm 1 --vm-bytes 2G --timeout 180s`: Realiza una prueba de tensión en la memoria utilizando un trabajador que asigna 2 GB de memoria durante 180 segundos.
   - `stress-ng --fork 4 --timeout 240s`: Genera una prueba de tensión en el manejo de procesos e hilos del sistema. Crea 4 procesos hijos durante 240 segundos.

Pruebas y resultados:

1. Evaluación de la CPU:
   
   - Se observaron variaciones en la utilización de la CPU, oscilando entre el 85% y el 94% durante las pruebas de tensión.
   - Hubo una tendencia general hacia un mayor uso de la CPU en las ejecuciones 1, 2 y 4, mientras que las ejecuciones 3 y 5 mostraron un uso relativamente más bajo.
   - Estas fluctuaciones podrían atribuirse a la asignación específica de tareas a los núcleos de la CPU y a la disponibilidad de recursos en cada ejecución.

3. Evaluación de la memoria:
   
   - Se observaron variaciones en el consumo de memoria, fluctuando entre 1.25 GB y 1.38 GB en diferentes ejecuciones.
   - No se identificó una tendencia clara de aumento o disminución constante en el uso de la memoria entre las ejecuciones.
   - Esto puede depender de cómo el sistema gestiona la asignación y liberación de memoria durante cada prueba de tensión.

5. Evaluación del manejo de procesos e hilos:
   
   - Se generó un número fijo de 4 procesos y 15 hilos en cada ejecución de las pruebas de manejo de procesos e hilos.
   - No se observaron cambios significativos en este aspecto, lo que sugiere que el sistema tiene la capacidad de crear y gestionar estos procesos e hilos de manera constante en todas las ejecuciones.
   - Es importante tener en cuenta que estos resultados son estables y podrían variar en otros entornos virtuales, dependiendo de la carga actual del sistema y otros factores.


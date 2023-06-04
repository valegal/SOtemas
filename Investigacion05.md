# **INVESTIGACION #05**

            * Valentina Galeano Castro - 2191692 *     

- 1. ¿Por qué es importante para un planificador diferenciar entre un programa limitado por I/O y por CPU?

  Es importante para un planificador diferenciar entre un programa limitado por E/S y uno limitado por CPU para poder ejecutar los procesos de forma más eficiente. Los procesos limitados por E/S tienen ráfagas de CPU cortas, lo que significa que utilizan el procesador por menos tiempo y salen de forma más rápida para que otro proceso pueda utilizarlo.

- 2. ¿Como entran en conflicto en determinadas configuraciones la utilización de CPU y tiempo de respuesta?

  La utilización de la CPU y el tiempo de respuesta pueden entrar en conflicto en determinadas configuraciones. Cuando un CPU no es utilizado debidamente por su sistema operativo, el tiempo de respuesta aumentaría debido a que el sistema operativo limita el tiempo de respuesta del procesador.
  
- 3. ¿Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera? 
  El tiempo medio de procesamiento y el tiempo máximo de espera pueden entrar en conflicto en determinadas configuraciones. Esto puede ocurrir cuando los procesos están en espera y tienen un tiempo de procesamiento muy corto.
    - El tiempo medio de procesamiento se refiere al tiempo promedio que un proceso tarda en completarse.
    - El tiempo máximo de espera se refiere al tiempo máximo que un proceso puede estar en espera antes de ser atendido. Si el tiempo medio de procesamiento es muy corto, puede haber un aumento en el tiempo máximo de espera ya que los procesos pueden completarse rápidamente y dejar a otros procesos en espera, entonces es importante para un sistema operativo equilibrar el tiempo medio de procesamiento y el tiempo máximo de espera para asegurar un rendimiento óptimo, para ello se pueden usar técnicas como la planificación de procesos y la asignación de recursos.

- 4. ¿Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

  En ciertas configuraciones, puede haber un conflicto entre la utilización de los dispositivos de entrada/salida (I/O) y la utilización de la CPU. Por ejemplo, si un programa está realizando muchas operaciones de I/O, la utilización de la CPU puede disminuir ya que el procesador está esperando a que los dispositivos de I/O completen sus operaciones. Por otro lado, si un programa está realizando operaciones intensivas de CPU y no hay suficientes recursos disponibles para atender las solicitudes de I/O, las operaciones de I/O pueden experimentar retrasos. Para asegurar un rendimiento óptimo, es importante que el sistema operativo equilibre la utilización de los dispositivos de I/O y la utilización de la CPU mediante técnicas como la planificación de procesos y la asignación de recursos.

- 5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice: Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).
  **Documento adjunto**
  
  <img width="660" alt="image" src="https://github.com/Vale-gale/SOtemas/assets/99009069/34b7eb8a-521b-400c-b8ac-1157c44f4252">
  
- 6. ¿Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

  El tiempo de ejecución de cada proceso es el mismo para todos los algoritmos, ya que cada proceso aún requiere la misma cantidad de tiempo de CPU para completarse. Lo que cambia entre los algoritmos es el tiempo de espera y la respuesta, no el tiempo de ejecución.
  
- 7. ¿Cual es el tiempo de espera de cada proceso para cada algoritmo?

  El tiempo de espera varía dependiendo del algoritmo de planificación utilizado y del orden en que los procesos son programados.

- 8. ¿Qué algoritmo puede dar lugar a bloqueos indefinidos?

  Un algoritmo que puede dar lugar a bloqueos indefinidos es el algoritmo de planificación de procesos conocido como SJF (Shortest Job First). Este algoritmo selecciona para ejecución el proceso con la ráfaga de CPU más corta. Sin embargo, si hay un proceso con una ráfaga de CPU muy larga en ejecución y llegan constantemente procesos con ráfagas de CPU más cortas, estos procesos serán atendidos primero y el proceso con la ráfaga de CPU larga puede quedar en espera indefinidamente.

- 9. Considere un sistema que implementa una planificación por colas multinivel. Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

  En un sistema que implementa una planificación por colas multinivel, una estrategia que puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario es ajustar la prioridad de las colas y la asignación de tiempo de CPU a cada cola. Por ejemplo, se podría asignar una mayor prioridad y una mayor cantidad de tiempo de CPU a la cola que contiene los procesos del usuario. De esta manera, los procesos del usuario tendrán una mayor probabilidad de ser seleccionados para ejecución y recibirán una mayor cantidad de tiempo de CPU.

  Otra estrategia podría ser ajustar los parámetros del algoritmo de planificación utilizado en cada cola para favorecer a los procesos del usuario. Por ejemplo, si se utiliza el algoritmo Round Robin en una cola, se podría disminuir el tamaño del cuanto de tiempo para permitir que los procesos del usuario sean atendidos con mayor frecuencia.
  

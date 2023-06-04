# **INVESTIGACION #06**

            * Valentina Galeano Castro - 2191692 *

            
## 1. ¿Cual es significado del termino espera activa?

El término "espera activa" se refiere a una técnica en la que un proceso, en lugar de esperar pasivamente a que se cumpla una determinada condición, realiza una verificación continua y repetitiva para verificar si se ha cumplido la condición. Cuando un proceso necesita acceder a un recurso compartido que está siendo utilizado por otro proceso, normalmente esperaría de manera pasiva hasta que el recurso esté disponible. Sin embargo, en la espera activa, el proceso realiza un bucle de verificación constante para comprobar periódicamente si el recurso ha sido liberado por el otro proceso.

La espera activa implica que el proceso gaste ciclos de CPU verificando repetidamente el estado de un recurso, lo cual puede ser ineficiente desde el punto de vista del rendimiento del sistema. Además, puede generar un consumo innecesario de recursos de CPU y retrasar la ejecución de otros procesos. Aunque la espera activa puede ser útil en ciertos casos, generalmente se considera una técnica menos eficiente y preferible evitarla siempre que sea posible. Los sistemas operativos modernos suelen proporcionar mecanismos más sofisticados de sincronización y comunicación entre procesos, como semáforos, monitores, bloqueos y variables de condición, que permiten una sincronización más eficiente sin requerir espera activa.

## 2. ¿De que manera se puede evitar la espera activa?

Mediante el uso de mecanismos de sincronización más eficientes y adecuados en sistemas operativos. Algunas de las técnicas comunes para evitar la espera activa son las siguientes:

- Semáforos: Los semáforos son variables especiales que permiten a los procesos controlar el acceso a recursos compartidos. Un proceso puede adquirir un semáforo para acceder a un recurso y, si el semáforo está ocupado, el proceso se bloquea automáticamente en lugar de realizar una espera activa. Cuando el recurso esté disponible, el proceso será desbloqueado y podrá acceder a él.

- Monitores: Los monitores son estructuras de programación que encapsulan datos y operaciones relacionadas en un objeto. Proporcionan mecanismos de exclusión mutua para evitar la competencia de los procesos por los recursos. Cuando un proceso necesita acceder a un recurso dentro de un monitor y este está ocupado, el proceso se coloca en espera hasta que se libere el recurso.

- Bloqueos (Locks): Los bloqueos son mecanismos que permiten a un proceso adquirir y liberar un recurso de forma exclusiva. Si un proceso intenta adquirir un bloqueo que ya está en uso, se bloqueará automáticamente hasta que el bloqueo esté disponible.

- Variables de condición: Las variables de condición se utilizan junto con los bloqueos para permitir la sincronización y comunicación entre procesos. Un proceso puede esperar en una variable de condición hasta que se cumpla una determinada condición y otro proceso puede señalar o notificar a los procesos en espera cuando se cumple esa condición.
 
 ## 3. Explique por qué los bloqueos mediante bucle sin fin no son apropiados para sistemas monoprocesador, pero se usan con frecuencia en los sistemas multiprocesador.
 
  En sistemas monoprocesador, los bloqueos mediante bucle sin fin no son apropiados porque ocupan todo el tiempo de CPU, impidiendo que otros procesos realicen su trabajo y degradando el rendimiento general del sistema.

  En sistemas multiprocesador, los bloqueos mediante bucle sin fin pueden ser utilizados más frecuentemente debido a la capacidad de procesamiento paralelo. Sin embargo, aún deben usarse con precaución, ya que pueden ser ineficientes en situaciones de espera prolongada. Técnicas más avanzadas, como semáforos o variables de condición, son preferibles en esos casos.
 
 ## 4. Explique por qué las interrupciones no son apropiadas para implementar primitivas de sincronización en los sistemas multiprocesador.
 
Las interrupciones son eventos asincrónicos que ocurren en un sistema para señalar la necesidad de atención inmediata por parte del procesador. Si bien las interrupciones son fundamentales para el funcionamiento de los sistemas operativos y permiten manejar eventos externos y prioridades, no son apropiadas para implementar primitivas de sincronización en sistemas multiprocesador. Aquí se presentan algunas razones:

- Conflictos de sincronización: En sistemas multiprocesador, varios núcleos de procesador pueden estar ejecutando hilos o procesos concurrentemente. Si se utilizan interrupciones para sincronizar o señalizar eventos, existe el riesgo de que múltiples núcleos o hilos generen interrupciones al mismo tiempo, lo que puede dar lugar a conflictos de sincronización y comportamientos inesperados.

- Inequidad en el acceso a recursos: Las interrupciones son eventos de alta prioridad y pueden interrumpir la ejecución de otros hilos o procesos en el sistema. Si se utilizan para implementar primitivas de sincronización, esto puede resultar en una inequidad en el acceso a recursos compartidos. Un hilo o proceso que genera interrupciones con mayor frecuencia podría obtener un acceso desproporcionado a los recursos, lo que podría afectar el rendimiento y la equidad del sistema.

- Overhead y latencia: Las interrupciones tienen un cierto overhead asociado, ya que implican el cambio de contexto y la ejecución de rutinas de manejo de interrupciones. En sistemas multiprocesador, donde varios núcleos pueden recibir interrupciones simultáneamente, esto puede generar un mayor uso de recursos del sistema y una mayor latencia en la respuesta a las interrupciones, lo que puede afectar negativamente el rendimiento general del sistema.

 ## 5. Describa como se puede utilizar la instrucción swap() para proporcionar un mecanismo de exclusión mutua que satisfaga el requisito de espera limitada.

Este mecanismo garantiza que solo un proceso pueda acceder a la sección crítica a la vez y proporciona una espera limitada para otros procesos que intentan adquirir el candado.
  1. Utilizar la instrucción swap() para intercambiar el contenido de una variable compartida llamada "candado" entre 0 y 1.
  2. En la función de adquisición de exclusión mutua:
    - Realizar un bucle mientras se intente adquirir el candado usando swap().
    - Si el candado está ocupado (valor 1), repetir el bucle.
    - Incluir una espera limitada dentro del bucle para evitar espera activa constante.
    - 
  3. En la función de liberación de exclusión mutua:
    - Establecer el valor del candado en 0 para indicar que la sección crítica está libre.

 ## 6. Los servidores pueden diseñarse de modo que limiten el numero de conexiones abiertas. Explique cómo puede utilizar un servidor los semáforos para limitar el numero de conexiones concurrentes.

Para controlar el número de conexiones simultáneas en un servidor, se pueden usar semáforos como mecanismo de sincronización. Los semáforos ayudan a regular el acceso a un recurso compartido y pueden ser usados para establecer un límite en el número de conexiones que el servidor puede manejar al mismo tiempo. Un ejemplo simplificado de cómo un servidor puede usar semáforos para controlar el número de conexiones simultáneas es el siguiente:

- Inicialización: El servidor crea un semáforo con un contador inicializado al límite máximo de conexiones permitidas. Esto define el número máximo de conexiones simultáneas que el servidor puede manejar.
- Gestión de conexiones entrantes: Cuando llega una nueva conexión al servidor, se intenta adquirir el semáforo. Si el contador del semáforo es mayor que cero (lo que indica que hay conexiones disponibles), se reduce el contador y se permite que la conexión se establezca y se maneje normalmente. Si el contador es cero (lo que indica que se ha alcanzado el límite de conexiones), el servidor rechaza o pone en espera la conexión entrante hasta que se libere una conexión existente.
- Liberación de conexiones: Cuando una conexión se cierra o finaliza, el servidor aumenta el contador del semáforo, lo que indica que se ha liberado una conexión y está disponible para ser utilizada por una nueva conexión.
 
 ## 7. Demuestre que los monitores y semáforos son equivalentes, en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización.

  Los monitores y los semáforos son equivalentes en cuanto a que se pueden emplear para implementar los mismos tipos de problemas de sincronización. Aunque son muy diferentes, son equivalentes en poder, en el sentido de que se puede implementar uno a partir del otro.

  Un monitor es un objeto diseñado para ser accedido desde múltiples hilos. Las funciones miembro o métodos de un objeto monitor impondrán exclusión mutua, de modo que solo un hilo puede realizar cualquier acción en el objeto en un momento dado. Si un hilo está ejecutando actualmente una función miembro del objeto, cualquier otro hilo que intente llamar a una función miembro de ese objeto tendrá que esperar hasta que el primero haya terminado.

  Un semáforo es un objeto de nivel inferior. Podría usar un semáforo para implementar un monitor. Un semáforo es esencialmente solo un contador. Cuando el contador es positivo, si un hilo intenta adquirir el semáforo, se le permite y se decrementa el contador. Cuando un hilo termina, libera el semáforo e incrementa el contador. Si el contador ya es cero cuando un hilo intenta adquirir el semáforo, debe esperar hasta que otro hilo libere el semáforo.

 ## 8. La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas. Explique por qué es cierto esto.
 
  La exclusión mutua estricta en un monitor hace que el monitor de búfer limitado sea adecuado para porciones pequeñas porque permite un acceso rápido y sin interferencias al búfer por parte de los hilos. Esto minimiza los tiempos de espera y mejora la eficiencia general del sistema cuando se trabaja con datos de pequeño tamaño.
 
 ## 9. ¿Por qué Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en los sistemas multiprocesador y no en los sistemas monoprocesador?  
 
  Los sistemas operativos como Windows y Linux utilizan bloqueos mediante bucle sin fin como mecanismo de sincronización solo en sistemas multiprocesador debido a su eficiencia en la gestión de la concurrencia en entornos con múltiples núcleos. En sistemas monoprocesador, este enfoque sería ineficiente y podría afectar negativamente el rendimiento del sistema.

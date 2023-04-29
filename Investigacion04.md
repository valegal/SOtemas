# **INVESTIGACION #04**

            * Valentina Galeaano Castro - 2191692 *

            
## 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

- Cuando el proceso no tiene que hacer una tarea compleja y solamente tenga que hacer una tarea pequeña como hacer la suma de 2 números.
- Cuando la aplicación que se ha desarrollado es muy simple y no tiene sentido plantearse este tipo de programación.

## 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

 Un hilo es un proceso ligero o subproceso que se puede describir como una secuencia de tareas encadenadas muy pequeña que puede ser ejecutada por un sistema operativo. Una biblioteca de hilos a nivel de usuario es una biblioteca que se ejecuta en el espacio de usuario de un mismo proceso y contiene el código para crear y destruir hilos, intercambiar mensajes y datos entre hilos, para planificar la ejecución de hilos y para salvar y restaurar el contexto de los hilos1. Los hilos a nivel de usuario tienen como beneficio que su cambio de contexto es más sencillo que el cambio de contexto entre hilos de kernel, esto es porque los hilos a nivel de usuario no requieren la intervención del sistema operativo para cambiar de contexto y se pueden implementar aún si el SO no utiliza hilos a nivel de kernel.
 
 ## 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
 
 Sí, los valores de los registros son parte del estado de un hilo de ejecución en un procesador, y cada hilo tiene su propio conjunto de registros que se utilizan para almacenar valores temporales y variables locales. Por lo tanto, los valores de los registros no se comparten directamente entre los hilos de un proceso multihilo.

 En un ambiente multihilo, los hilos pueden compartir datos a través de variables o memoria compartida y a veces se pueden presentar problemas de concurrencia y sincronización. En tales casos, los valores de los registros aún no se comparten directamente, pero pueden utilizarse para manipular los datos compartidos en la memoria compartida.
 
 ## 4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
 
  No, los cúmulos de memoria no se comparten directamente entre los hilos de ejecución. En un proceso multihilo, cada hilo tiene su propio espacio de memoria asignado, lo que significa que cada hilo tiene su propio conjunto de cúmulos de memoria privados.
  
  Este enfoque ayuda a evitar problemas de concurrencia y sincronización que podrían ocurrir si los hilos compartieran directamente el mismo espacio de memoria. Cada hilo puede acceder a su propio espacio de memoria privado y utilizarlo para almacenar datos y variables locales.

Es posible compartir algunos datos a través de variables o memoria compartida, lo que significa que los datos se almacenan en una región de memoria que puede ser accedida por varios hilos. Pero esto debe manejarse con cuidado para evitar problemas de concurrencia y garantizar la coherencia de los datos.

## 5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

 Sí, en un sistema multihilo, los hilos de un proceso comparten las variables globales y por lo tanto la comunicación entre ellos se puede realizar mediante pila. Esto es porque los hilos de un proceso comparten el mismo espacio de direcciones virtual y los recursos del proceso, incluyendo las variables globales . Esto permite que los hilos se comuniquen y compartan información de manera más eficiente que si fueran procesos separados.
 
 ## 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?
 
  No, cada hilo tiene su propia pila de llamadas independiente. Sin embargo, la memoria en otras pilas de subprocesos todavía es accesible y, en teoría, un hilo podría mantener un puntero a la memoria en el marco de pila local de otro subproceso. Esto se debe a que cada hilo tiene su propia pila de llamadas independiente para permitir que cada hilo tenga su propio estado y su propia secuencia de ejecución. La pila de llamadas almacena información sobre las llamadas a funciones y los datos locales de cada función. Si los hilos compartieran la misma pila de llamadas, interferirían entre sí y causarían problemas de concurrencia.
  
## 7. En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

 Una solución multihilo que usa múltiples hilos del kernel puede proporcionar mejor rendimiento que un solo hilo sobre un sistema monoprocesador en situaciones donde el trabajo puede dividirse en múltiples tareas independientes que pueden ejecutarse en paralelo. Esto se conoce como multiprocesamiento y permite a la CPU procesar varias tareas de forma simultánea porque el multiprocesamiento permite a la CPU procesar varias tareas de forma simultánea al dividir el trabajo en múltiples hilos de software que se procesan en paralelo por distintos núcleos de la CPU. Esto puede mejorar el rendimiento al reducir los tiempos de espera entre procesos y permitir que la CPU complete más trabajo en el mismo período de tiempo.
 
 ## 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?
 
 En un sistema multiprocesador, que tiene múltiples procesadores físicos, una solución multihilo que utiliza múltiples hilos de usuario puede conseguir mejor rendimiento que en un sistema de un solo procesador, debido a la capacidad de procesamiento paralelo proporcionada por el sistema multiprocesador.

- En una solución multihilo, cada hilo puede ser asignado a un procesador físico diferente, permitiendo que los hilos se ejecuten simultáneamente en diferentes núcleos de procesamiento y, por tanto, aumentando la capacidad de procesamiento.

- En un sistema de un solo procesador, sólo hay un procesador físico disponible, lo que limita la capacidad de procesamiento. Aunque una solución multihilo puede mejorar el rendimiento, el aumento puede ser limitado debido a la falta de recursos de procesamiento adicionales disponibles.
 
## 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores. 

 Si el número de hilos del kernel asignados al programa es menor que el número de procesadores en el sistema, entonces no todos los procesadores estarán siendo utilizados al mismo tiempo. Esto significa que el programa no estará aprovechando al máximo los recursos disponibles y podría experimentar una disminución en el rendimiento en comparación con una situación en la que el número de hilos del kernel asignados al programa sea igual o mayor que el número de procesadores.
 
 



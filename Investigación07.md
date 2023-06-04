# **INVESTIGACION #07**

            * Valentina Galeaano Castro - 2191692 *

            
## 1. ¿Considere la imagen, demuestre que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen.

  Cuando se demuestra que las cuatro condiciones necesarias para que se produzca un interbloqueo se cumplen simultaneamente se deben verificar varios aspectos ya que el interbloqueo es una condición que se presenta en los sistemas de planificación y control, donde varias tareas o procesos se bloquean entre sí, impidiendo su progreso y causando un estancamiento en el sistema.

  Las cuatro condiciones son: exclusión mutua, posesión y espera, no prelación y espera circular. Si se puede demostrar que todas estas condiciones se cumplen en un sistema, entonces se puede concluir que existe un interbloqueo potencial. Sin embargo, si alguna de ellas no se cumple, no habrá interbloqueo en el sistema. La exclusión mutua se cumple cuando los recursos compartidos no pueden ser utilizados simultáneamente por múltiples tareas. La posesión y espera se cumple cuando una tarea mantiene al menos un recurso mientras espera por otros recursos adicionales. La no prelación se cumple cuando una tarea que ha adquirido recursos no puede ser forzada a liberarlos antes de completar su ejecución. La espera circular se cumple cuando un conjunto de tareas está esperando recursos que solo pueden ser liberados por otra tarea del mismo conjunto.

## 2. Considere la imagen, enuncie una regla simple para evitar los interbloqueos en este sistema.

  Para prevenir interbloqueos en un sistema, se puede seguir una regla simple: “No retengas un recurso mientras esperas por otro y siempre solicita recursos en el mismo orden”. Esta regla se basa en el algoritmo del banquero, que se utiliza en la teoría de la concurrencia y planificación de recursos para prevenir interbloqueos al asignar y liberar recursos adecuadamente. Al seguir esta regla, se evita crear situaciones en las que varios procesos esperen indefinidamente por recursos que no pueden liberarse porque otro proceso los retiene.

 ## 3. Explique como se cumplen las condiciones básicas de interbloqueo en el problema de la cena de los filósofos.
 
  El problema de la cena de los filósofos es un problema de concurrencia que involucra a cinco filósofos sentados alrededor de una mesa con un plato de espaguetis y un tenedor entre cada uno. Los filósofos alternan entre comer y pensar, pero solo pueden comer si tienen dos tenedores. El objetivo es evitar el bloqueo mutuo (deadlock), donde todos los filósofos están esperando por un tenedor y ninguno puede comer.

  Para evitar el interbloqueo en este problema, se deben cumplir tres condiciones básicas: adquisición simultánea, liberación simultánea y orden de adquisición. Esto implica establecer un protocolo de adquisición y liberación de los tenedores que garantice que los filósofos adquieran y liberen los tenedores simultáneamente y en el mismo orden. Se pueden utilizar diferentes estrategias para implementar este protocolo, como el uso de monitores, semáforos o algoritmos de exclusión mutua.
 
 ## 4. Explique como podría evitarse los interbloqueos impidiendo que se cumpla una de las condiciones en el problema de la cena de los filósofos.
  
  Para evitar interbloqueos en el problema de la cena de los filósofos, se puede impedir que se cumpla una de las condiciones necesarias para que ocurra un interbloqueo. Una forma de hacerlo es romper la condición de espera circular. Esto se puede lograr asignando un orden de prioridad a los tenedores y estableciendo una regla para que los filósofos siempre adquieran primero el tenedor con la prioridad más baja. De esta manera, si un filósofo tiene el tenedor con la prioridad más baja y está esperando por el otro tenedor, no habrá un ciclo de espera circular ya que ningún otro filósofo podrá adquirir el tenedor con la prioridad más baja hasta que el primer filósofo lo libere.

  Otra forma de evitar interbloqueos es romper la condición de posesión y espera. Esto se puede lograr estableciendo una regla para que los filósofos solo puedan adquirir ambos tenedores al mismo tiempo. Si un filósofo no puede adquirir ambos tenedores simultáneamente, debe esperar sin retener ninguno de los tenedores. De esta manera, no habrá situaciones en las que un filósofo retenga un tenedor mientras espera por otro, lo que evita la posesión y espera y, por lo tanto, el interbloqueo.

 ## 5. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueo en lo que respecta a tiempo de ejecución adicional necesario.
 
  El esquema de espera circular y los distintos esquemas de evasión de interbloqueo son formas de prevenir interbloqueos en un sistema. Sin embargo, estos esquemas pueden requerir tiempo adicional para gestionar los recursos y evitar interbloqueos. Por ejemplo, el esquema de espera circular implica detectar y resolver ciclos de espera entre tareas o procesos, lo que puede aumentar el tiempo de ejecución del sistema. Los esquemas de evasión de interbloqueo, como el algoritmo del banquero, también pueden requerir tiempo adicional para realizar cálculos y tomar decisiones sobre la asignación y liberación de recursos. En general, el tiempo adicional necesario dependerá del tamaño y complejidad del sistema y del número y tipo de recursos involucrados.
   
 ## 6. Compare el esquema de espera circular con los distintos esquemas de evasión de interbloqueos en lo que respecta a tasa de procesamiento del sistema.
 
  El esquema de espera circular y los distintos esquemas de evasión de interbloqueo son formas de prevenir interbloqueos en un sistema. Sin embargo, estos esquemas pueden afectar la tasa de procesamiento del sistema al requerir tiempo adicional para gestionar los recursos y evitar interbloqueos. Por ejemplo, el esquema de espera circular implica detectar y resolver ciclos de espera entre tareas o procesos, lo que puede aumentar el tiempo necesario para completar las tareas y afectar la tasa de procesamiento del sistema. Los esquemas de evasión de interbloqueo, como el algoritmo del banquero, también pueden requerir tiempo adicional para realizar cálculos y tomar decisiones sobre la asignación y liberación de recursos, lo que también puede afectar la tasa de procesamiento del sistema. En general, el impacto en la tasa de procesamiento dependerá del tamaño y complejidad del sistema y del número y tipo de recursos involucrados.
 
 ## 7. Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos;cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos.
 
  Considere un sistema que tiene cuatro recursos del mismo tipo, compartidos entre tres procesos;cada proceso necesita como máximo dos recursos. Demuestre que el sistema esta libre de interbloqueos. Supongamos que cada proceso adquiere un recurso. En este caso, quedaría un recurso disponible. Uno de los procesos podría adquirir este recurso adicional y completar su ejecución, liberando sus dos recursos. Luego, otro proceso podría adquirir estos dos recursos y completar su ejecución, liberando sus dos recursos. Finalmente, el último proceso podría adquirir estos dos recursos y completar su ejecución. En este escenario, todos los procesos pueden completar su ejecución sin quedar bloqueados esperando por recursos adicionales. Por lo tanto, se puede concluir que el sistema está libre de interbloqueos.
 
 ## 8. Considere el problema de los filósofos, los palillos se colocan en el centro de la mesa y cualquier filósofo puede usar dos palillos, la solicitud de los palillos se hace de una en una.Describa una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos, dada la asignación actual de palillos a los filósofos.
 
  En el problema de los filósofos, donde los palillos están en el centro de la mesa y cualquier filósofo puede usar dos palillos, y las solicitudes se hacen de una en una, se puede establecer una regla simple para determinar si una solicitud podría ser satisfecha sin dar lugar a interbloqueos. Una posible regla sería verificar si hay al menos dos palillos disponibles antes de satisfacer una solicitud. Si no hay suficientes palillos disponibles, el filósofo que hizo la solicitud debería esperar hasta que haya suficientes palillos disponibles. Esta regla ayuda a evitar situaciones de interbloqueo en las que varios filósofos estén esperando indefinidamente por palillos que no pueden liberarse.
 
 ## 9. ¿Cual es la suposición optimista realizada en el algoritmo de detección de interbloqueos y como podría violarse esta suposición?
 
  El algoritmo de detección de interbloqueos es un método utilizado para detectar la presencia de interbloqueos en un sistema. Este algoritmo realiza una suposición optimista al asumir que todos los procesos eventualmente liberarán los recursos que están reteniendo, incluso si están esperando por otros recursos.

  Esta suposición podría ser violada en situaciones donde un proceso no libera los recursos que está reteniendo, incluso después de haber adquirido los recursos adicionales que estaba esperando. En este caso, el proceso podría retener los recursos indefinidamente, impidiendo que otros procesos los adquieran y causando un interbloqueo en el sistema.

  Es importante tener en cuenta que el algoritmo de detección de interbloqueos solo puede detectar la presencia de interbloqueos en un sistema, pero no puede prevenirlos. Para prevenir interbloqueos, se deben utilizar otros métodos, como el algoritmo del banquero o el establecimiento de reglas para la adquisición y liberación de recursos.

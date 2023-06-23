# **INVESTIGACION #09**

            * Valentina Galeano Castro - 2191692 *

            
## 1. Explique el soporte por hardware requerido para implementar la paginación bajo demanda.

  La paginación bajo demanda es una técnica de memoria virtual que se utiliza para reducir el tiempo de respuesta y aumentar la cantidad de programas en memoria. Para implementar la paginación bajo demanda se requiere un TB y un mecanismo de traducción de direcciones. También se requieren entradas de la tabla de páginas con direcciones de disco que se pueden calcular a partir del desplazamiento. Además, se necesita la capacidad de detectar un error de página. La tabla de páginas tiene la habilidad de marcar una entrada inválida a través del bit válido-invalido o por valores especiales de bits de protección.

## 2. ¿Qué es la característica de copia durante la escritura y en que circunstancias es ventajoso usar estas características?

  La característica de copia durante la escritura es una técnica de copia de seguridad que se utiliza para garantizar que los datos no se pierdan en caso de un fallo del sistema o de un error humano. Esta técnica implica la creación de una copia de los datos en un archivo temporal mientras se están escribiendo en el archivo original. Si ocurre un error durante la escritura, la copia temporal se utiliza para restaurar los datos originales.

  Esta característica es ventajosa en situaciones en las que los datos son críticos y no se pueden permitir pérdidas. Por ejemplo, en sistemas de bases de datos o sistemas de archivos críticos.

## 3. ¿Cual es el soporte de hardware requerido para implementar las características de copia durante escritura?

  La característica de copia durante la escritura es una técnica de software que se utiliza para garantizar que los datos no se pierdan en caso de un fallo del sistema o de un error humano. Por lo tanto, no se requiere hardware adicional para implementar esta característica.

## 4. Indique una situación en la que el algoritmo de sustitución de las páginas menos frecuentes utilizadas genere menos fallos de pagina que el algoritmo de sustitución de las paginas más recientemente utilizadas.

  El algoritmo de sustitución de páginas menos frecuentes utilizadas (NRU) puede generar menos fallos de página que el algoritmo de sustitución de páginas más recientemente utilizadas (LRU) en situaciones en las que las páginas menos frecuentes utilizadas son las que se necesitan con mayor frecuencia. En este caso, el algoritmo NRU mantendrá estas páginas en memoria mientras que el algoritmo LRU las eliminará.

## 5. Indique una situación en la que el algoritmo de sustitución de las páginas mas frecuentemente utilizadas genere menos fallos de página que el algoritmo de sustitución de las páginas menos recientemente utilizadas.

  El algoritmo de sustitución de páginas más frecuentemente utilizadas (MFU) es un algoritmo de reemplazo de páginas que favorece a las páginas que se han utilizado con mayor frecuencia. Por otro lado, el algoritmo de sustitución de páginas menos recientemente utilizadas (LRU) favorece a las páginas que se han utilizado menos recientemente. 

  En una situación en la que el algoritmo MFU genere menos fallos de página que el algoritmo LRU es cuando hay un conjunto de páginas que se utilizan con mucha frecuencia y otro conjunto de páginas que se utilizan con poca frecuencia. En este caso, el algoritmo MFU favorecerá a las páginas que se utilizan con mucha frecuencia y las mantendrá en memoria.

## 6. Un sistema utiliza un algoritmo de sustitución FIFO para las paginas resientes y un conjunto compartido de marcos libres compuesto por páginas recientemente utilizadas. Si el conjunto compartido de marcos libres se gestiona utilizando la política de sustitución menos recientemente utilizadas. De una respuesta a los siguientes casos:

  - Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, se puede generar espacio libre para la nueva página solicitada eliminando la página menos recientemente utilizada del conjunto compartido de marcos libres.

  - Si se produce un fallo de página y la página se encuentra en el conjunto compartido de marcos libres, la página residente se activa y se gestiona el conjunto compartido de marcos libres para hacer sitio para la página solicitada. La política de sustitución menos recientemente utilizada se utiliza para determinar qué página debe eliminarse del conjunto compartido de marcos libres.

## 7. Considere un sistema de paginación bajo demanda con las siguientes tasas de utilización:

* Instalar una CPU más rápida: Sí, esto permitiría mejorar las tasas de utilización de la CPU. Una CPU más rápida puede procesar más instrucciones por segundo, lo que significa que puede manejar más trabajo en menos tiempo.
* Instalar un disco de paginación de mayor tamaño: No necesariamente. Un disco de paginación más grande puede mejorar el rendimiento del sistema al permitir que se almacenen más páginas en el disco, pero no necesariamente mejorará las tasas de utilización de la CPU.
* Incrementar el grado de multiprogramación: Sí, esto permitiría mejorar las tasas de utilización de la CPU. El grado de multiprogramación se refiere a la cantidad de procesos que se ejecutan simultáneamente en un sistema. Al aumentar el grado de multiprogramación, se pueden ejecutar más procesos al mismo tiempo, lo que significa que la CPU se utiliza más eficientemente.
* Instalar mas memoria principal: Sí, esto permitiría mejorar las tasas de utilización de la CPU. La memoria principal es donde se almacenan los programas y los datos mientras se están ejecutando. Si hay suficiente memoria disponible, los programas pueden ejecutarse sin tener que acceder al disco duro con tanta frecuencia, lo que significa que la CPU se utiliza más eficientemente.
* Instalar un disco duro mas rápidos: No necesariamente. Un disco duro más rápido puede mejorar el rendimiento del sistema al permitir que se acceda a los datos más rápidamente, pero no necesariamente mejorará las tasas de utilización de la CPU.

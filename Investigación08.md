# **INVESTIGACION #08**

            * Valentina Galeano Castro - 2191692 *

            
## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa.

  La fragmentación interna se produce cuando se asigna más espacio del necesario para guardar un archivo o proceso. Esto sucede cuando el tamaño de la unidad de asignación es mayor que el tamaño real del archivo o proceso, lo que resulta en un desperdicio de espacio dentro de la unidad de asignación. Este espacio no utilizado no está disponible para otros archivos o procesos y puede ser causado por el uso de unidades de asignación fijas que no se ajustan al tamaño exacto de los archivos o procesos.

  Por otro lado, la fragmentación externa ocurre cuando hay suficiente espacio libre en el sistema para almacenar un archivo o proceso, pero este espacio no está contiguo. Esto significa que hay espacios libres dispersos en el sistema que no son lo suficientemente grandes para acomodar un archivo o proceso específico. Esto puede resultar en una falta de espacio para nuevos archivos o procesos, aunque el sistema en su conjunto tenga suficiente capacidad libre. La fragmentación externa puede ser causada por el proceso continuo de asignación y liberación de memoria o por la naturaleza dinámica de la creación y eliminación de archivos o procesos.

## 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

  Un editor de ensamblador permite al programador utilizar mnemotécnicos y etiquetas simbólicas en lugar de direcciones de memoria absolutas para especificar instrucciones y datos. Los mnemotécnicos y las etiquetas son conocidos como mnemotecnia simbólica y etiquetas, respectivamente. Al escribir un programa en lenguaje ensamblador, se pueden utilizar etiquetas para identificar ubicaciones específicas en el código o para hacer referencia a direcciones de memoria donde se almacenan los datos. Estas etiquetas son definidas por el programador y tienen un significado simbólico. El editor de ensamblador asigna direcciones de memoria reales a estas etiquetas y reemplaza los mnemotécnicos y las etiquetas por las direcciones correspondientes en el código de máquina generado. Este proceso se llama ensamblaje. El uso de mnemotécnicos y etiquetas en lugar de direcciones de memoria absolutas tiene varios beneficios. Facilita la legibilidad y comprensión del código fuente, ya que los mnemotécnicos y las etiquetas pueden ser más descriptivos y significativos que las direcciones numéricas. También proporciona flexibilidad al programador, ya que puede reorganizar el código o cambiar las direcciones de memoria sin tener que actualizar manualmente todas las referencias correspondientes. En resumen, el editor de ensamblador mejora la legibilidad, la flexibilidad y la mantenibilidad del código ensamblador al permitir al programador utilizar mnemotécnicos y etiquetas simbólicas en lugar de direcciones de memoria absolutas.
 
## 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

El editor de montaje pueda realizar una asignación de memoria adecuada, resolver las referencias simbólicas y generar el código de máquina final de manera correcta y eficiente, es importante que el compilador proporcione la siguiente información:

- Archivos de código fuente: El compilador debe pasar al editor de montaje los archivos de código fuente escritos en lenguaje fuente o de alto nivel que contienen las instrucciones y declaraciones de datos escritas por el programador.
- Tabla de símbolos: El compilador debe proporcionar al editor de montaje una tabla de símbolos actualizada que mapee los símbolos definidos en el código fuente, como etiquetas, variables y funciones, a las direcciones de memoria correspondientes.
- Información de tipos de datos: El compilador debe transmitir información sobre los tipos de datos utilizados en el código fuente para determinar el tamaño de las variables y la alineación de la memoria.
- Configuración de memoria: El compilador puede necesitar informar al editor de montaje sobre la configuración de la memoria del sistema objetivo, como el tamaño y la disposición de las áreas de código, datos y pila para realizar una asignación de memoria correcta.
- Opciones de optimización: Si el compilador ha realizado optimizaciones en el código, estas optimizaciones deben ser transmitidas al editor de montaje para tenerlas en cuenta al generar el código de máquina final. Al proporcionar esta información al editor de montaje, el compilador facilita el acoplamiento de memoria y contribuye al correcto funcionamiento del programa ensamblado.

## 4. En el siguiente orden, se tienen cinco particiones de memoria de 100 KB, 500 KB, 200 KB, 300 KB, y 600 KB. ¿Como situarían en memoria una serie de procesos de 212 KB, 417 KB, 112 KB y 426 KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?

Para analizar cómo se situarían los procesos en memoria utilizando los algoritmos de primer ajuste, mejor ajuste y peor ajuste, debemos considerar cómo se asignan las particiones de memoria a los procesos en cada algoritmo.
1.	Primer ajuste (First Fit):
-	El algoritmo de primer ajuste busca la primera partición de memoria lo suficientemente grande como para alojar el proceso y lo coloca allí.
-	Siguiendo el orden de las particiones de memoria, los procesos se ubicarían de la siguiente manera:
o	Proceso de 212 KB: Se asignaría a la partición de 500 KB (se utiliza 288 KB de los 500 KB disponibles).
o	Proceso de 417 KB: Se asignaría a la partición de 600 KB (se utiliza 417 KB de los 600 KB disponibles).
o	Proceso de 112 KB: Se asignaría a la partición de 100 KB (se utiliza 112 KB de los 100 KB disponibles).
o	Proceso de 426 KB: No hay una partición lo suficientemente grande para alojar este proceso, por lo tanto, se produciría fragmentación externa.
2.	Mejor ajuste (Best Fit):
-	El algoritmo de mejor ajuste busca la partición de memoria más pequeña que sea lo suficientemente grande como para alojar el proceso y lo coloca allí.
-	Siguiendo el orden de las particiones de memoria, los procesos se ubicarían de la siguiente manera:
o	Proceso de 212 KB: Se asignaría a la partición de 300 KB (se utiliza 212 KB de los 300 KB disponibles).
o	Proceso de 417 KB: Se asignaría a la partición de 500 KB (se utiliza 417 KB de los 500 KB disponibles).
o	Proceso de 112 KB: Se asignaría a la partición de 200 KB (se utiliza 112 KB de los 200 KB disponibles).
o	Proceso de 426 KB: Se asignaría a la partición de 600 KB (se utiliza 426 KB de los 600 KB disponibles).
3.	Peor ajuste (Worst Fit):
-	El algoritmo de peor ajuste busca la partición de memoria más grande que sea lo suficientemente grande como para alojar el proceso y lo coloca allí.
-	Siguiendo el orden de las particiones de memoria, los procesos se ubicarían de la siguiente manera:
o	Proceso de 212 KB: Se asignaría a la partición de 500 KB (se utiliza 212 KB de los 500 KB disponibles).
o	Proceso de 417 KB: Se asignaría a la partición de 600 KB (se utiliza 417 KB de los 600 KB disponibles).
o	Proceso de 112 KB: Se asignaría a la partición de 200 KB (se utiliza 112 KB de los 200 KB disponibles).
o	Proceso de 426 KB: Se asignaría a la partición de 500 KB (se utiliza 426 KB de los 500 KB disponibles).
En términos de eficiencia en el uso de la memoria, el algoritmo de mejor ajuste tiende a ser el más eficiente. Esto se debe a que intenta encontrar la partición más ajustada al tamaño del proceso, lo que reduce la fragmentación interna y permite aprovechar mejor la memoria disponible. Sin embargo, es importante tener en cuenta que el rendimiento de los algoritmos puede variar según el escenario y las características.

## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?
  
  Asignación contigua de memoria, segmentación pura, paginación pura.
  
  Para soportar la asignación dinámica de memoria en los esquemas mencionados, se requerirían ciertos elementos y mecanismos adicionales:
Los siguientes esquemas requieren elementos y mecanismos adicionales para soportar la asignación dinámica de memoria:

a. Paginación pura:
* Se necesitaría una estructura de datos que administre las tablas de páginas que relacionen las páginas virtuales con las páginas físicas de memoria.
* Se requeriría un algoritmo que busque páginas físicas libres para atender la solicitud de memoria y que actualice la tabla de páginas con el mapeo correspondiente.
Además, se necesitaría un mecanismo que asigne y libere páginas de forma dinámica según los procesos pidan o suelten memoria.
* Sería importante tener en cuenta la administración de la memoria virtual y los mecanismos de paginación, como la paginación en disco o la paginación sobrescrita, para resolver situaciones de escasez de páginas físicas.

b. Segmentación pura:
* Se necesitaría una estructura de datos que administre las tablas de segmentos que contengan información sobre los segmentos de memoria asignados a cada proceso.
* Se requeriría un algoritmo que busque un segmento con el tamaño suficiente para atender la solicitud de memoria y que realice la asignación correspondiente.
* Además, se necesitaría un mecanismo que asigne y libere segmentos de memoria de forma dinámica según los procesos pidan más o menos memoria.
* También sería importante tener en cuenta la protección y el manejo de permisos de acceso a los segmentos asignados.

c. Asignación contigua de memoria:

* Se necesitaría un mecanismo que administre la memoria que permita asignar y liberar bloques de memoria de forma dinámica en una región contigua.
* Se podría implementar una tabla de asignación de memoria que lleve un registro de los bloques de memoria ocupados y libres, junto con su posición y tamaño en la memoria.
* Se requeriría un algoritmo que encuentre un bloque de memoria con el tamaño suficiente para atender la solicitud y que realice la asignación correspondiente.
* También se necesitaría un mecanismo para fusionar bloques de memoria liberados adyacentes, con el fin de evitar la fragmentación interna.
* 
  Para soportar la asignación dinámica de memoria en los esquemas mencionados, se necesitarían mecanismos y estructuras de datos adicionales, algoritmos de asignación y liberación, y consideraciones específicas para cada esquema. Cada uno de estos esquemas tiene sus propios desafíos y ventajas en términos de asignación dinámica de memoria.

## 6.Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:

a.	Fragmentación externa:
*	Asignación continua de memoria: Este esquema tiende a sufrir de fragmentación externa, ya que los bloques de memoria se asignan de manera contigua y pueden quedar espacios vacíos entre ellos, lo que dificulta la asignación de bloques más grandes y puede resultar en un uso ineficiente de la memoria.
*	Segmentación pura: La segmentación pura también puede sufrir de fragmentación externa si los segmentos de memoria asignados no están contiguos. Si hay segmentos vacíos entre segmentos ocupados, se produce fragmentación externa. Sin embargo, si se utilizan técnicas como la compresión de segmentos o la reubicación de segmentos, se puede reducir la fragmentación externa.
*	Paginación pura: La paginación pura tiene menos probabilidades de sufrir fragmentación externa, ya que la memoria se divide en páginas de tamaño fijo. Las páginas pueden asignarse de forma no contigua, lo que reduce la fragmentación externa en comparación con la asignación continua y la segmentación pura.
b.	Fragmentación interna:
*	Asignación continua de memoria: Este esquema puede sufrir de fragmentación interna, ya que los bloques de memoria se asignan en unidades fijas, lo que puede resultar en el desperdicio de espacio si el tamaño del proceso es menor que el tamaño de la unidad de asignación. Esto ocasiona un uso ineficiente de la memoria.
*	Segmentación pura: La segmentación pura puede sufrir de fragmentación interna si los segmentos asignados son más grandes que los procesos que los utilizan. Si un segmento es más grande que el proceso, se produce desperdicio de memoria dentro del segmento.
*	Paginación pura: La paginación pura tiene menos probabilidades de sufrir fragmentación interna, ya que la memoria se divide en páginas de tamaño fijo y los procesos se asignan en múltiples páginas. Si el tamaño del proceso no es múltiplo del tamaño de la página, puede haber un poco de fragmentación interna, pero es menos significativa que en otros esquemas.
c.	Capacidad de compartir código:
*	Asignación continua de memoria: Este esquema puede facilitar la compartición de código, ya que los procesos pueden compartir la misma región de memoria contigua que contiene el código común.
*	Segmentación pura: La segmentación pura puede dificultar la compartición de código, ya que los segmentos asignados a diferentes procesos no son necesariamente contiguos y puede requerir un mecanismo adicional para compartir segmentos específicos.
*	Paginación pura: La paginación pura puede facilitar la compartición de código, ya que las páginas se pueden compartir entre procesos sin necesidad de que estén contiguas. Esto permite una compartición de código más eficiente y flexible.

## 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.

a. ¿Por qué?

* La protección de memoria es un mecanismo que impide que un proceso acceda a zonas de memoria que no le corresponden. Esto se hace por motivos de seguridad y estabilidad del sistema. Si un proceso accediera a la memoria de otro proceso, podría leer o modificar datos privados, provocar fallos o incluso poner en peligro la integridad del sistema.

b. ¿Como podía el OS permitir el acceso a otras zonas de memoria?

* El sistema operativo podría habilitar el acceso a otras zonas de memoria mediante el uso de mecanismos específicos como: Llamadas al sistema: El sistema operativo puede ofrecer llamadas al sistema que permitan a un proceso pedir acceso a una zona de memoria concreta de otro proceso. Estas llamadas al sistema pueden exigir autenticación y autorización para asegurar que solo se permita el acceso controlado y adecuado. Mecanismos de intercambio de datos: El sistema operativo puede ofrecer mecanismos de comunicación interprocesos, como memoria compartida o colas de mensajes, que permitan a los procesos compartir datos de forma segura y controlada.

c. ¿Por qué debería o por qué no debería?

* En lo que respecta a si el sistema operativo debería habilitar o no el acceso a otras zonas de memoria, hay consideraciones importantes a tener en cuenta: Seguridad: Habilitar el acceso no autorizado a zonas de memoria de otros procesos puede comprometer la seguridad del sistema y la privacidad de los datos. Esto podría facilitar la difusión de malware, la filtración de información confidencial o el acceso no autorizado a recursos del sistema. Estabilidad del sistema: Si los procesos pudieran acceder y modificar la memoria de otros procesos, podrían provocar errores y caídas inesperadas en el sistema. La protección de memoria asegura que los procesos se ejecuten en un entorno aislado y evita que uno afecte negativamente a otros. Diseño del sistema: El diseño de un sistema operativo con paginación se basa en el principio de que cada proceso tiene su propio espacio de direcciones virtuales privado y aislado. Alterar esta premisa requeriría cambios significativos en el diseño y en la administración de la memoria del sistema operativo, lo que podría dificultar la implementación y aumentar la posibilidad de errores y vulnerabilidades. En general, la protección de memoria en un sistema operativo con paginación es esencial para garantizar la seguridad y estabilidad del sistema. Habilitar el acceso a otras zonas de memoria debe ser cuidadosamente considerado y restringido a través de mecanismos controlados y autorizados para evitar riesgos y problemas potenciales.

## 8.Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

  La paginación y la segmentación son dos esquemas de administración de memoria que permiten convertir las direcciones virtuales en direcciones físicas. Sin embargo, la cantidad de memoria requerida por las estructuras de producción de direcciones puede variar según el esquema utilizado.

  En la paginación, el sistema operativo divide la memoria virtual en bloques del mismo tamaño llamados páginas, y la memoria física en bloques del mismo tamaño llamados marcos. Para realizar la conversión de direcciones, el sistema operativo utiliza una tabla de páginas que contiene la dirección base de cada página almacenada en los marcos del espacio de memoria física1. La cantidad de memoria requerida por la tabla de páginas depende del tamaño de las páginas y del espacio de direcciones virtuales. A menor tamaño de página, mayor número de páginas y mayor tamaño de la tabla. A mayor espacio de direcciones virtuales, mayor número de entradas en la tabla. Por lo tanto, la paginación puede requerir una gran cantidad de memoria para almacenar la tabla de páginas, lo que puede afectar al rendimiento del sistema.

  En la segmentación, el sistema operativo divide la memoria virtual en bloques de tamaño variable llamados segmentos, que pueden corresponder a unidades lógicas del programa, como funciones o datos. La memoria física también se divide en bloques de tamaño variable llamados particiones. Para realizar la conversión de direcciones, el sistema operativo utiliza una tabla de segmentos que contiene información sobre los segmentos de memoria asignados a cada proceso, como el número segmentado, el desplazamiento (límite de segmento) y los permisos2. La cantidad de memoria requerida por la tabla de segmentos depende del número y tamaño de los segmentos. A menor número y mayor tamaño de segmentos, menor tamaño de la tabla. A mayor número y menor tamaño de segmentos, mayor tamaño de la tabla. Por lo tanto, la segmentación puede requerir una menor o mayor cantidad de memoria para almacenar la tabla de segmentos, dependiendo del diseño y uso de los segmentos.

## 9. ¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?

Para esto se debe consultar la tabla de segmento y verificar que el desplazamiento, o sea la parte derecha de la dirección lógica, sea menor que la longitud del segmento correspondiente. Luego, se debe sumar el desplazamiento a la base del segmento para obtener la dirección física.

430 -> El segmento es 0 y el desplazamiento es 430. Como 430 < 600, la dirección es válida. La dirección física es 219 + 430 = 649.
10 -> El segmento es 0 y el desplazamiento es 10. Como 10 < 600, la dirección es válida. La dirección física es 219 + 10 = 229.
500 -> El segmento es 0 y el desplazamiento es 500. Como 500 < 600, la dirección es válida. La dirección física es 219 + 500 = 719.
400 -> El segmento es 0 y el desplazamiento es 400. Como 400 < 600, la dirección es válida. La dirección física es 219 + 400 = 619.
112 -> El segmento es 0 y el desplazamiento es 112. Como 112 < 600, la dirección es válida. La dirección física es 219 + 112 = 331.

Las direcciones físicas para las direcciones lógicas serían:

430 -> 649
10 -> 229
500 -> 719
400 -> 619
112 -> 331


# SOtemas 
**Trabajos de la materia Sistemas Operacionales**
---
## Investigación 02
1. ### Problemas de seguridad en entornos compartidos

- Cuando los usuarios comparten el sistema puede dar lugar a varios problemas de seguridad. Aquí hay dos problemas y sus explicaciones:

  a. **Gestión insuficiente de identidad, credenciales y acceso**: En un entorno compartido, es importante tener una gestión adecuada de la identidad, las credenciales y el acceso para asegurar que *solo los usuarios autorizados* tengan acceso a los recursos compartidos. Si esta gestión es insuficiente, puede dar lugar a violaciones de datos y otros problemas de seguridad.

  b. **Interfaces inseguras e interfaces de programación de aplicaciones (API)**: Las interfaces y las API son puntos de entrada al sistema y si no están debidamente aseguradas, pueden ser explotadas por atacantes para obtener acceso no autorizado al sistema y a los datos compartidos.

- En cuanto a si es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado, la respuesta es que depende de muchos factores. En general, un sistema dedicado puede ser más fácil de asegurar ya que hay menos usuarios y menos puntos de entrada al sistema. Sin embargo, con una _gestión adecuada de la seguridad_, es posible lograr un alto grado de seguridad en un entorno compartido también.

2. ### Gestión de recursos en diferentes tipos de máquinas
- **Sistemas embebidos**: Los sistemas embebidos suelen tener recursos limitados en términos de memoria, almacenamiento y capacidad de procesamiento. Por lo tanto, es importante gestionar eficientemente estos recursos para garantizar un rendimiento óptimo. Además, la gestión de la energía también puede ser importante en sistemas embebidos que funcionan con baterías.

- **Mainframe**: Los mainframes son sistemas grandes y potentes diseñados para manejar grandes cantidades de datos y procesamiento. En un mainframe, es importante gestionar eficientemente los recursos como la CPU, la memoria y el almacenamiento para garantizar un rendimiento óptimo y una alta disponibilidad.

- **Workstation**: Una workstation es una computadora de alta potencia diseñada para aplicaciones exigentes como el diseño gráfico, la animación y el cálculo científico. En una workstation, es importante gestionar eficientemente los recursos como la CPU, la GPU, la memoria y el almacenamiento para garantizar un rendimiento óptimo.

- **Servidor**: Un servidor es una computadora diseñada para proporcionar servicios a otros dispositivos en una red. En un servidor, es importante gestionar eficientemente los recursos como la CPU, la memoria, el almacenamiento y el ancho de banda de red para garantizar un rendimiento óptimo y una alta disponibilidad.

- **Móvil**: Los dispositivos móviles como los teléfonos inteligentes y las tabletas tienen recursos limitados en términos de memoria, almacenamiento y capacidad de procesamiento. Además, suelen funcionar con baterías, por lo que la gestión de la energía también es importante. En un dispositivo móvil, es importante gestionar eficientemente estos recursos para garantizar un rendimiento óptimo y una duración prolongada de la batería.

3. ### Casos de uso para implementar un OS para servidor y PC

Un sistema operativo (OS) es el software que administra los recursos de hardware y software de una computadora y proporciona servicios comunes para programas de computadora. Los sistemas operativos para servidores y PC tienen diferentes casos de uso y características. Aquí hay dos casos de uso para implementar un OS para servidor y PC:

  a. **Servidor web**: Un caso de uso común para implementar un OS para servidor es como un servidor web. En este caso, el servidor ejecuta un software de servidor web como Apache o Nginx y sirve páginas web a los clientes a través de Internet. El OS para servidor debe ser capaz de manejar múltiples conexiones simultáneas y proporcionar un alto rendimiento y disponibilidad.

  b. **Estación de trabajo para desarrollo de software**: Un caso de uso común para implementar un OS para PC es como una estación de trabajo para el desarrollo de software. En este caso, el PC se utiliza para escribir, compilar y probar código. El OS para PC debe ser capaz de ejecutar herramientas de desarrollo como editores de código, compiladores y depuradores, y proporcionar un entorno estable y eficiente para el desarrollo de software.
  
4. ### Comparación entre multiprocesamiento simétrico y asimétrico

- **Multiprocesamiento simétrico (SMP)**: En un sistema SMP, todos los procesadores son idénticos y tienen acceso igualitario a todos los recursos del sistema, como la memoria y los dispositivos de E/S. El sistema operativo asigna tareas a los procesadores de manera equitativa y puede reasignar tareas entre procesadores según sea necesario para equilibrar la carga de trabajo. Esto permite un alto grado de paralelismo y puede mejorar el rendimiento del sistema.

- **Multiprocesamiento asimétrico (AMP)**: En un sistema AMP, los procesadores pueden tener diferentes capacidades y pueden estar especializados para realizar diferentes tareas. Cada procesador tiene su propia cola de tareas y el sistema operativo asigna tareas a los procesadores según su especialización. Esto permite una mayor flexibilidad en la asignación de tareas, pero puede requerir una mayor coordinación entre los procesadores.

5. ### Requisitos para unir dos máquinas en un cluster y proporcionar un servicio de alta disponibilidad (HA)

Un cluster es un grupo de computadoras que trabajan juntas para proporcionar un servicio de alta disponibilidad (HA). Para que dos máquinas se unan en un cluster y proporcionen un servicio de HA, deben cumplir con ciertos requisitos. Aquí hay una lista de los requisitos para que dos máquinas se unan en un cluster y proporcionen un servicio de HA:

  1. **Hardware compatible**: Las dos máquinas deben tener hardware compatible para que puedan trabajar juntas en un cluster. Esto incluye tener procesadores, memoria y dispositivos de almacenamiento compatibles.

  2. **Conectividad de red**: Las dos máquinas deben estar conectadas a través de una red de alta velocidad para que puedan comunicarse entre sí y coordinar su trabajo. Esto puede lograrse mediante una conexión de red dedicada o mediante una red de área local (LAN) o una red de área amplia (WAN).

  3. **Software de clustering**: Las dos máquinas deben ejecutar software de clustering compatible para que puedan trabajar juntas en un cluster. El software de clustering se encarga de coordinar el trabajo entre las máquinas y garantizar que el servicio siga funcionando incluso si una de las máquinas falla.

  4. **Configuración adecuada**: Las dos máquinas deben estar configuradas adecuadamente para trabajar juntas en un cluster. Esto incluye configurar el software de clustering y asegurarse de que todas las aplicaciones y servicios estén configurados para funcionar en un entorno de cluster.

  5. **Pruebas y monitoreo**: Es importante probar y monitorear el cluster para asegurarse de que está funcionando correctamente y proporcionando el servicio de HA deseado. Esto incluye realizar pruebas regulares para verificar la disponibilidad del servicio y monitorear el rendimiento del cluster para detectar posibles problemas.
  
6. ### Comparación entre excepción e interrupción

Una excepción y una interrupción son dos eventos que pueden ocurrir durante la ejecución de un programa en una computadora. Aunque ambos eventos pueden interrumpir la ejecución normal del programa, hay algunas diferencias importantes entre ellos. Aquí hay una comparación de las diferencias entre una excepción y una interrupción:

- **Excepción**: Una excepción es un evento que ocurre cuando un programa realiza una operación ilegal o inválida. Por ejemplo, si un programa intenta dividir un número por cero o acceder a una dirección de memoria no válida, se generará una excepción. Cuando ocurre una excepción, el sistema operativo interrumpe la ejecución del programa y transfiere el control a un manejador de excepciones, que puede tomar medidas para manejar la excepción.

- **Interrupción**: Una interrupción es un evento que ocurre cuando un dispositivo externo, como un teclado o un ratón, necesita la atención del procesador. Cuando ocurre una interrupción, el procesador detiene la ejecución del programa actual y transfiere el control a un manejador de interrupciones, que puede tomar medidas para atender la solicitud del dispositivo externo.

7. ### Acceso directo a memoria (DMA)

El acceso directo a memoria (DMA) es una técnica utilizada en dispositivos de entrada/salida (I/O) para permitirles transferir datos directamente a la memoria sin la intervención de la CPU. Esto puede mejorar el rendimiento del sistema al evitar el uso innecesario de la CPU para transferir datos entre el dispositivo y la memoria. Aquí hay una explicación de cómo interactúa la CPU con el dispositivo para coordinar la transferencia y cómo sabe la CPU que las operaciones de memoria se han completado:

- **Coordinación de la transferencia**: Cuando un dispositivo de I/O necesita transferir datos a la memoria utilizando DMA, envía una señal de solicitud de DMA al controlador de DMA. El controlador de DMA luego solicita acceso al bus del sistema para poder transferir los datos directamente a la memoria. Una vez que se le concede acceso al bus, el controlador de DMA coordina la transferencia de datos entre el dispositivo y la memoria sin la intervención de la CPU.

- **Notificación de finalización**: Una vez que se completa la transferencia de datos, el controlador de DMA envía una señal de interrupción a la CPU para notificarle que las operaciones de memoria se han completado. La CPU puede entonces reanudar su trabajo y acceder a los datos transferidos en la memoria.

8. ### Utilidad de la caché

La caché es una memoria de alta velocidad que se utiliza para almacenar temporalmente datos que se utilizan con frecuencia. La caché es útil por varias razones y puede resolver algunos problemas, pero también puede causar algunos problemas. Aquí hay dos razones por las que la caché es útil y los problemas que resuelve y causa:

- **Mejora del rendimiento**: Una de las principales razones por las que la caché es útil es porque puede mejorar el rendimiento del sistema al reducir el tiempo que tarda la CPU en acceder a los datos. Cuando la CPU necesita acceder a un dato, primero verifica si está en la caché. Si el dato está en la caché, la CPU puede acceder a él rápidamente sin tener que esperar a que se recupere de la memoria principal, lo que puede ser más lento. Esto puede mejorar significativamente el rendimiento del sistema.

- **Reducción de la latencia de memoria**: Otra razón por las que la caché es útil es porque puede reducir la latencia de memoria al almacenar temporalmente los datos más utilizados cerca de la CPU. Esto reduce el tiempo que tarda la CPU en acceder a los datos y puede mejorar el rendimiento del sistema.

Sin embargo, la caché también puede causar algunos problemas. Uno de los principales problemas es la coherencia de caché, que se refiere a garantizar que los datos en la caché sean consistentes con los datos en la memoria principal. Si los datos en la caché no se actualizan correctamente cuando cambian los datos en la memoria principal, puede dar lugar a errores y problemas de rendimiento.

9. ### Coherencia del caché en diferentes entornos

Se refiere al problema de garantizar que los datos almacenados en diferentes cachés sean consistentes entre sí y con los datos en la memoria principal.

- **Sistema distribuido**: En un sistema distribuido, varios nodos pueden tener copias locales de los mismos datos en sus cachés. Si un nodo modifica sus datos locales, es necesario propagar esta modificación a los demás nodos para mantener la coherencia de los datos. Por ejemplo, supongamos que tenemos un sistema distribuido con dos nodos, A y B, que tienen copias locales del mismo dato X en sus cachés. Si el nodo A modifica el valor de X en su caché local, debe notificar al nodo B para que también pueda actualizar su copia local de X. Si esto no se hace correctamente, el nodo B puede seguir trabajando con una copia desactualizada de X, lo que puede dar lugar a errores y problemas de rendimiento.

- **Sistema multiprocesador**: En un sistema multiprocesador, varios procesadores pueden tener copias locales de los mismos datos en sus cachés. Si un procesador modifica sus datos locales, es necesario propagar esta modificación a los demás procesadores para mantener la coherencia de los datos. Por ejemplo, supongamos que tenemos un sistema multiprocesador con dos procesadores, P1 y P2, que tienen copias locales del mismo dato X en sus cachés. Si el procesador P1 modifica el valor de X en su caché local, debe notificar al procesador P2 para que también pueda actualizar su copia local de X. Si esto no se hace correctamente, el procesador P2 puede seguir trabajando con una copia desactualizada de X, lo que puede dar lugar a errores y problemas de rendimiento.

- **Sistema de un solo procesador**: En un sistema de un solo procesador con una jerarquía de caché multinivel (por ejemplo, L1, L2 y L3), puede haber varias copias del mismo dato en diferentes niveles de la jerarquía de caché. Si se modifica una copia del dato en un nivel superior (por ejemplo, L1), es necesario propagar esta modificación a los niveles inferiores (por ejemplo, L2 y L3) para mantener la coherencia de los datos. Por ejemplo, supongamos que tenemos un sistema de un solo procesador con una jerarquía de caché L1/L2/L3 y que el dato X está presente en todos los niveles. Si se modifica el valor de X en la caché L1, es necesario actualizar también las copias de X en las cachés L2 y L3. Si esto no se hace correctamente, las cachés L2 y L3 pueden seguir trabajando con copias desactualizadas de X, lo que puede dar lugar a errores y problemas de rendimiento.


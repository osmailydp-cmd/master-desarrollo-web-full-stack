# Práctica — Instalación y configuración de VirtualBox Guest Additions en Windows 10 Pro

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase 04:** Instalación únicamente de Linux o Windows 10  
**Herramienta:** Oracle VirtualBox  
**Máquina virtual:** `PC-Windows10-Osmaily`  
**Sistema anfitrión:** Windows 11 Home  
**Sistema invitado:** Windows 10 Pro (64 bits)  
**Versión de Windows:** 22H2  
**Versión de Guest Additions:** 7.2.22

---

## 1. Objetivo de la práctica

Aprender a instalar y configurar **Oracle VirtualBox Guest Additions** dentro de una máquina virtual con Windows 10 Pro.

Durante esta práctica realizaremos los siguientes procedimientos:

1. Comprender qué son Guest Additions y para qué sirven.
2. Insertar la imagen ISO de Guest Additions.
3. Localizar y ejecutar el instalador.
4. Revisar los componentes de instalación.
5. Completar la instalación y reiniciar Windows.
6. Resolver un bloqueo durante el primer reinicio.
7. Repetir la instalación para completar correctamente el proceso.
8. Diagnosticar problemas con el ratón.
9. Diagnosticar problemas de redimensionamiento de pantalla.
10. Verificar el controlador gráfico instalado.
11. Revisar la configuración de hardware gráfico de VirtualBox.
12. Revisar la resolución de pantalla de Windows 10.
13. Comprobar el redimensionamiento automático.
14. Comprobar el modo pantalla completa.
15. Verificar la integración del ratón entre el sistema anfitrión y el invitado.

**Alcance:** esta práctica termina cuando las funciones principales de integración gráfica y del ratón se encuentran funcionando correctamente.

La creación de una instantánea de seguridad se documentará en la **Práctica 05**.

---

## 2. Requisitos previos

Antes de comenzar debemos haber completado las siguientes prácticas:

- Práctica 01 — Obtención de la ISO de Windows 10.
- Práctica 02 — Creación y configuración de la máquina virtual.
- Práctica 03 — Instalación y configuración de Windows 10 Pro.

### 2.1. Máquina virtual utilizada

| Parámetro | Configuración |
|---|---|
| Nombre | PC-Windows10-Osmaily |
| Sistema operativo invitado | Windows 10 Pro |
| Arquitectura | 64 bits |
| Versión | 22H2 |
| Memoria RAM | 4096 MB |
| Procesadores virtuales | 2 |
| Disco virtual | VDI de 64 GB |
| Firmware | BIOS tradicional |
| Usuario local | Osmaily |

### 2.2. Comprobar que Windows 10 funciona

Antes de instalar Guest Additions:

1. Abrir **Oracle VirtualBox Administrador** en Windows 11.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Hacer clic en **Iniciar**.
4. Esperar a que Windows 10 arranque.
5. Iniciar sesión con el usuario local.
6. Comprobar que aparece el escritorio.

Si Windows no inicia correctamente, debemos resolver ese problema antes de instalar los complementos.

---

## 3. ¿Qué son VirtualBox Guest Additions?

**VirtualBox Guest Additions**, llamados en español *Complementos del invitado*, son un conjunto de controladores y herramientas que se instalan dentro del sistema operativo de una máquina virtual.

Su finalidad es mejorar la integración entre el sistema anfitrión y el sistema invitado.

En esta práctica:

| Concepto | Sistema |
|---|---|
| Host o anfitrión | Windows 11 Home |
| Guest o invitado | Windows 10 Pro |
| Software de virtualización | Oracle VirtualBox |
| Complementos | Guest Additions 7.2.22 |

### 3.1. ¿Para qué sirven?

Entre sus principales funcionalidades se encuentran:

**Integración del ratón:** permite mover el puntero entre la máquina virtual y el escritorio anfitrión sin tener que liberarlo manualmente cada vez.

**Redimensionamiento automático de pantalla:** permite que la resolución del sistema invitado se adapte a los cambios de tamaño de la ventana de VirtualBox.

**Modo pantalla completa:** facilita utilizar el sistema invitado ocupando toda la pantalla.

**Controladores gráficos:** proporcionan mejor compatibilidad gráfica entre VirtualBox y Windows.

**Portapapeles compartido:** permite intercambiar texto y otros datos compatibles entre anfitrión e invitado cuando la función está habilitada.

**Carpetas compartidas:** permiten acceder a determinadas carpetas del anfitrión desde el sistema invitado cuando se configuran.

### 3.2. ¿Dónde se instalan?

Guest Additions se instala **dentro de Windows 10 Pro**, porque Windows 10 es nuestro sistema invitado.

No estamos instalando nuevamente Oracle VirtualBox en Windows 11.

### 3.3. ¿Guest Additions es lo mismo que la ISO de Windows?

No.

La ISO de Windows 10 contiene el instalador del sistema operativo.

La ISO de Guest Additions contiene herramientas y controladores para mejorar el funcionamiento del sistema invitado después de instalarlo.

Son archivos con propósitos diferentes.

---

## 4. Instalación de VirtualBox Guest Additions

Este capítulo comprende todo el procedimiento de instalación, desde la inserción del CD virtual hasta el reinicio de Windows 10.

### 4.1. Iniciar la máquina virtual

**Paso 1 — Abrir Oracle VirtualBox**

1. Desde Windows 11, abrir **Oracle VirtualBox Administrador**.
2. Localizar la máquina virtual `PC-Windows10-Osmaily`.
3. Seleccionarla.

**Paso 2 — Iniciar Windows 10**

1. Hacer clic en **Iniciar**.
2. Esperar a que Windows 10 termine de arrancar.
3. Iniciar sesión con el usuario local `Osmaily`.

**Resultado:** aparece el escritorio de Windows 10.

---

### 4.2. Insertar la imagen de CD de Guest Additions

Con Windows 10 encendido:

**Paso 1 — Abrir el menú Dispositivos**

1. Ir a la barra superior de la ventana de VirtualBox.
2. Buscar el menú **Dispositivos**.
3. Hacer clic para desplegarlo.

**Paso 2 — Insertar la imagen**

Seleccionar la opción:

**Insertar imagen de CD de los complementos del invitado...**

VirtualBox conectará una imagen ISO con los archivos de Guest Additions a una unidad óptica de la máquina virtual.

### ¿Qué significa insertar la imagen de CD?

Es equivalente a introducir un CD o DVD en una computadora física.

La diferencia es que VirtualBox utiliza un archivo ISO en lugar de un disco físico.

### ¿Se instala Guest Additions automáticamente?

No necesariamente.

Insertar la imagen permite que Windows acceda a los archivos, pero la instalación puede requerir ejecutar manualmente el programa correspondiente.

En nuestra práctica, ejecutamos el instalador desde el Explorador de archivos.

---

### 4.3. Localizar la unidad de CD virtual

**Paso 1 — Abrir el Explorador de archivos**

Dentro de Windows 10:

1. Presionar `Windows + E`.
2. Esperar a que se abra el **Explorador de archivos**.

**Paso 2 — Acceder a Este equipo**

1. En el panel izquierdo, localizar **Este equipo**.
2. Hacer clic.
3. Revisar los dispositivos y unidades disponibles.

**Paso 3 — Localizar Guest Additions**

Buscar:

**Unidad de CD (D:) VirtualBox Guest Additions**

Esta fue la unidad que apareció durante nuestra instalación.

**Paso 4 — Abrir la unidad**

1. Hacer doble clic sobre la unidad de CD.
2. Esperar a que se muestren los archivos contenidos en la imagen.

### ¿Por qué aparece la letra D:?

Windows asigna letras a las unidades de almacenamiento.

En nuestra máquina virtual, la unidad de CD de Guest Additions recibió la letra `D:`.

En otras instalaciones podría tener una letra diferente.

---

### 4.4. Ejecutar el instalador de Windows

Dentro de la unidad de CD:

**Paso 1 — Buscar el instalador**

Localizar:

`VBoxWindowsAdditions.exe`

**Paso 2 — Ejecutar el archivo**

1. Hacer doble clic sobre `VBoxWindowsAdditions.exe`.
2. Si Windows solicita autorización para realizar cambios, revisar que se trata del instalador de VirtualBox.
3. Aceptar la ejecución.

**Paso 3 — Esperar el asistente**

Se abrió:

**Oracle VirtualBox Guest Additions 7.2.22 Setup**

### ¿Qué significa el archivo .exe?

La extensión `.exe` identifica un archivo ejecutable de Windows.

En este caso contiene el programa encargado de instalar los complementos.

---

### 4.5. Revisar las pantallas del asistente

El asistente de Guest Additions presenta varias pantallas que debemos completar.

#### Paso 1 — Pantalla inicial

1. Comprobar que se abrió el asistente **Oracle VirtualBox Guest Additions 7.2.22 Setup**.
2. Leer la información inicial.
3. Avanzar con el botón correspondiente.

#### Paso 2 — Opciones de instalación

El asistente permite revisar los componentes que se instalarán.

En nuestra instalación apareció una pantalla llamada:

**Choose Components**

#### Paso 3 — Revisar los componentes

Las opciones mostradas fueron:

| Componente | Estado observado |
|---|---|
| VirtualBox Guest Additions | Marcado |
| Direct3D Support (Experimental) | Mostrado sin posibilidad de modificación |
| Start menu entries | Marcado |

Mantuvimos las opciones predeterminadas.

### ¿Qué significa cada componente?

**VirtualBox Guest Additions:** instala los componentes y controladores principales.

**Direct3D Support (Experimental):** está relacionado con compatibilidad gráfica y determinadas funciones 3D. En nuestra pantalla no modificamos esta opción.

**Start menu entries:** agrega entradas de acceso al menú Inicio de Windows.

#### Paso 4 — Iniciar la instalación

1. Comprobar que los componentes están seleccionados.
2. Continuar hasta encontrar el botón **Install**.
3. Hacer clic en **Install**.

#### Paso 5 — Esperar a que termine

Durante esta etapa el instalador copia archivos, instala controladores y configura los componentes necesarios.

Debemos permitir que el proceso termine.

---

### 4.6. Finalizar la instalación y reiniciar Windows

Al concluir apareció la pantalla de finalización del asistente.

Se ofrecían las opciones:

- **Reboot now**
- **I want to manually reboot later**

### ¿Qué significan?

**Reboot now:** reiniciar Windows inmediatamente.

**I want to manually reboot later:** finalizar el asistente y reiniciar Windows posteriormente.

### ¿Qué seleccionamos?

Marcamos:

**Reboot now**

Después:

1. Hicimos clic en **Finish**.
2. Windows 10 comenzó a reiniciarse.

Este fue el final de nuestro primer intento de instalación, pero apareció una incidencia durante el reinicio.

---

## 5. Primera incidencia — Windows quedó bloqueado en Reiniciando

### 5.1. Problema detectado

Después de finalizar el instalador de Guest Additions y seleccionar **Reboot now**, Windows 10 quedó mostrando una pantalla azul con el mensaje:

**Reiniciando**

El sistema permaneció en esa pantalla sin completar el reinicio.

### 5.2. ¿Por qué puede ocurrir?

Un bloqueo durante un reinicio puede tener distintas causas, como problemas de controladores, servicios del sistema o procesos pendientes de finalización.

En nuestra práctica no identificamos una causa exacta.

Por tanto, no podemos afirmar que Guest Additions estuviera dañado ni que un controlador específico provocara el bloqueo.

Lo que sí comprobamos fue que Windows no terminaba de reiniciarse.

### 5.3. Solución aplicada — Reiniciar la máquina virtual

Utilizamos la opción de reinicio de Oracle VirtualBox.

**Paso 1 — Abrir el menú Máquina**

1. Ir a la barra superior de la ventana de VirtualBox.
2. Hacer clic en **Máquina**.

**Paso 2 — Seleccionar Reiniciar**

1. Buscar la opción **Reiniciar**.
2. Hacer clic.
3. Confirmar la operación si aparece una advertencia.

VirtualBox reinició la máquina virtual.

**Paso 3 — Esperar el arranque**

1. Esperar a que vuelva a iniciarse Windows 10.
2. Iniciar sesión con el usuario local.
3. Comprobar que aparece el escritorio.

### 5.4. ¿Qué hace Máquina → Reiniciar?

Es una operación de reinicio de la máquina virtual, similar al reinicio forzado de una computadora física.

No equivale necesariamente a un reinicio normal iniciado desde el menú Inicio de Windows.

### Advertencia importante

Un reinicio forzado puede provocar pérdida de información o corrupción de archivos si existen operaciones de escritura pendientes.

Por eso debe reservarse para situaciones en las que el sistema no responde y no podemos apagarlo normalmente.

### 5.5. Resultado obtenido

Después de utilizar **Máquina → Reiniciar**, Windows 10 volvió a iniciar correctamente.

Sin embargo, las funciones de integración todavía no estaban funcionando como esperábamos.

---

## 6. Segunda ejecución del instalador de Guest Additions

Como el primer reinicio había quedado bloqueado, decidimos ejecutar nuevamente el instalador.

**Importante:** repetir una instalación no es un requisito habitual de Guest Additions. En nuestra práctica fue una medida tomada después de la incidencia observada.

### 6.1. Abrir nuevamente el CD virtual

**Paso 1**

Presionar:

`Windows + E`

**Paso 2**

Seleccionar:

**Este equipo**

**Paso 3**

Abrir:

**Unidad de CD (D:) VirtualBox Guest Additions**

La imagen seguía conectada a la máquina virtual.

### 6.2. Volver a ejecutar el instalador

1. Buscar `VBoxWindowsAdditions.exe`.
2. Hacer doble clic.
3. Esperar a que se abra **Oracle VirtualBox Guest Additions 7.2.22 Setup**.
4. Avanzar por el asistente.
5. Mantener los componentes correspondientes.
6. Pulsar **Install**.
7. Esperar a que el instalador complete sus operaciones.

### 6.3. Reiniciar Windows nuevamente

Al finalizar:

1. Seleccionar **Reboot now**.
2. Hacer clic en **Finish**.
3. Esperar a que Windows se reinicie.

### 6.4. Resultado de la segunda instalación

En este segundo intento, Windows 10 reinició correctamente.

Pudimos volver a iniciar sesión y acceder al escritorio.

**Resultado confirmado:** el instalador completó su ejecución y el reinicio posterior fue satisfactorio.

No obstante, comprobamos después que todavía existían problemas de integración del ratón y de la pantalla.

---

## 7. Segunda incidencia — Problemas con el ratón

### 7.1. Problema inicial

Al utilizar Windows 10 dentro de VirtualBox observamos problemas con el puntero.

En un momento, el cursor no se visualizaba correctamente dentro de la máquina virtual.

Después, aunque pudimos utilizarlo, seguía quedando capturado dentro de Windows 10.

Para volver a controlar Windows 11 necesitábamos utilizar la tecla anfitrión.

### 7.2. ¿Qué es la tecla anfitrión?

VirtualBox utiliza una tecla especial llamada **tecla anfitrión**, también conocida como *Host Key*.

Sirve para liberar determinados dispositivos de entrada y ejecutar combinaciones especiales.

En nuestra instalación estaba configurada como:

**CTRL DERECHA**

### 7.3. Solución temporal — Liberar el ratón

Cuando el puntero estaba capturado:

1. Presionar la tecla `Ctrl` ubicada a la derecha del teclado.
2. Comprobar que VirtualBox libera el puntero.
3. Mover el ratón hacia Windows 11.

Esto nos permitía regresar al sistema anfitrión.

Sin embargo, no era la integración automática que queríamos conseguir.

### 7.4. Revisar Integración del ratón

Con Windows 10 encendido:

1. Ir a la barra superior de VirtualBox.
2. Hacer clic en **Entrada**.
3. Buscar **Integración del ratón**.
4. Revisar el estado de la opción.
5. Cambiar su estado para comprobar el comportamiento del puntero.

### Resultado inicial

Después de modificar esta opción conseguimos recuperar el funcionamiento del puntero dentro de Windows 10.

No obstante, todavía necesitábamos utilizar **Ctrl derecha** para liberarlo en determinadas situaciones.

Por tanto, el problema no estaba completamente resuelto.

---

## 8. Tercera incidencia — La pantalla no se adaptaba a la ventana de VirtualBox

### 8.1. Problema detectado

Al maximizar la ventana de Oracle VirtualBox, Windows 10 no ocupaba correctamente todo el espacio disponible.

El escritorio permanecía con un tamaño menor y aparecían zonas vacías alrededor.

### 8.2. Diferencia entre maximizar y cambiar la resolución

Es importante comprender que son operaciones diferentes.

**Maximizar una ventana:** aumenta el tamaño exterior de la ventana de Oracle VirtualBox en Windows 11.

**Cambiar la resolución del invitado:** modifica las dimensiones del escritorio que muestra Windows 10.

Para aprovechar toda la ventana, ambos tamaños deben coordinarse correctamente.

### 8.3. Revisar Autorredimensionar pantalla del invitado

Con Windows 10 encendido:

1. Ir a la barra superior de VirtualBox.
2. Hacer clic en **Ver**.
3. Buscar la opción **Autorredimensionar pantalla del invitado**.
4. Comprobar si está habilitada.
5. Activarla cuando corresponda.
6. Cambiar el tamaño de la ventana para probar el resultado.

### ¿Para qué sirve esta opción?

Permite que VirtualBox solicite al sistema invitado adaptar su resolución cuando cambia el tamaño del área disponible.

Generalmente requiere que los componentes gráficos de Guest Additions estén funcionando correctamente.

### Resultado observado

Al principio, activar o modificar esta opción no solucionó el problema.

Observamos que el tamaño de la ventana y el tamaño del escritorio no se coordinaban como esperábamos.

Por eso continuamos con las comprobaciones del controlador gráfico.

---

## 9. Verificar el controlador gráfico de Windows 10

Queríamos comprobar si Windows estaba utilizando el controlador de VirtualBox.

### 9.1. Abrir Administrador de dispositivos

**Paso 1 — Abrir Ejecutar**

Dentro de Windows 10, presionar:

`Windows + R`

**Paso 2 — Introducir el comando**

Escribir:

`devmgmt.msc`

**Paso 3 — Ejecutar**

Presionar **Enter**.

Se abrirá:

**Administrador de dispositivos**

### ¿Qué es Administrador de dispositivos?

Es una herramienta de Windows que permite visualizar y administrar los dispositivos de hardware detectados por el sistema operativo.

Muestra categorías como:

- Adaptadores de pantalla.
- Adaptadores de red.
- Controladoras de almacenamiento.
- Dispositivos de interfaz humana.
- Teclados.
- Mouse y otros dispositivos señaladores.

### 9.2. Buscar el adaptador gráfico

1. Localizar **Adaptadores de pantalla**.
2. Hacer clic en la flecha de la izquierda.
3. Revisar el nombre del dispositivo mostrado.

### 9.3. Resultado observado

En nuestra máquina apareció:

**VirtualBox Graphics Adapter (WDDM)**

No observamos un icono amarillo de advertencia junto al adaptador.

### 9.4. ¿Qué significa WDDM?

**WDDM** significa *Windows Display Driver Model*.

Es un modelo de controladores gráficos utilizado por Windows.

El dispositivo **VirtualBox Graphics Adapter (WDDM)** corresponde al adaptador gráfico virtual reconocido por Windows.

### 9.5. ¿Qué comprobamos?

| Comprobación | Resultado |
|---|---|
| Categoría Adaptadores de pantalla | Disponible |
| VirtualBox Graphics Adapter (WDDM) | Detectado |
| Advertencia amarilla visible | No |
| Adaptador de pantalla básico de Microsoft como dispositivo activo | No aparecía |

### Conclusión de esta comprobación

Windows reconocía el controlador gráfico de VirtualBox.

Esto nos permitió descartar, como primera explicación, que únicamente faltara instalar el controlador gráfico.

**Importante:** reconocer el dispositivo no garantiza por sí solo que todas las funciones de integración estén activas.

---

## 10. Revisar la configuración gráfica de la máquina virtual

El siguiente paso fue comprobar los parámetros gráficos configurados en VirtualBox.

Para esta revisión utilizamos la configuración específica de `PC-Windows10-Osmaily`.

### 10.1. Apagar Windows 10 correctamente

**Paso 1**

Dentro de Windows 10, abrir:

**Inicio**

**Paso 2**

Seleccionar:

**Inicio/Apagado**

**Paso 3**

Hacer clic en:

**Apagar**

**Paso 4**

Esperar a que la ventana de la máquina virtual se cierre y aparezca como **Apagada** en Oracle VirtualBox Administrador.

### ¿Por qué la apagamos?

Porque determinadas opciones de hardware virtual solo pueden modificarse cuando la máquina está apagada.

Aunque íbamos principalmente a revisar los valores, realizamos la comprobación con la máquina detenida.

---

### 10.2. Abrir la configuración específica de la máquina virtual

Desde Windows 11:

1. Abrir **Oracle VirtualBox Administrador**.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Hacer clic en **Configuración**.
4. Buscar **Pantalla** en el menú izquierdo.
5. Seleccionar **Pantalla**.

### Importante — Diferencia con Preferencias generales

Durante el diagnóstico abrimos inicialmente:

**Archivo → Preferencias → Pantalla**

Esa ruta corresponde a las preferencias generales de VirtualBox.

En esa pantalla vimos:

| Parámetro | Valor |
|---|---|
| Maximum Guest Screen Size | Automático |
| Scale Factor | 100 % |
| Font Scaling | 100 % |

Esos valores eran adecuados, pero no eran los parámetros gráficos específicos que necesitábamos revisar.

La ruta correcta para revisar el hardware de nuestra máquina fue:

**Oracle VirtualBox Administrador → PC-Windows10-Osmaily → Configuración → Pantalla**

---

### 10.3. Revisar la pestaña Pantalla

Dentro de **Configuración → Pantalla**, abrimos la pestaña **Pantalla**.

Los campos observados fueron:

| Campo (nombre exacto) | Valor |
|---|---|
| Video Memory | 128 MB |
| Number of Virtual Monitors | 1 |
| Scale Factor | 100 % |
| Graphics Controller | VBoxSVGA |
| 3D Acceleration | Desmarcado |

#### Video Memory

Define la cantidad de memoria de vídeo disponible para el adaptador gráfico virtual.

En nuestra práctica:

**128 MB**

#### Number of Virtual Monitors

Indica cuántos monitores virtuales tendrá disponibles el sistema invitado.

En nuestra práctica:

**1**

#### Scale Factor

Controla la escala con la que VirtualBox muestra el contenido de la máquina virtual.

En nuestra práctica:

**100 %**

#### Graphics Controller

Define el controlador gráfico virtual que presenta VirtualBox al sistema operativo.

En nuestra práctica:

**VBoxSVGA**

#### 3D Acceleration

Permite habilitar determinadas funcionalidades de aceleración gráfica 3D.

En nuestra práctica:

**Desmarcado**

### Resultado

Comprobamos que los valores coincidían con los que buscábamos para nuestra instalación.

**No modificamos ninguno de ellos.**

---

### 10.4. Revisar la pestaña Pantalla remota

En la misma sección de configuración:

1. Seleccionar **Pantalla remota**.
2. Localizar **Habilitar servidor**.
3. Revisar su estado.

En nuestra instalación estaba:

**Desmarcado**

### ¿Para qué sirve Pantalla remota?

Permite habilitar un servicio de visualización remota compatible para acceder a la máquina virtual desde otro equipo.

No necesitábamos esa función para esta práctica.

Por eso la dejamos desactivada.

---

### 10.5. Revisar la pestaña Grabación

1. Seleccionar **Grabación**.
2. Localizar **Habilitar grabación**.
3. Revisar su estado.

En nuestra instalación estaba:

**Desmarcado**

### ¿Para qué sirve Grabación?

Permite grabar la actividad de la pantalla de la máquina virtual en un archivo de vídeo.

No necesitábamos utilizarla para resolver el problema.

No realizamos cambios.

---

## 11. Revisar la configuración del dispositivo apuntador

También comprobamos qué dispositivo de entrada utilizaba la máquina virtual.

### 11.1. Abrir Sistema

Con la máquina virtual apagada:

1. Abrir **Oracle VirtualBox Administrador**.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Hacer clic en **Configuración**.
4. Seleccionar **Sistema**.

### 11.2. Abrir Placa base

1. Dentro de **Sistema**, seleccionar **Placa base**.
2. Buscar el campo:

**Pointing Device**

### 11.3. Revisar el valor

Encontramos:

**Tableta USB**

### ¿Qué significa Tableta USB?

Es un tipo de dispositivo apuntador virtual.

Puede proporcionar información de posición absoluta del puntero, lo que ayuda a que el movimiento del ratón sea más natural dentro de determinados sistemas invitados.

### Resultado

La configuración estaba establecida en **Tableta USB**.

No fue necesario modificarla.

---

## 12. Revisar la resolución de pantalla dentro de Windows 10

Como los valores del controlador gráfico y del hardware virtual parecían correctos, pasamos a revisar la resolución utilizada por Windows.

### 12.1. Iniciar nuevamente la máquina virtual

1. Cerrar la ventana de configuración de VirtualBox.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Hacer clic en **Iniciar**.
4. Esperar a que Windows 10 arranque.
5. Iniciar sesión.

### 12.2. Abrir Configuración de pantalla

Dentro de Windows 10:

**Paso 1**

Hacer clic derecho en una zona vacía del escritorio.

**Paso 2**

Seleccionar:

**Configuración de pantalla**

También podemos utilizar esta ruta:

**Inicio → Configuración → Sistema → Pantalla**

### 12.3. Buscar Escala y distribución

Dentro de la sección **Pantalla**:

1. Buscar **Escala y distribución**.
2. Localizar **Resolución de pantalla**.
3. Abrir la lista desplegable.

### 12.4. Revisar las resoluciones disponibles

Durante nuestra comprobación aparecieron las siguientes resoluciones:

| Resolución | Estado |
|---|---|
| 1280 × 720 | Disponible |
| 1152 × 864 | Disponible |
| 1024 × 768 | Disponible |
| 991 × 861 | Seleccionada inicialmente |
| 800 × 600 | Disponible |

### 12.5. ¿Qué observamos?

La resolución seleccionada inicialmente era:

**991 × 861**

Se trataba de una resolución poco habitual.

Esto nos indicó que Windows estaba utilizando unas dimensiones particulares para el escritorio.

Sin embargo, no podíamos concluir únicamente a partir de ese valor que la resolución fuera la causa definitiva del problema.

---

## 13. Cambiar manualmente la resolución de Windows 10

Decidimos probar una resolución disponible más convencional.

### 13.1. Seleccionar 1280 × 720

Dentro de:

**Configuración → Sistema → Pantalla → Escala y distribución → Resolución de pantalla**

Realizar lo siguiente:

1. Hacer clic en **Resolución de pantalla**.
2. Revisar las opciones disponibles.
3. Seleccionar:

**1280 × 720**

4. Esperar a que Windows aplique el cambio.

### 13.2. Confirmar la nueva resolución

Si Windows presenta una ventana solicitando confirmación:

1. Revisar que el escritorio se ve correctamente.
2. Seleccionar **Conservar cambios**.

### 13.3. ¿Qué significa 1280 × 720?

Es una resolución de pantalla que utiliza:

- 1280 píxeles horizontales.
- 720 píxeles verticales.

Tiene una relación de aspecto de 16:9.

### 13.4. Resultado

Windows aplicó correctamente la resolución **1280 × 720**.

Este fue el último cambio manual realizado antes de confirmar que el redimensionamiento automático funcionaba.

---

## 14. Comprobación final — Redimensionamiento automático

Después del cambio de resolución, repetimos las pruebas de visualización.

### 14.1. Restaurar la ventana de VirtualBox

1. Mantener Windows 10 encendido.
2. Si VirtualBox está maximizado, hacer clic en **Restaurar**.
3. Comprobar que la ventana reduce su tamaño.

### 14.2. Maximizar VirtualBox

1. Localizar el botón **Maximizar** de la ventana de VirtualBox.
2. Hacer clic.
3. Observar cómo se presenta el escritorio de Windows 10.

### 14.3. Repetir la prueba

1. Restaurar la ventana.
2. Maximizarla nuevamente.
3. Comprobar si Windows modifica automáticamente el tamaño del escritorio.

### Resultado confirmado

Después de los ajustes realizados, **Windows 10 comenzó a adaptarse correctamente al tamaño de la ventana de VirtualBox**.

Ya no permanecía fijo en una resolución pequeña con grandes zonas vacías alrededor.

### ¿Qué aprendimos?

El sistema invitado y VirtualBox deben coordinar la resolución para aprovechar correctamente el área de visualización disponible.

En nuestra práctica esta función terminó funcionando después de instalar Guest Additions, completar las verificaciones y cambiar manualmente la resolución.

---

## 15. Comprobación final — Modo pantalla completa

También comprobamos el modo de pantalla completa de VirtualBox.

### 15.1. Activar el modo pantalla completa

Con Windows 10 encendido:

1. Ir a la barra superior de VirtualBox.
2. Hacer clic en **Ver**.
3. Seleccionar **Modo pantalla completa**.
4. Confirmar cualquier mensaje informativo si aparece.

### 15.2. Revisar el resultado

Comprobar que:

- Windows 10 ocupa toda la pantalla.
- El escritorio se visualiza correctamente.
- No aparecen áreas vacías que impidan aprovechar la pantalla.

### 15.3. Regresar al modo ventana

Podemos utilizar:

`Ctrl derecha + F`

La tecla `Ctrl derecha` es nuestra tecla anfitrión.

La combinación permite alternar el modo pantalla completa.

### Resultado confirmado

**Windows 10 se visualizó correctamente ocupando toda la pantalla física.**

---

## 16. Comprobación final — Integración del ratón

Después de resolver el problema de pantalla, volvimos a probar el movimiento del puntero.

### 16.1. Entrar en la máquina virtual

1. Mantener Windows 10 encendido.
2. Mover el puntero hacia el escritorio de Windows 10.
3. Comprobar que podemos utilizarlo normalmente.

### 16.2. Salir hacia Windows 11

1. Mover el puntero hacia uno de los bordes de la ventana.
2. Continuar desplazándolo fuera de VirtualBox.
3. Comprobar que podemos utilizar el escritorio de Windows 11.

### 16.3. Volver a entrar en Windows 10

1. Mover el puntero nuevamente hacia la ventana de VirtualBox.
2. Comprobar que Windows 10 recibe correctamente el movimiento.
3. Repetir la operación.

### 16.4. ¿Qué queríamos comprobar?

Que el ratón pudiera entrar y salir de la máquina virtual sin quedar capturado permanentemente.

### Resultado confirmado

**El ratón comenzó a entrar y salir libremente entre Windows 10 y Windows 11.**

Ya no necesitábamos presionar continuamente **Ctrl derecha** para liberarlo durante el uso normal.

---

## 17. ¿Qué solucionó finalmente el problema?

Esta pregunta es importante porque durante el diagnóstico realizamos varias acciones.

### Acciones efectuadas

1. Instalamos Guest Additions 7.2.22.
2. Reiniciamos la máquina después de un bloqueo.
3. Ejecutamos nuevamente el instalador.
4. Completamos un reinicio normal.
5. Revisamos la integración del ratón.
6. Comprobamos el controlador gráfico WDDM.
7. Revisamos la configuración gráfica de VirtualBox.
8. Confirmamos el uso de Tableta USB.
9. Revisamos las resoluciones de Windows 10.
10. Cambiamos manualmente la resolución de 991 × 861 a 1280 × 720.
11. Comprobamos nuevamente el redimensionamiento y el ratón.

### Conclusión del diagnóstico

No podemos afirmar que una sola de esas acciones resolviera todos los problemas.

Lo que sí comprobamos es que **después de completar la secuencia, las funciones comenzaron a trabajar correctamente**.

El cambio de resolución a **1280 × 720** fue el último ajuste realizado antes de confirmar el resultado.

**Aprendizaje:** al solucionar problemas técnicos debemos distinguir entre una acción que realizamos y una causa que realmente demostramos.

---

## 18. Resumen cronológico de las incidencias y soluciones.

| N.º | Acción o comprobación | Resultado |
|---|---|---|
| 1 | Iniciar Windows 10 Pro | Escritorio disponible |
| 2 | Dispositivos → Insertar imagen de CD de los complementos del invitado... | ISO conectada |
| 3 | Abrir Este equipo → Unidad de CD (D:) VirtualBox Guest Additions | Archivos visibles |
| 4 | Ejecutar VBoxWindowsAdditions.exe | Instalador iniciado |
| 5 | Revisar Choose Components | Opciones predeterminadas conservadas |
| 6 | Pulsar Install | Primera instalación ejecutada |
| 7 | Seleccionar Reboot now y Finish | Windows quedó en Reiniciando |
| 8 | Utilizar Máquina → Reiniciar | Reinicio forzado |
| 9 | Volver a ejecutar VBoxWindowsAdditions.exe | Segunda instalación ejecutada |
| 10 | Seleccionar Reboot now | Windows reinició correctamente |
| 11 | Revisar Entrada → Integración del ratón | Integración todavía problemática |
| 12 | Revisar Ver → Autorredimensionar pantalla del invitado | Pantalla todavía no se adaptaba |
| 13 | Ejecutar devmgmt.msc | Administrador de dispositivos abierto |
| 14 | Revisar Adaptadores de pantalla | VirtualBox Graphics Adapter (WDDM) detectado |
| 15 | Apagar Windows 10 | Máquina detenida |
| 16 | Abrir Configuración → Pantalla de VirtualBox | Valores gráficos comprobados |
| 17 | Revisar Graphics Controller | VBoxSVGA |
| 18 | Revisar Video Memory | 128 MB |
| 19 | Revisar 3D Acceleration | Desmarcado |
| 20 | Revisar Sistema → Placa base → Pointing Device | Tableta USB |
| 21 | Iniciar Windows 10 nuevamente | Arranque correcto |
| 22 | Abrir Configuración → Sistema → Pantalla | Resoluciones disponibles |
| 23 | Identificar resolución inicial | 991 × 861 |
| 24 | Seleccionar resolución 1280 × 720 | Cambio aplicado |
| 25 | Restaurar y maximizar VirtualBox | Ajuste automático funcionando |
| 26 | Ver → Modo pantalla completa | Pantalla completa funcionando |
| 27 | Mover el ratón entre Windows 10 y Windows 11 | Integración funcionando |

---

## 19. Resumen final de configuración

### 19.1. Configuración gráfica

| Campo | Valor |
|---|---|
| Video Memory | 128 MB |
| Number of Virtual Monitors | 1 |
| Scale Factor | 100 % |
| Graphics Controller | VBoxSVGA |
| 3D Acceleration | Desmarcado |

### 19.2. Dispositivo apuntador

| Campo | Valor |
|---|---|
| Pointing Device | Tableta USB |

### 19.3. Controlador gráfico de Windows

| Elemento | Resultado |
|---|---|
| Adaptadores de pantalla | VirtualBox Graphics Adapter (WDDM) |

### 19.4. Resolución de pantalla

| Elemento | Resultado |
|---|---|
| Resolución inicial observada | 991 × 861 |
| Resolución seleccionada para la prueba | 1280 × 720 |
| Ajuste automático después de la prueba | Funcional |

### 19.5. Funciones de integración

| Función | Resultado |
|---|---|
| Guest Additions instalado | Sí |
| Reinicio posterior | Correcto |
| Redimensionamiento automático | Funciona |
| Modo pantalla completa | Funciona |
| Integración del ratón | Funciona |
| Liberación manual con Ctrl derecha | Ya no necesaria en el uso normal |

---

## 20. Principales aprendizajes

### 20.1. Guest Additions mejora la integración del sistema invitado

Proporciona controladores y herramientas que facilitan utilizar Windows 10 dentro de VirtualBox.

### 20.2. Insertar una ISO no significa instalar su contenido

Primero debemos conectar la imagen y después ejecutar el instalador correspondiente.

### 20.3. Los complementos se instalan dentro del sistema invitado

Aunque VirtualBox se ejecuta en Windows 11, Guest Additions se instala dentro de Windows 10.

### 20.4. Reiniciar forma parte de la instalación de controladores

Es posible que algunos controladores y servicios no comiencen a funcionar completamente hasta después del reinicio.

### 20.5. Un reinicio forzado debe utilizarse con precaución

Puede ayudar cuando la máquina no responde, pero tiene riesgos.

### 20.6. La tecla anfitrión permite recuperar el control

En nuestra instalación es **Ctrl derecha**.

### 20.7. Maximizar una ventana no equivale a cambiar la resolución

VirtualBox puede ocupar toda la pantalla del anfitrión mientras el invitado conserva una resolución inferior.

### 20.8. Administrador de dispositivos permite revisar controladores

El comando `devmgmt.msc` nos permitió verificar que Windows reconocía **VirtualBox Graphics Adapter (WDDM)**.

### 20.9. Configuración y Preferencias son apartados distintos

**Archivo → Preferencias** controla opciones generales de VirtualBox.

**Seleccionar máquina → Configuración** permite revisar los parámetros de una máquina virtual específica.

### 20.10. La resolución también se configura dentro de Windows

No todas las opciones de pantalla se encuentran en VirtualBox.

El sistema invitado dispone de sus propios controles de resolución.

### 20.11. Una incidencia puede requerir varias comprobaciones

No debemos modificar parámetros al azar.

Es preferible revisar el controlador, la configuración gráfica y la resolución, y probar los cambios.

### 20.12. Debemos verificar el resultado final

Que un instalador termine sin errores no garantiza que todas las funciones estén trabajando como esperamos.

En esta práctica comprobamos cada funcionalidad directamente.

---

## 21. Resultado final de la práctica

La instalación de **Oracle VirtualBox Guest Additions 7.2.22** quedó completada y las funciones principales de integración se verificaron correctamente.

### Resultados obtenidos

- Windows 10 Pro inicia normalmente.
- El controlador gráfico de VirtualBox es reconocido.
- La ventana de la máquina virtual puede maximizarse y restaurarse.
- Windows 10 adapta correctamente su escritorio.
- El modo pantalla completa funciona.
- El ratón entra y sale libremente entre Windows 10 y Windows 11.

**Estado de la práctica: completada.**

### Siguiente práctica

[Práctica — Creación de una instantánea de seguridad](03-instantanea-seguridad.md)

En la siguiente práctica aprenderemos:

- Qué es una instantánea en VirtualBox.
- Para qué sirve.
- Cuándo conviene crearla.
- Cómo apagar correctamente la máquina virtual.
- Cómo abrir la sección de instantáneas.
- Cómo guardar el estado de una instalación.
- Cómo comprobar que la instantánea existe.
- Qué precauciones debemos tener al restaurarla.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

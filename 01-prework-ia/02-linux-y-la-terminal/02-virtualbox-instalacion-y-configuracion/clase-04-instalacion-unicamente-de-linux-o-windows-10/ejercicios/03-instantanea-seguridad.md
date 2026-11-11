# Práctica — Creación y restauración de una instantánea de seguridad en Oracle VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox — Instalación y configuración  
**Herramienta:** Oracle VirtualBox 7.2  
**Máquina virtual:** `PC-Windows10-Osmaily`  
**Sistema anfitrión:** Windows 11 Home  
**Sistema invitado:** Windows 10 Pro (64 bits)  
**Versión de Windows:** 22H2  
**Fecha de la práctica de restauración:** 11/11/2026  
**Estado:** Completada y verificada

---

## 1. Objetivo de la práctica

Aprender a crear, administrar y restaurar una **instantánea (Snapshot)** de una máquina virtual en Oracle VirtualBox.

El propósito es conservar un punto de recuperación de Windows 10 Pro después de haber completado su instalación y configuración, para poder regresar a ese estado si realizamos cambios que afecten al sistema.

Durante esta práctica aprenderemos a:

1. Comprender qué es una instantánea y para qué sirve.
2. Diferenciar una instantánea de una copia de seguridad.
3. Identificar cuándo conviene crear una instantánea.
4. Preparar Windows 10 antes de guardar su estado.
5. Crear una instantánea desde Oracle VirtualBox Administrador.
6. Comprobar que la instantánea se creó correctamente.
7. Identificar dónde almacena VirtualBox los archivos de las instantáneas.
8. Crear un cambio de prueba después de guardar una instantánea.
9. Restaurar la máquina virtual a un estado anterior.
10. Comprobar que la restauración realmente funcionó.
11. Comprender cómo administrar y eliminar instantáneas.

**Resultado obtenido:** creamos una instantánea, modificamos Windows 10 creando una carpeta llamada `prueba` y posteriormente restauramos el estado anterior. Al iniciar nuevamente Windows, comprobamos que la carpeta había desaparecido.

---

## 2. Requisitos previos

Antes de realizar esta práctica, habíamos completado la instalación de Windows 10 Pro y la configuración de VirtualBox Guest Additions.

### 2.1. Máquina virtual utilizada

| Parámetro | Configuración |
|---|---|
| Nombre | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 Pro |
| Arquitectura | 64 bits |
| Versión | 22H2 |
| Compilación | 19045.3803 |
| Memoria RAM | 4096 MB |
| Procesadores virtuales | 2 |
| Disco duro virtual | VDI dinámico de 64 GB |
| Firmware | BIOS tradicional |
| Usuario local | Osmaily |
| Guest Additions | 7.2.22 |

### 2.2. Estado de Windows antes de la instantánea

Las prácticas anteriores permitieron completar y verificar:

- Instalación de Windows 10 Pro.
- Creación de la cuenta local.
- Configuración regional y de teclado.
- Verificación de la edición y versión de Windows.
- Instalación de Guest Additions 7.2.22.
- Reconocimiento de `VirtualBox Graphics Adapter (WDDM)`.
- Funcionamiento del redimensionamiento automático de pantalla.
- Funcionamiento del modo pantalla completa.
- Integración del ratón entre Windows 10 y Windows 11.

Por tanto, disponíamos de una instalación estable que convenía conservar.

---

## 3. ¿Qué es una instantánea en VirtualBox?

Una **instantánea**, también llamada *Snapshot*, permite guardar un punto de recuperación del estado de una máquina virtual.

Posteriormente podemos restaurar ese punto para regresar a la configuración y al contenido que existían cuando se creó.

### 3.1. Ejemplo práctico

Imaginemos que acabamos de instalar Windows 10 Pro y todo funciona correctamente.

Creamos una instantánea.

Después realizamos cambios como:

- Instalar programas.
- Crear carpetas y documentos.
- Modificar configuraciones.
- Instalar controladores.
- Probar nuevas herramientas.

Si necesitamos regresar a la instalación anterior, podemos restaurar la instantánea.

Los cambios realizados después de crearla en los discos virtuales normales pueden descartarse al restaurar.

### 3.2. ¿Qué conserva una instantánea?

Dependiendo del estado de la máquina, una instantánea conserva información relacionada con:

**Configuración de hardware virtual**

- Memoria asignada.
- Procesadores virtuales.
- Dispositivos.
- Opciones de configuración de la máquina.

**Estado de los discos virtuales normales**

- Archivos del sistema operativo.
- Programas instalados.
- Configuraciones guardadas.
- Archivos y carpetas almacenados.

**Estado de ejecución**

Si una instantánea se crea mientras la máquina está funcionando, VirtualBox puede guardar también su estado de memoria.

En nuestra práctica creamos un punto de recuperación con Windows apagado normalmente.

### 3.3. ¿Qué significa restaurar una instantánea?

Significa regresar al estado que tenía la máquina virtual cuando se guardó ese punto de recuperación.

Por ejemplo:

| Momento | Estado de la máquina |
|---|---|
| Estado inicial | Windows 10 instalado y configurado |
| Creación de instantánea | Guardamos ese estado |
| Cambios posteriores | Creamos una carpeta llamada `prueba` |
| Restauración | Recuperamos el estado inicial |
| Verificación | La carpeta `prueba` ya no existe |

Este fue precisamente el ejercicio que realizamos.

---

## 4. Diferencia entre instantánea y copia de seguridad

Aunque ambas sirven para recuperar información, **una instantánea no equivale a una copia de seguridad independiente**.

### 4.1. Instantánea

Una instantánea permite regresar a un estado anterior de la misma máquina virtual.

Generalmente depende de los archivos originales y de archivos diferenciales utilizados por VirtualBox.

### 4.2. Copia de seguridad

Una copia de seguridad consiste en conservar datos o archivos de la máquina virtual en otra ubicación.

Por ejemplo, podemos guardar una copia de la máquina en un disco externo.

Esto permite protegerla frente a la pérdida o daño del almacenamiento original.

### 4.3. Comparación

| Característica | Instantánea | Copia de seguridad independiente |
|---|---|---|
| Recuperar un estado anterior | Sí | Sí, si contiene ese estado |
| Deshacer cambios de una práctica | Sí | Sí, mediante recuperación |
| Depende de archivos de la máquina original | Generalmente sí | No necesariamente |
| Protege ante la pérdida del disco E: | No, si está almacenada allí | Sí, si está en otro dispositivo |
| Útil antes de realizar pruebas | Sí | También |
| Sustituye una estrategia de respaldo | No | Puede formar parte de ella |

### Aprendizaje

**Las instantáneas son puntos de recuperación, pero no sustituyen una copia de seguridad independiente.**

Si perdemos todos los archivos de la máquina virtual, también podemos perder sus instantáneas.

---

## 5. ¿Cuándo conviene crear una instantánea?

Es recomendable crear una instantánea cuando tenemos un sistema estable y queremos conservarlo antes de realizar cambios importantes.

Por ejemplo:

- Después de instalar un sistema operativo.
- Después de configurar correctamente sus controladores.
- Antes de instalar programas nuevos.
- Antes de modificar servicios del sistema.
- Antes de cambiar configuraciones de red.
- Antes de realizar pruebas con permisos de administrador.
- Antes de ejecutar procedimientos que puedan alterar Windows.

### 5.1. ¿Por qué la creamos después de Guest Additions?

Porque ya habíamos comprobado que:

1. Windows 10 iniciaba correctamente.
2. Guest Additions estaba instalado.
3. El ratón funcionaba sin quedar capturado.
4. El escritorio se adaptaba al maximizar VirtualBox.
5. El modo pantalla completa funcionaba.

Esto nos permitió conservar un estado estable para futuras prácticas.

---

## 6. Preparar la máquina virtual antes de crear la instantánea

Antes de crear nuestro punto de recuperación, debemos comprobar el funcionamiento de Windows y apagarlo correctamente.

### 6.1. Iniciar Windows 10

**Paso 1 — Abrir VirtualBox**

1. Desde Windows 11, abrir **Oracle VirtualBox Administrador**.
2. Localizar la máquina `PC-Windows10-Osmaily`.
3. Seleccionarla.

**Paso 2 — Iniciar la máquina**

1. Hacer clic en **Iniciar**.
2. Esperar a que Windows 10 arranque.
3. Iniciar sesión con el usuario local `Osmaily`.

### 6.2. Comprobar el funcionamiento del sistema

Una vez dentro de Windows 10:

1. Comprobar que aparece el escritorio.
2. Abrir el menú **Inicio**.
3. Abrir el Explorador de archivos.
4. Verificar que el ratón funciona.
5. Comprobar que Windows responde correctamente.

### 6.3. Guardar los archivos abiertos

Antes de apagar el sistema:

1. Revisar las aplicaciones abiertas.
2. Guardar los documentos pendientes.
3. Cerrar los programas que ya no necesitamos.

### 6.4. Apagar Windows correctamente

**Paso 1**

Abrir el menú **Inicio**.

**Paso 2**

Seleccionar **Inicio/Apagado**.

**Paso 3**

Hacer clic en **Apagar**.

**Paso 4**

Esperar a que Windows termine de cerrarse.

**Paso 5**

Regresar a **Oracle VirtualBox Administrador** y comprobar que la máquina aparece como:

**Apagada**

### ¿Por qué apagamos Windows?

Aunque VirtualBox permite crear instantáneas con la máquina encendida, para esta práctica preferimos conservar un estado de disco después de un apagado normal.

De esta manera, al restaurar la instantánea, Windows podrá arrancar nuevamente desde ese estado.

---

## 7. Crear una instantánea en Oracle VirtualBox

Este capítulo contiene el procedimiento principal para guardar el estado de la máquina virtual.

### 7.1. Seleccionar la máquina virtual

Desde Windows 11:

1. Abrir **Oracle VirtualBox Administrador**.
2. Buscar `PC-Windows10-Osmaily`.
3. Hacer clic sobre el nombre de la máquina.
4. Comprobar que está seleccionada.
5. Verificar que aparece con estado **Apagada**.

### 7.2. Abrir la sección Instantáneas

**Paso 1**

En la ventana principal de VirtualBox, localizar la pestaña:

**Instantáneas**

**Paso 2**

Hacer clic en **Instantáneas**.

**Paso 3**

Observar el árbol de estados de la máquina virtual.

### 7.3. Identificar Estado actual

Cuando una máquina todavía no tiene instantáneas guardadas, VirtualBox puede mostrar:

**Estado actual**

Este elemento representa la situación presente de la máquina virtual.

**Importante:** Estado actual no significa que exista una instantánea guardada.

### 7.4. Iniciar la creación de la instantánea

1. Permanecer en la sección **Instantáneas**.
2. Seleccionar **Estado actual**, si corresponde.
3. Buscar la acción **Tomar** en la barra de herramientas.
4. Hacer clic.

Según la versión y disposición de la interfaz, también se puede acceder desde el menú contextual del estado actual.

### 7.5. Introducir el nombre de la instantánea

VirtualBox muestra una ventana donde podemos indicar el nombre.

Para nuestra práctica propusimos utilizar:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

Este nombre describe el estado que queremos conservar.

### ¿Por qué debemos utilizar nombres descriptivos?

Porque en el futuro podemos crear varias instantáneas.

Un nombre descriptivo nos ayuda a identificar qué configuración y programas tenía Windows cuando guardamos ese estado.

### 7.6. Introducir una descripción

VirtualBox permite agregar una descripción para documentar el punto de recuperación.

Una descripción adecuada para nuestra práctica sería:

> Windows 10 Pro 22H2 instalado y configurado. Usuario local creado. Guest Additions 7.2.22 instalado. Controlador gráfico WDDM verificado. Redimensionamiento automático de pantalla, modo pantalla completa e integración del ratón funcionando correctamente. Estado previo a nuevas prácticas.

**Nota:** el texto anterior representa una descripción recomendada. No conservamos una captura que permita verificar el contenido exacto introducido en el campo durante la creación.

### 7.7. Confirmar la creación

1. Revisar el nombre.
2. Revisar la descripción.
3. Comprobar que estamos trabajando con `PC-Windows10-Osmaily`.
4. Hacer clic en **Aceptar**.
5. Permitir que VirtualBox termine la operación.

### Resultado

La instantánea quedó creada y posteriormente pudimos utilizarla para restaurar Windows 10.

Esto quedó confirmado mediante la prueba de restauración.

---

## 8. Comprobar que la instantánea existe

Una vez creada, debemos verificar que está disponible en Oracle VirtualBox Administrador.

### 8.1. Abrir Instantáneas

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Acceder a **Instantáneas**.

### 8.2. Revisar el árbol de instantáneas

Debería aparecer el punto de recuperación guardado y un elemento correspondiente al estado actual.

En nuestra práctica utilizamos la instantánea creada después de instalar y configurar Windows 10 Pro y Guest Additions.

### 8.3. Diferencia entre la instantánea guardada y Estado actual

**Instantánea guardada**

Representa el punto de recuperación que decidimos conservar.

**Estado actual**

Representa la situación presente de la máquina virtual.

Después de realizar modificaciones, VirtualBox puede mostrar:

**Estado actual (modificado)**

Este elemento continúa representando el estado desde el que utilizamos normalmente la máquina virtual.

### 8.4. ¿Por qué no debemos confundirlos?

Durante nuestra práctica, al seleccionar la instantánea histórica, el botón **Iniciar** aparecía deshabilitado.

Sin embargo, cuando seleccionábamos **Estado actual (modificado)**, el botón **Iniciar** estaba disponible.

**Aprendizaje:** para iniciar normalmente la máquina virtual desde el administrador, seleccionamos el estado actual, no la instantánea histórica.

### 8.5. Comprobación adicional desde Windows 11

También comprobamos la existencia de archivos asociados a la instantánea en el almacenamiento del equipo anfitrión.

**Procedimiento:**

1. Abrir el Explorador de archivos de Windows 11.
2. Seleccionar **Este equipo**.
3. Abrir la unidad **Datos (E:)**.
4. Entrar en **VirtualBox**.
5. Abrir `PC-Windows10-Osmaily`.
6. Entrar en **Snapshots**.

**Ruta comprobada:**

`E:\VirtualBox\PC-Windows10-Osmaily\Snapshots`

En esa carpeta encontramos un archivo identificado mediante un nombre interno generado por VirtualBox.

### ¿Qué significa Snapshots?

**Snapshots** es la palabra en inglés para **Instantáneas**.

La carpeta almacena archivos internos asociados a los estados guardados de la máquina virtual.

### Advertencia

**No debemos abrir, modificar, mover ni eliminar manualmente los archivos de la carpeta Snapshots.**

Para administrar las instantáneas debemos utilizar **Oracle VirtualBox Administrador → Instantáneas**.

---

## 9. Prueba práctica — Crear un cambio después de la instantánea

Para comprobar que la restauración realmente recupera un estado anterior, realizamos un ejercicio sencillo.

El objetivo era crear un cambio visible y después comprobar si desaparecía al restaurar.

### 9.1. Iniciar Windows 10

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Iniciar la máquina virtual.
4. Esperar a que Windows arranque.
5. Iniciar sesión.

### 9.2. Crear una carpeta de prueba

Dentro de Windows 10:

1. Ir al escritorio.
2. Hacer clic derecho sobre una zona vacía.
3. Seleccionar **Nuevo**.
4. Hacer clic en **Carpeta**.
5. Escribir el nombre:

`prueba`

6. Presionar **Enter**.

### 9.3. Comprobar que la carpeta existe

Revisamos el escritorio y confirmamos que la carpeta `prueba` aparecía.

Esta carpeta fue creada **después de guardar la instantánea**.

### 9.4. ¿Por qué creamos esta carpeta?

Porque necesitábamos una modificación sencilla que permitiera comprobar si VirtualBox restauraba correctamente el estado anterior.

La carpeta funcionó como evidencia del cambio realizado después de la instantánea.

### 9.5. Resultado de esta etapa

**Carpeta `prueba` creada correctamente en el escritorio de Windows 10.**

---

## 10. Apagar Windows antes de restaurar

Después de crear la carpeta de prueba, apagamos la máquina virtual normalmente.

### 10.1. Abrir las opciones de energía

1. Dentro de Windows 10, hacer clic en **Inicio**.
2. Seleccionar **Inicio/Apagado**.

### 10.2. Apagar Windows

1. Hacer clic en **Apagar**.
2. Esperar a que Windows termine el procedimiento.
3. Comprobar que la máquina virtual queda apagada.

### ¿Por qué es importante este paso?

Queríamos realizar la restauración con la máquina detenida.

Además, antes de recuperar un estado anterior conviene cerrar correctamente el sistema y conservar fuera de la máquina cualquier información importante que no deseamos perder.

---

## 11. Restaurar la instantánea en Oracle VirtualBox

Este fue el procedimiento que utilizamos para recuperar el estado de Windows 10 anterior a la creación de la carpeta `prueba`.

### 11.1. Abrir Oracle VirtualBox Administrador

Desde Windows 11:

1. Abrir **Oracle VirtualBox Administrador**.
2. Localizar `PC-Windows10-Osmaily`.
3. Seleccionarla.
4. Comprobar que se encuentra apagada.

### 11.2. Abrir la sección Instantáneas

1. Buscar la pestaña **Instantáneas**.
2. Hacer clic.
3. Esperar a que aparezca el árbol de instantáneas.

### 11.3. Seleccionar el punto de recuperación

En el árbol:

1. Localizar la instantánea que guardamos antes de crear la carpeta `prueba`.
2. Hacer clic sobre su nombre.
3. Revisar que corresponde al estado que deseamos recuperar.

**Importante:** debemos seleccionar la instantánea guardada, no **Estado actual (modificado)**.

### 11.4. Iniciar la restauración

1. Buscar el botón **Restaurar**.
2. Hacer clic.
3. Leer el mensaje de confirmación.
4. Confirmar la operación.

En nuestra práctica apareció un mensaje que confirmamos para continuar.

### 11.5. ¿Qué ocurre al restaurar?

VirtualBox recupera el estado correspondiente a la instantánea seleccionada.

Los cambios realizados después de crearla pueden perderse si no los guardamos por separado.

En nuestro caso, queríamos descartar intencionalmente la carpeta `prueba`.

### 11.6. ¿Cuánto tardó la restauración?

En nuestra prueba, el proceso fue muy rápido.

No observamos una barra de progreso ni un porcentaje de avance.

### ¿Significa que no funcionó?

No necesariamente.

La restauración de una máquina virtual apagada puede completarse rápidamente, especialmente cuando no tiene muchos cambios posteriores.

Sin embargo, **la rapidez de la operación no demuestra por sí sola que la restauración haya terminado correctamente**.

Por eso realizamos una comprobación posterior iniciando Windows 10.

### 11.7. Comprobar el estado después de restaurar

Después de confirmar la restauración:

1. Permanecer en **Oracle VirtualBox Administrador → Instantáneas**.
2. Seleccionar **Estado actual (modificado)**.
3. Comprobar que el botón **Iniciar** está habilitado.

Durante la práctica observamos que el botón **Iniciar** se deshabilitaba cuando seleccionábamos la instantánea histórica y se habilitaba cuando seleccionábamos **Estado actual (modificado)**.

Esto es normal en esa vista del Administrador.

### 11.8. Iniciar Windows 10

1. Seleccionar **Estado actual (modificado)**.
2. Hacer clic en **Iniciar**.
3. Esperar a que Windows 10 arranque.
4. Iniciar sesión con el usuario local.

### 11.9. Verificar la carpeta de prueba

Cuando apareció el escritorio:

1. Revisamos el lugar donde habíamos creado la carpeta `prueba`.
2. Comprobamos si todavía existía.
3. Observamos que la carpeta ya no aparecía.

### Resultado confirmado

**La carpeta `prueba` había desaparecido del escritorio.**

Esto confirmó que la máquina virtual había recuperado correctamente el estado anterior a la creación de esa carpeta.

---

## 12. Resultado de la prueba de restauración

La prueba consistió en modificar el sistema después de crear la instantánea y recuperar posteriormente el estado inicial.

| N.º | Acción realizada | Resultado |
|---|---|---|
| 1 | Crear la instantánea de Windows 10 Pro | Completado |
| 2 | Iniciar Windows después de crearla | Correcto |
| 3 | Crear la carpeta `prueba` en el escritorio | Completado |
| 4 | Apagar Windows 10 | Completado |
| 5 | Abrir Oracle VirtualBox Administrador | Correcto |
| 6 | Seleccionar la instantánea guardada | Correcto |
| 7 | Hacer clic en Restaurar | Completado |
| 8 | Confirmar el mensaje de restauración | Completado |
| 9 | Seleccionar Estado actual (modificado) | Correcto |
| 10 | Iniciar Windows 10 | Correcto |
| 11 | Revisar el escritorio | La carpeta `prueba` desapareció |

### Conclusión de la prueba

**La restauración fue exitosa.**

Comprobamos que una instantánea permite recuperar un estado anterior y descartar los cambios realizados posteriormente.

También aprendimos que la comprobación definitiva no consiste solamente en pulsar **Restaurar**, sino en iniciar nuevamente la máquina y verificar que recuperamos el estado esperado.

---

## 13. ¿Qué ocurre con los archivos después de crear una instantánea?

Para comprender el funcionamiento de VirtualBox, debemos conocer el concepto de imágenes diferenciales.

### 13.1. Estado inicial

Antes de crear una instantánea, la máquina virtual utiliza su disco VDI para almacenar Windows y sus archivos.

### 13.2. Creación de la instantánea

Cuando creamos una instantánea, VirtualBox conserva una referencia al estado del disco.

Los cambios posteriores de los discos virtuales normales se gestionan mediante imágenes diferenciales.

### 13.3. ¿Qué es una imagen diferencial?

Es un archivo que registra modificaciones realizadas respecto a un estado anterior.

Esto permite conservar distintos puntos de recuperación sin duplicar necesariamente todo el contenido del disco cada vez.

### 13.4. ¿Por qué es importante?

Porque estos archivos:

- Pueden aumentar de tamaño.
- Consumen espacio en el equipo anfitrión.
- Forman parte de la estructura de almacenamiento de la máquina.
- Pueden depender de otros archivos.

**Nunca debemos eliminarlos manualmente desde el Explorador de archivos.**

---

## 14. Dónde almacena VirtualBox las instantáneas

Durante nuestra práctica comprobamos la ubicación real de los archivos de instantáneas.

### 14.1. Carpeta principal de la máquina virtual

La máquina se encuentra en:

`E:\VirtualBox\PC-Windows10-Osmaily`

### 14.2. Carpeta Snapshots

La ubicación comprobada fue:

`E:\VirtualBox\PC-Windows10-Osmaily\Snapshots`

### 14.3. Cómo acceder a la carpeta

Desde Windows 11:

1. Abrir el Explorador de archivos.
2. Seleccionar **Este equipo**.
3. Abrir **Datos (E:)**.
4. Entrar en **VirtualBox**.
5. Seleccionar **PC-Windows10-Osmaily**.
6. Abrir **Snapshots**.

### 14.4. ¿Qué encontramos?

Observamos un archivo con un nombre identificador generado internamente por VirtualBox.

Estos identificadores permiten que VirtualBox administre archivos relacionados con los estados guardados.

### 14.5. ¿Debemos trabajar directamente en esa carpeta?

No.

La carpeta **Snapshots** sirve para almacenar archivos.

La pestaña **Instantáneas** de Oracle VirtualBox Administrador sirve para administrar los puntos de recuperación.

### Diferencia importante

| Elemento | Función |
|---|---|
| Carpeta Snapshots | Almacena archivos internos |
| Pestaña Instantáneas | Administra los puntos de recuperación |
| Estado actual | Representa el estado presente de la máquina |
| Restaurar | Recupera una instantánea guardada |

---

## 15. Registro de nuestra práctica

Después de crear y restaurar una instantánea, registramos los siguientes resultados:

| Campo | Resultado |
|---|---|
| Máquina virtual | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 Pro |
| Versión | 22H2 |
| Guest Additions | 7.2.22 |
| Estado de Windows antes de crearla | Apagado correctamente |
| Fecha de la práctica de restauración | 11/11/2026 |
| Creación de la instantánea | Completada |
| Carpeta Snapshots | Verificada |
| Ubicación | E:\VirtualBox\PC-Windows10-Osmaily\Snapshots |
| Inicio de Windows posterior | Correcto |
| Carpeta de prueba | `prueba`, en el escritorio |
| Restauración ejecutada | Correctamente |
| Inicio de Windows después de restaurar | Correcto |
| Carpeta de prueba después de restaurar | No aparece |
| Estado final | Práctica completada |

### Observación

No registramos aquí una fecha exacta de creación de la instantánea porque no verificamos ese dato desde sus propiedades.

La fecha indicada corresponde al ejercicio de restauración que realizamos.

---

## 16. Lista de comprobación de la práctica

- [x] Abrir Oracle VirtualBox Administrador.
- [x] Seleccionar `PC-Windows10-Osmaily`.
- [x] Comprobar que Windows 10 funciona correctamente.
- [x] Apagar Windows normalmente.
- [x] Verificar que la máquina virtual está apagada.
- [x] Abrir Instantáneas.
- [x] Crear una instantánea.
- [x] Comprobar la existencia de archivos en Snapshots.
- [x] Iniciar nuevamente Windows 10.
- [x] Crear la carpeta `prueba` en el escritorio.
- [x] Apagar nuevamente Windows.
- [x] Abrir Oracle VirtualBox Administrador → Instantáneas.
- [x] Seleccionar la instantánea guardada.
- [x] Ejecutar Restaurar.
- [x] Confirmar el mensaje de restauración.
- [x] Seleccionar Estado actual (modificado).
- [x] Iniciar Windows 10.
- [x] Comprobar que la carpeta `prueba` desapareció.
- [x] Confirmar que la restauración funcionó correctamente.

**Resultado:** creación y restauración de una instantánea verificadas satisfactoriamente.

---

## 17. Cómo administrar otras instantáneas

VirtualBox permite crear varias instantáneas de una misma máquina virtual.

### 17.1. Crear varias instantáneas

Por ejemplo, en futuras prácticas podríamos conservar:

**Instantánea 1**

`Windows 10 Pro - Instalacion limpia y Guest Additions`

**Instantánea 2**

`Windows 10 Pro - Herramientas de desarrollo instaladas`

**Instantánea 3**

`Windows 10 Pro - Antes de cambios avanzados`

Estos nombres representan ejemplos para futuras prácticas, no instantáneas adicionales que hayamos creado.

### 17.2. ¿Por qué utilizar nombres descriptivos?

Porque permiten identificar rápidamente:

- El sistema operativo.
- Las aplicaciones instaladas.
- La configuración guardada.
- El propósito del punto de recuperación.

### 17.3. ¿Debemos crear muchas instantáneas?

No necesariamente.

Cada instantánea puede implicar más uso de almacenamiento y una estructura de archivos más compleja.

Es mejor crear puntos de recuperación en momentos relevantes.

---

## 18. Cómo eliminar una instantánea

**Esta sección es teórica. No realizamos una eliminación de instantáneas durante nuestra práctica.**

### 18.1. ¿Para qué eliminar una instantánea?

Podemos necesitar eliminar una cuando ya no queremos conservar ese punto de recuperación.

### 18.2. Procedimiento general

1. Abrir **Oracle VirtualBox Administrador**.
2. Seleccionar la máquina virtual correspondiente.
3. Acceder a **Instantáneas**.
4. Seleccionar la instantánea que queremos eliminar.
5. Buscar la opción **Eliminar**.
6. Leer la advertencia.
7. Confirmar únicamente si estamos seguros.

### 18.3. ¿Eliminar una instantánea es lo mismo que restaurarla?

No.

**Eliminar:** quita un punto de recuperación y puede requerir consolidar archivos diferenciales.

**Restaurar:** recupera el estado correspondiente a una instantánea guardada.

### 18.4. Precauciones

- No eliminar archivos directamente desde la carpeta Snapshots.
- No interrumpir el proceso de eliminación.
- Comprobar que existe espacio libre suficiente.
- Confirmar que la instantánea ya no será necesaria.

---

## 19. Principales aprendizajes

### 19.1. Una instantánea permite regresar a un estado anterior

Comprobamos que podemos recuperar Windows 10 después de realizar cambios.

### 19.2. Una instantánea no reemplaza una copia de seguridad

Para protegernos frente a la pérdida del almacenamiento físico necesitamos respaldos independientes.

### 19.3. Es recomendable crear instantáneas después de completar una instalación estable

En nuestro caso, guardamos Windows 10 Pro después de configurar y verificar Guest Additions.

### 19.4. Estado actual e instantánea son elementos diferentes

La instantánea representa el estado guardado.

Estado actual representa la situación presente de la máquina virtual.

### 19.5. El botón Iniciar corresponde al estado actual

Durante la práctica observamos que el botón **Iniciar** se habilitaba al seleccionar **Estado actual (modificado)**.

### 19.6. Una restauración puede completarse muy rápidamente

No siempre veremos una barra de progreso.

Lo importante es comprobar posteriormente el estado recuperado.

### 19.7. Restaurar puede eliminar cambios posteriores

Lo comprobamos cuando desapareció la carpeta `prueba`.

### 19.8. Snapshots es la carpeta de almacenamiento de las instantáneas

No debemos confundir esta carpeta con la herramienta de administración del mismo nombre.

### 19.9. La comprobación final es fundamental

No basta con ejecutar una operación.

Debemos verificar que produjo el resultado esperado.

---

## 20. Resultado final de la práctica

Completamos correctamente la creación y restauración de una instantánea de Windows 10 Pro en Oracle VirtualBox.

### Procedimiento realizado

1. Partimos de una instalación estable de Windows 10 Pro.
2. Creamos una instantánea para conservar ese estado.
3. Verificamos los archivos asociados en la carpeta Snapshots.
4. Iniciamos Windows 10.
5. Creamos una carpeta llamada `prueba` en el escritorio.
6. Apagamos Windows normalmente.
7. Restauramos la instantánea desde Oracle VirtualBox Administrador.
8. Iniciamos nuevamente Windows 10.
9. Comprobamos que la carpeta `prueba` había desaparecido.

### Conclusión

**La restauración fue exitosa.**

Esta práctica nos permitió comprender cómo funcionan los puntos de recuperación de VirtualBox y comprobar su utilidad mediante un ejercicio real.

Aprendimos a crear una instantánea, localizarla, restaurarla y verificar que el sistema recuperó correctamente su estado anterior.

También identificamos la diferencia entre una instantánea y una copia de seguridad independiente, así como las precauciones necesarias al administrar los archivos de la máquina virtual.

**Estado final: práctica completada y verificada.**

---

## 21. Referencia

Documentación oficial de Oracle VirtualBox:

[Oracle VirtualBox — Manual de usuario](https://www.virtualbox.org/manual/)

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

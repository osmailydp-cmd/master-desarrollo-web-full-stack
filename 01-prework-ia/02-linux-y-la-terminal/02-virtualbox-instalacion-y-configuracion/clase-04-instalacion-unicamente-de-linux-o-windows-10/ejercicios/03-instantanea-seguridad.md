# Práctica — Creación de una instantánea de seguridad en Oracle VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox — Instalación y configuración  
**Herramienta:** Oracle VirtualBox 7.2  
**Máquina virtual:** `PC-Windows10-Osmaily`  
**Sistema anfitrión:** Windows 11 Home  
**Sistema invitado:** Windows 10 Pro (64 bits)  
**Versión de Windows:** 22H2

---

## 1. Objetivo de la práctica

Aprender a crear, identificar, administrar y comprender el funcionamiento de una **instantánea (Snapshot)** de una máquina virtual en Oracle VirtualBox.

La finalidad es conservar un punto de recuperación de Windows 10 Pro después de haber completado su instalación y comprobado el funcionamiento de Guest Additions.

Durante esta práctica aprenderemos a:

1. Comprender qué es una instantánea.
2. Diferenciar una instantánea de una copia de seguridad.
3. Identificar cuándo conviene crearla.
4. Preparar la máquina virtual.
5. Apagar correctamente Windows 10.
6. Acceder a la sección Instantáneas de VirtualBox.
7. Crear una instantánea con nombre y descripción.
8. Comprobar que aparece en el administrador.
9. Comprender cómo funcionan los cambios posteriores.
10. Conocer el procedimiento para restaurar una instantánea.
11. Identificar los riesgos de restauración y eliminación.
12. Conservar un punto de recuperación para futuras prácticas.

**Alcance:** crear y verificar una instantánea de Windows 10 Pro. La restauración se explica como procedimiento de referencia; no es necesario ejecutarla durante la creación inicial.

---

## 2. Requisitos previos

Antes de comenzar debemos disponer de una máquina virtual de Windows 10 Pro instalada y funcionando.

### 2.1. Máquina virtual utilizada

| Parámetro | Configuración |
|---|---|
| Nombre | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 Pro |
| Arquitectura | 64 bits |
| Versión | 22H2 |
| Memoria RAM | 4096 MB |
| Procesadores virtuales | 2 |
| Disco duro virtual | VDI dinámico de 64 GB |
| Firmware | BIOS tradicional |
| Usuario local | Osmaily |
| Guest Additions | 7.2.22 |

### 2.2. Estado previo de Windows 10

En las prácticas anteriores completamos:

- Instalación de Windows 10 Pro.
- Configuración de la cuenta local.
- Configuración regional y de teclado.
- Comprobación de la edición y versión.
- Instalación de VirtualBox Guest Additions.
- Verificación del controlador gráfico.
- Corrección del redimensionamiento de pantalla.
- Comprobación del modo pantalla completa.
- Comprobación de la integración del ratón.

Por tanto, este es un momento adecuado para conservar un punto de recuperación.

### 2.3. Verificar el espacio disponible

Las instantáneas utilizan espacio en el almacenamiento del sistema anfitrión.

En nuestra máquina virtual los archivos se encuentran bajo:

`E:\VirtualBox`

Antes de crear una instantánea:

1. Abrir el Explorador de archivos de Windows 11.
2. Seleccionar **Este equipo**.
3. Localizar la unidad `E:`.
4. Comprobar que dispone de espacio libre suficiente.

**Importante:** VirtualBox no reserva necesariamente una cantidad fija de almacenamiento para cada instantánea. Su uso puede crecer conforme se realizan cambios en la máquina virtual.

---

## 3. ¿Qué es una instantánea en VirtualBox?

Una **instantánea**, también llamada *Snapshot*, es un punto de recuperación que registra el estado de una máquina virtual en un momento determinado.

Permite regresar posteriormente a ese estado.

### 3.1. Ejemplo práctico

Imaginemos que tenemos Windows 10 Pro funcionando correctamente.

Creamos una instantánea llamada:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

Después realizamos nuevas pruebas:

- Instalamos programas.
- Modificamos configuraciones.
- Cambiamos parámetros del sistema.
- Probamos herramientas.
- Cometemos algún error de configuración.

Si necesitamos regresar al estado anterior, podemos restaurar la instantánea.

VirtualBox revertirá los cambios de los discos virtuales normales y recuperará la configuración guardada en ese punto.

### 3.2. ¿Qué información conserva?

Una instantánea puede conservar:

**Configuración de la máquina virtual**

Por ejemplo:

- Memoria RAM asignada.
- Procesadores virtuales.
- Configuración del hardware.
- Dispositivos virtuales.

**Estado de los discos virtuales**

Por ejemplo:

- Archivos de Windows.
- Programas instalados.
- Configuraciones guardadas.
- Cambios realizados en el disco.

**Estado de memoria**

Si la instantánea se crea mientras la máquina virtual está funcionando, VirtualBox también puede guardar su estado de memoria.

En esta práctica preferiremos crearla con Windows apagado correctamente.

### 3.3. ¿Qué significa restaurar una instantánea?

Significa regresar la máquina virtual al estado conservado cuando se creó esa instantánea.

Por ejemplo:

**Estado A:** Windows 10 recién configurado.

**Instantánea:** guardamos ese estado.

**Estado B:** instalamos programas y modificamos configuraciones.

**Restauración:** regresamos al Estado A.

Los cambios realizados posteriormente en los discos normales pueden perderse al restaurar.

---

## 4. Diferencia entre instantánea y copia de seguridad

Aunque se parecen, no son lo mismo.

### 4.1. Instantánea

Permite regresar rápidamente a un estado anterior de la misma máquina virtual.

Normalmente depende de los archivos originales y de los archivos diferenciales de esa máquina.

### 4.2. Copia de seguridad

Consiste en conservar una copia independiente de los datos o de la máquina virtual.

Puede almacenarse en otra unidad o ubicación para protegernos ante fallos del almacenamiento principal.

### 4.3. Comparación

| Característica | Instantánea | Copia de seguridad independiente |
|---|---|---|
| Recuperar un estado anterior | Sí | Sí, si la copia lo incluye |
| Permite deshacer cambios de pruebas | Sí | Sí, mediante recuperación |
| Depende de archivos de la VM original | Normalmente sí | No necesariamente |
| Protege ante pérdida de la unidad E: | No, si está en esa misma unidad | Sí, si está guardada en otro dispositivo |
| Adecuada antes de experimentar | Sí | También, pero generalmente requiere otro procedimiento |
| Sustituye una estrategia de respaldo | No | Puede formar parte de ella |

### Conclusión

**Una instantánea no sustituye una copia de seguridad independiente.**

Si se daña o pierde el almacenamiento donde se encuentra toda la máquina virtual, también podemos perder sus instantáneas.

---

## 5. ¿Cuándo conviene crear una instantánea?

Es recomendable crear instantáneas antes de realizar operaciones importantes.

Por ejemplo:

- Antes de instalar software desconocido.
- Antes de cambiar configuraciones críticas.
- Antes de probar comandos que modifican el sistema.
- Antes de realizar prácticas con permisos de administrador.
- Antes de modificar servicios.
- Antes de experimentar con configuraciones de red.
- Después de completar una instalación estable.

### 5.1. ¿Por qué crearla ahora?

Nuestra máquina virtual ya tiene Windows 10 Pro instalado y sus principales funciones verificadas.

Además:

- Guest Additions está instalado.
- La pantalla se adapta correctamente.
- El modo pantalla completa funciona.
- El ratón se integra con Windows 11.

Por eso queremos conservar este estado antes de continuar con nuevas prácticas.

---

## 6. Preparar Windows 10 antes de crear la instantánea

Este capítulo contiene las comprobaciones previas y el procedimiento de apagado.

### 6.1. Iniciar la máquina virtual

Si la máquina está apagada:

**Paso 1 — Abrir VirtualBox**

1. Abrir Oracle VirtualBox Administrador desde Windows 11.
2. Localizar `PC-Windows10-Osmaily`.
3. Seleccionar la máquina.

**Paso 2 — Iniciar Windows**

1. Hacer clic en **Iniciar**.
2. Esperar a que Windows 10 arranque.
3. Iniciar sesión con el usuario local.

### 6.2. Comprobar que Windows funciona

Antes de crear el punto de recuperación:

1. Comprobar que aparece el escritorio.
2. Abrir el menú Inicio.
3. Abrir el Explorador de archivos.
4. Comprobar que responde correctamente.
5. Verificar que podemos utilizar el ratón.

Podemos comprobar también que el redimensionamiento de pantalla funciona, como hicimos en la práctica anterior.

### 6.3. Guardar los archivos abiertos

Antes de apagar Windows:

1. Revisar las aplicaciones abiertas.
2. Guardar cualquier documento pendiente.
3. Cerrar los programas que no necesitemos.

### 6.4. Apagar Windows correctamente

**Paso 1 — Abrir Inicio**

Dentro de Windows 10:

1. Hacer clic en **Inicio**.

**Paso 2 — Abrir las opciones de energía**

1. Buscar **Inicio/Apagado**.
2. Hacer clic para desplegar las opciones.

**Paso 3 — Seleccionar Apagar**

1. Hacer clic en **Apagar**.
2. Esperar a que Windows termine de cerrarse.

**Paso 4 — Verificar el estado en VirtualBox**

Volver a Oracle VirtualBox Administrador.

Buscar:

`PC-Windows10-Osmaily`

Comprobar que su estado es:

**Apagada**

### 6.5. ¿Por qué preferimos apagar Windows?

VirtualBox permite crear instantáneas de máquinas encendidas o apagadas.

Sin embargo, para conservar un punto de instalación estable, preferimos apagar Windows normalmente.

Así evitamos depender de una sesión de ejecución que haya quedado abierta y conservamos un punto desde el cual Windows puede iniciar de nuevo.

**Importante:** no debemos utilizar **Apagar la máquina** de forma forzada cuando Windows puede cerrarse normalmente.

---

## 7. Crear una instantánea en Oracle VirtualBox

Este capítulo contiene el procedimiento principal de la práctica.

### 7.1. Seleccionar la máquina virtual

Desde Oracle VirtualBox Administrador:

1. Localizar la lista de máquinas virtuales.
2. Buscar `PC-Windows10-Osmaily`.
3. Hacer clic sobre su nombre.
4. Comprobar que aparece seleccionada.
5. Verificar que su estado es **Apagada**.

### 7.2. Abrir Instantáneas

Con la máquina seleccionada:

1. Buscar la pestaña **Instantáneas** en la zona derecha o superior del Administrador.
2. Hacer clic en **Instantáneas**.
3. Esperar a que se muestre el árbol de instantáneas.

### ¿Qué es el árbol de instantáneas?

Es una representación de los puntos de recuperación que existen para una máquina virtual.

Permite consultar la secuencia de estados guardados.

### 7.3. Identificar Estado actual

Si todavía no existen instantáneas, aparecerá un elemento llamado:

**Estado actual**

Este elemento representa la situación presente de la máquina virtual.

No significa que ya exista una instantánea guardada.

### ¿Qué diferencia hay?

**Estado actual:** representa la situación más reciente de la máquina virtual.

**Instantánea:** representa un punto anterior que decidimos conservar.

### 7.4. Iniciar la creación de la instantánea

Con la máquina virtual apagada:

1. Permanecer en la pestaña **Instantáneas**.
2. Seleccionar **Estado actual**, si es necesario.
3. Buscar en la barra de herramientas el botón para tomar una instantánea.
4. Hacer clic en **Tomar** o en la opción equivalente que muestre VirtualBox.

También puede utilizarse:

1. Hacer clic derecho sobre **Estado actual**.
2. Seleccionar **Tomar**.

En versiones cuya interfaz aparece en inglés, esta acción se identifica como **Take** o **Take Snapshot**.

### 7.5. Introducir el nombre

Al iniciar el procedimiento, VirtualBox mostrará una ventana para introducir el nombre de la instantánea.

Proponemos utilizar:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

### ¿Por qué este nombre?

Porque identifica:

- El sistema operativo.
- El estado de instalación.
- La presencia de Guest Additions.

Un nombre descriptivo permite reconocer la instantánea cuando tengamos varias.

### 7.6. Introducir una descripción

VirtualBox también permite agregar una descripción.

Proponemos escribir:

**Windows 10 Pro 22H2 instalado y configurado. Cuenta local creada. Guest Additions 7.2.22 instalado. Controlador grafico WDDM verificado. Redimensionamiento de pantalla, modo pantalla completa e integracion del raton comprobados. Punto de recuperacion previo a nuevas practicas.**

### ¿Para qué sirve la descripción?

Permite recordar exactamente qué condiciones tenía la máquina virtual cuando se creó la instantánea.

Es especialmente útil cuando existen varios puntos de recuperación.

### 7.7. Confirmar la creación

Después de introducir el nombre y la descripción:

1. Revisar ambos campos.
2. Confirmar que estamos trabajando sobre `PC-Windows10-Osmaily`.
3. Hacer clic en el botón de confirmación, que puede aparecer como **Aceptar**.
4. Esperar a que VirtualBox complete el procedimiento.

No debemos cerrar VirtualBox ni interrumpir el proceso mientras se está creando la instantánea.

---

## 8. Comprobar que la instantánea se creó correctamente

Después de confirmar la creación, debemos verificar que aparece en el administrador.

### 8.1. Revisar el árbol de instantáneas

1. Permanecer en **Oracle VirtualBox Administrador**.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Abrir **Instantáneas**.
4. Buscar el nombre de la instantánea creada.

El nombre esperado es:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

### 8.2. Revisar Estado actual

Después de crear una instantánea, VirtualBox mostrará normalmente:

- La instantánea guardada.
- Un elemento **Estado actual** asociado a ella.

Esto significa que VirtualBox conserva el punto de recuperación y permite que la máquina continúe evolucionando.

### 8.3. Revisar las propiedades

Para consultar los datos de la instantánea:

1. Seleccionar su nombre en el árbol.
2. Buscar la opción **Propiedades** o el control equivalente.
3. Abrirla.
4. Revisar el nombre y la descripción.

En la interfaz de VirtualBox también pueden aparecer apartados para consultar la información técnica del estado guardado.

### 8.4. Comprobar el nombre de la máquina

Verificar que la instantánea pertenece a:

`PC-Windows10-Osmaily`

Esto es importante cuando administramos varias máquinas virtuales.

### 8.5. Resultado esperado

La práctica estará completada cuando:

- La instantánea aparezca en el árbol.
- Su nombre sea correcto.
- Su descripción corresponda al estado guardado.
- La máquina virtual conserve su configuración.
- No aparezcan errores durante la creación.

---

## 9. Comprobar que Windows sigue funcionando

Crear una instantánea no debe impedir que podamos seguir utilizando nuestra máquina virtual.

### 9.1. Iniciar la máquina

1. Seleccionar `PC-Windows10-Osmaily`.
2. Buscar **Estado actual**.
3. Hacer clic en **Iniciar** desde el Administrador de VirtualBox.
4. Esperar a que Windows 10 arranque.

### 9.2. Iniciar sesión

1. Esperar a que aparezca la pantalla de inicio de sesión.
2. Iniciar sesión con el usuario local.
3. Comprobar que se muestra el escritorio.

### 9.3. Realizar las comprobaciones

Revisar:

- Menú Inicio.
- Explorador de archivos.
- Funcionamiento del ratón.
- Redimensionamiento de pantalla.
- Modo ventana.

### 9.4. Resultado esperado

Windows 10 debe continuar funcionando normalmente.

**Importante:** iniciar Windows después de crear la instantánea no significa que la hayamos restaurado. Solo estamos utilizando el estado actual de la máquina.

---

## 10. ¿Qué ocurre cuando modificamos Windows después de una instantánea?

Esta sección explica cómo funciona el sistema de recuperación de VirtualBox.

### 10.1. Estado inicial

Tenemos Windows 10 Pro funcionando correctamente.

Creamos la instantánea:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

### 10.2. Cambios posteriores

Después de crearla, podemos:

- Instalar programas.
- Crear documentos.
- Modificar configuraciones.
- Ejecutar pruebas.
- Actualizar determinados componentes.

Los cambios posteriores pasan a formar parte del estado actual de la máquina.

### 10.3. ¿Se modifica la instantánea anterior?

No de la misma manera que se modifica el estado actual.

VirtualBox conserva la referencia al estado guardado y utiliza imágenes diferenciales para registrar cambios posteriores en los discos virtuales normales.

### 10.4. ¿Qué es una imagen diferencial?

Es un archivo de almacenamiento utilizado para registrar modificaciones posteriores a un punto de referencia.

En lugar de duplicar inmediatamente todo el contenido del disco virtual, VirtualBox puede mantener una cadena de archivos con las diferencias.

### 10.5. ¿Por qué es importante conocerlo?

Porque esos archivos diferenciales:

- Consumen espacio de almacenamiento.
- Pueden crecer con el uso.
- Forman parte del funcionamiento de las instantáneas.
- No deben eliminarse manualmente desde el Explorador de archivos.

**Advertencia:** borrar archivos `.vdi` o archivos de instantáneas directamente desde Windows 11 puede dañar la estructura de almacenamiento de la máquina virtual.

La administración de instantáneas debe realizarse desde VirtualBox.

---

## 11. Cómo restaurar una instantánea

**Este procedimiento se documenta para futuras prácticas. No necesitamos ejecutarlo inmediatamente después de crear nuestra primera instantánea.**

### 11.1. ¿Cuándo restauraríamos una instantánea?

Por ejemplo, si:

- Una configuración provoca problemas.
- Un programa deja Windows inestable.
- Queremos repetir una práctica desde el principio.
- Necesitamos recuperar una configuración anterior.

### 11.2. Advertencia antes de restaurar

Restaurar una instantánea puede eliminar los cambios realizados posteriormente en los discos virtuales normales.

Por ejemplo, si después de crear la instantánea guardamos un documento dentro de Windows 10 y luego restauramos el estado anterior, ese documento podría desaparecer.

**Debemos guardar fuera de la máquina virtual cualquier información importante antes de restaurar.**

### 11.3. Preparar la máquina

**Paso 1 — Guardar el trabajo**

1. Revisar las aplicaciones abiertas.
2. Guardar los archivos importantes.
3. Copiar fuera de la máquina virtual cualquier dato que necesitemos conservar.

**Paso 2 — Apagar Windows**

1. Abrir **Inicio**.
2. Seleccionar **Inicio/Apagado**.
3. Hacer clic en **Apagar**.
4. Esperar a que la máquina quede apagada.

### 11.4. Abrir el administrador de instantáneas

Desde Windows 11:

1. Abrir **Oracle VirtualBox Administrador**.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Abrir **Instantáneas**.
4. Localizar la instantánea que deseamos recuperar.

### 11.5. Seleccionar la instantánea

1. Hacer clic sobre:

`Windows 10 Pro - Instalacion limpia y Guest Additions`

2. Revisar sus propiedades.
3. Confirmar que corresponde al punto de recuperación deseado.

### 11.6. Iniciar la restauración

1. Buscar el botón **Restaurar**.
2. Hacer clic.
3. Leer cuidadosamente cualquier advertencia mostrada.
4. Revisar si VirtualBox ofrece conservar el estado actual mediante otra instantánea.
5. Continuar únicamente cuando estemos seguros de que queremos regresar al estado anterior.

### 11.7. Esperar a que termine

VirtualBox realizará las operaciones necesarias para recuperar el estado seleccionado.

No debemos interrumpir el procedimiento.

### 11.8. Iniciar Windows después de restaurar

1. Seleccionar **Estado actual**.
2. Hacer clic en **Iniciar**.
3. Esperar a que Windows 10 arranque.
4. Comprobar que el sistema corresponde al estado recuperado.

### 11.9. Precaución

Restaurar una instantánea no debe confundirse con reiniciar Windows.

**Reiniciar:** apaga y vuelve a iniciar el sistema.

**Restaurar una instantánea:** regresa a un estado previamente guardado y puede descartar cambios posteriores.

### 11.10. Prueba práctica — Verificación de una restauración

Para comprobar que la restauración de instantáneas funciona correctamente, realizamos una prueba creando una carpeta dentro de Windows 10 después de haber guardado una instantánea.

#### Paso 1 — Crear un cambio después de la instantánea

1. Iniciamos la máquina virtual `PC-Windows10-Osmaily`.
2. Accedimos al escritorio de Windows 10.
3. Creamos una carpeta llamada `prueba`.
4. Comprobamos que aparecía en el escritorio.

#### Paso 2 — Apagar la máquina virtual

1. Abrimos **Inicio → Inicio/Apagado**.
2. Seleccionamos **Apagar**.
3. Esperamos a que la máquina virtual quedara apagada.

#### Paso 3 — Restaurar la instantánea

1. Abrimos **Oracle VirtualBox Administrador** desde Windows 11.
2. Seleccionamos `PC-Windows10-Osmaily`.
3. Accedimos a **Instantáneas**.
4. Seleccionamos la instantánea creada antes de la carpeta `prueba`.
5. Hicimos clic en **Restaurar**.
6. Confirmamos el mensaje de restauración.
7. Esperamos a que VirtualBox terminara la operación.

**Observación:** la restauración fue muy rápida y no observamos una barra de progreso.

#### Paso 4 — Iniciar Windows después de restaurar

1. Seleccionamos **Estado actual (modificado)**.
2. Hicimos clic en **Iniciar**.
3. Esperamos a que Windows 10 arrancara.
4. Accedimos al escritorio.

#### Paso 5 — Comprobar el resultado

Buscamos la carpeta `prueba` que habíamos creado anteriormente.

**Resultado:** la carpeta ya no aparecía en el escritorio.

Esto confirmó que VirtualBox había recuperado el estado del disco virtual correspondiente a la instantánea anterior a su creación.

#### Conclusión

La prueba de restauración fue exitosa.

Aprendimos que una instantánea permite recuperar un estado anterior de la máquina virtual y descartar cambios realizados posteriormente.

También comprobamos que la restauración puede completarse rápidamente y que la verificación más importante consiste en iniciar el sistema y comprobar que recuperamos el estado esperado.
---

## 12. Cómo crear varias instantáneas

VirtualBox permite conservar más de una instantánea de la misma máquina virtual.

### 12.1. Ejemplo de organización

Podríamos utilizar los siguientes nombres:

**Instantánea 1**

`Windows 10 Pro - Instalacion limpia y Guest Additions`

**Instantánea 2**

`Windows 10 Pro - Herramientas de desarrollo instaladas`

**Instantánea 3**

`Windows 10 Pro - Antes de cambios avanzados`

Estos nombres son ejemplos de una posible organización futura.

### 12.2. ¿Por qué conviene utilizar nombres descriptivos?

Porque permiten reconocer:

- Qué sistema operativo se guardó.
- Qué programas estaban instalados.
- Qué configuraciones se habían aplicado.
- Cuál era el objetivo de cada punto de recuperación.

### 12.3. ¿Debemos crear una instantánea para cada cambio?

No necesariamente.

Las instantáneas consumen almacenamiento y requieren mantenimiento.

Es preferible crearlas antes de cambios importantes o al completar etapas relevantes del aprendizaje.

---

## 13. Cómo eliminar una instantánea

**Esta sección es informativa. No eliminaremos nuestra instantánea de seguridad durante esta práctica.**

### 13.1. ¿Por qué eliminar una instantánea?

Podríamos querer eliminarla cuando:

- Ya no es necesaria.
- Hemos creado otros puntos de recuperación.
- Necesitamos administrar mejor el almacenamiento.

### 13.2. Procedimiento general

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar la máquina virtual correspondiente.
3. Abrir **Instantáneas**.
4. Seleccionar la instantánea que queremos eliminar.
5. Utilizar la opción **Eliminar**.
6. Leer la advertencia.
7. Confirmar solamente si estamos seguros.

### 13.3. ¿Eliminar es lo mismo que restaurar?

No.

**Eliminar una instantánea** quita ese punto de recuperación y puede implicar la consolidación de archivos diferenciales.

**Restaurar una instantánea** regresa la máquina al estado que se había guardado.

### 13.4. Precauciones

- No eliminar instantáneas directamente desde el Explorador de Windows.
- No interrumpir una operación de eliminación.
- Comprobar que existe espacio libre suficiente.
- Confirmar que ya no necesitamos ese punto de recuperación.

Al eliminar una instantánea, VirtualBox puede necesitar procesar o fusionar archivos de disco virtual, por lo que la operación puede tardar más que su creación.

---

## 14. Dónde almacena VirtualBox las instantáneas

VirtualBox utiliza archivos asociados a la máquina virtual para conservar su configuración y sus cambios de almacenamiento.

### 14.1. Ubicación de nuestra máquina

La máquina virtual se encuentra bajo:

`E:\VirtualBox\PC-Windows10-Osmaily`

### 14.2. Carpeta habitual de instantáneas

En configuraciones estándar, VirtualBox utiliza una carpeta denominada:

`Snapshots`

Esta suele encontrarse dentro de la carpeta de la máquina virtual.

En nuestro caso, si se mantiene esa ubicación predeterminada, sería:

`E:\VirtualBox\PC-Windows10-Osmaily\Snapshots`

**Importante:** esta ruta es la ubicación esperada según la estructura predeterminada, no una carpeta cuya existencia hayamos comprobado todavía.

### 14.3. Cómo revisar la ubicación real

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Abrir **Configuración**.
4. Revisar las propiedades generales de la máquina, incluida la ubicación de instantáneas si aparece disponible.
5. Comprobar la ubicación utilizada.

### 14.4. ¿Podemos borrar archivos de esa carpeta?

No debemos hacerlo manualmente.

Los archivos de instantáneas pueden depender unos de otros.

Eliminar uno incorrectamente puede impedir que VirtualBox reconstruya el estado del disco.

---

## 15. Registro de la instantánea de nuestra práctica

Este apartado se completará después de realizar la creación.

| Campo | Valor |
|---|---|
| Máquina virtual | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 Pro |
| Versión | 22H2 |
| Guest Additions | 7.2.22 |
| Nombre propuesto | Windows 10 Pro - Instalacion limpia y Guest Additions |
| Estado de Windows antes de crearla | Apagado correctamente |
| Fecha de creación | Pendiente |
| Instantánea visible en VirtualBox | Pendiente de comprobar |
| Reinicio posterior de Windows | Pendiente de comprobar |
| Estado de la práctica | Pendiente de ejecución |

Una vez creada, actualizaremos las filas pendientes con los resultados reales.

---

## 16. Lista de comprobación de la práctica

- [ ] Abrir Oracle VirtualBox Administrador.
- [ ] Seleccionar `PC-Windows10-Osmaily`.
- [ ] Comprobar que Windows 10 funciona correctamente.
- [ ] Guardar y cerrar los archivos abiertos.
- [ ] Apagar Windows desde Inicio → Inicio/Apagado → Apagar.
- [ ] Verificar que la máquina aparece como Apagada.
- [ ] Abrir la pestaña Instantáneas.
- [ ] Identificar Estado actual.
- [ ] Seleccionar la opción Tomar.
- [ ] Introducir el nombre de la instantánea.
- [ ] Introducir una descripción.
- [ ] Confirmar la creación.
- [ ] Esperar a que finalice.
- [ ] Comprobar que la instantánea aparece en el árbol.
- [ ] Revisar sus propiedades.
- [ ] Iniciar nuevamente Windows 10.
- [ ] Comprobar que el sistema continúa funcionando.
- [ ] Registrar la fecha y el resultado de la práctica.

---

## 17. Principales aprendizajes

### 17.1. Una instantánea conserva un punto de recuperación

Permite regresar una máquina virtual a un estado anterior.

### 17.2. Una instantánea no sustituye una copia de seguridad

Si se pierde la carpeta de la máquina virtual y sus archivos asociados, también podrían perderse las instantáneas.

### 17.3. Conviene crear instantáneas después de configuraciones estables

Una instalación limpia y verificada es un buen punto para crear una instantánea.

### 17.4. VirtualBox puede conservar varias instantáneas

Podemos registrar distintos momentos de evolución de una máquina virtual.

### 17.5. Estado actual e instantánea no significan lo mismo

El estado actual representa la situación presente de la máquina.

La instantánea conserva un estado que decidimos guardar.

### 17.6. Restaurar puede eliminar cambios posteriores

Debemos revisar cuidadosamente qué información se perderá al volver a un estado anterior.

### 17.7. Las instantáneas requieren almacenamiento

Su consumo puede aumentar conforme utilizamos la máquina virtual.

### 17.8. No debemos manipular manualmente los archivos diferenciales

La creación, restauración y eliminación de instantáneas debe realizarse desde las herramientas de VirtualBox.

### 17.9. Es importante documentar los estados guardados

Un nombre y una descripción clara facilitan localizar el punto de recuperación adecuado.

---

## 18. Resultado esperado de la práctica

Al finalizar, debemos disponer de una instantánea de `PC-Windows10-Osmaily` que conserve el estado estable de Windows 10 Pro después de instalar Guest Additions.

### Estado que queremos conservar

- Windows 10 Pro instalado.
- Usuario local configurado.
- Guest Additions 7.2.22 instalado.
- Controlador gráfico reconocido.
- Redimensionamiento de pantalla funcionando.
- Modo pantalla completa funcionando.
- Integración del ratón funcionando.

### Finalidad

Utilizar esta instantánea como punto de recuperación antes de continuar con nuevas prácticas dentro de Windows 10.

**Estado actual de esta documentación: procedimiento preparado, pendiente de ejecución y verificación en VirtualBox.**

---

## 19. Fuente de referencia

Documentación oficial de Oracle VirtualBox 7.2:

[Oracle VirtualBox — Snapshots](https://docs.oracle.com/en/virtualization/virtualbox/7.2/user/working-with-vms.html#snapshots)

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

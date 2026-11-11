# Práctica 03 — Instalación y configuración de Windows 10 Pro en VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase 04:** Instalación únicamente de Linux o Windows 10  
**Herramienta:** Oracle VirtualBox  
**Máquina virtual:** `PC-Windows10-Osmaily`  
**Sistema anfitrión:** Windows 11 Home  
**Sistema invitado:** Windows 10 Pro (64 bits)

---

## 1. Objetivo de la práctica

Aprender a instalar Windows 10 Pro desde una imagen ISO dentro de una máquina virtual creada previamente con Oracle VirtualBox.

Durante esta práctica realizaremos:

1. Iniciar la máquina virtual desde la ISO.
2. Configurar las preferencias iniciales del instalador.
3. Seleccionar la edición Windows 10 Pro.
4. Elegir el tipo de instalación.
5. Preparar el disco duro virtual.
6. Instalar Windows 10.
7. Resolver una interrupción del proceso de instalación.
8. Configurar Windows durante su primer inicio.
9. Crear una cuenta de usuario local.
10. Revisar las opciones de privacidad.
11. Verificar la edición, versión, hardware y activación.

**Alcance:** esta práctica termina con Windows 10 Pro instalado, configurado y funcionando en el escritorio.

La instalación de **VirtualBox Guest Additions** se documentará en la Práctica 04.

---

## 2. Requisitos previos

Antes de comenzar, debemos haber completado las prácticas anteriores.

### 2.1. Práctica 01 — Obtención de la ISO

Debemos disponer del archivo:

`E:\Descargas\ISOS\Windows.iso`

Esta imagen se obtuvo mediante la herramienta oficial de Microsoft para crear medios de instalación.

### 2.2. Práctica 02 — Creación de la máquina virtual

La máquina virtual ya debe estar creada en Oracle VirtualBox.

| Parámetro | Configuración |
|---|---|
| Nombre | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 (64-bit) |
| Memoria RAM | 4096 MB |
| Procesadores | 2 |
| Disco virtual | VDI dinámico |
| Capacidad del disco | 64 GB |
| Firmware EFI | Desactivado |
| Tipo de instalación | Manual |
| Ubicación de la máquina | E:\VirtualBox |

La máquina debe encontrarse inicialmente en estado **Apagada**.

### 2.3. Comprobar que la ISO esté conectada

1. Abrir **Oracle VirtualBox Administrador**.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Hacer clic en **Configuración**.
4. Abrir **Almacenamiento**.
5. Revisar la unidad óptica virtual.
6. Comprobar que tenga conectada la imagen `Windows.iso`.
7. Cerrar la configuración.

Si no aparece la imagen, debemos seleccionarla desde la unidad óptica virtual antes de iniciar la instalación.

---

## 3. Iniciar la instalación de Windows 10 Pro

Este capítulo comprende todas las etapas del instalador de Windows, desde el arranque de la ISO hasta la copia de los archivos del sistema operativo.

### 3.1. Iniciar la máquina virtual

**Paso 1 — Abrir VirtualBox**

1. Abrir Oracle VirtualBox desde Windows 11.
2. Localizar la máquina `PC-Windows10-Osmaily`.
3. Seleccionarla en la lista.

**Paso 2 — Iniciar la máquina**

1. Hacer clic en **Iniciar**.
2. Esperar a que se abra la ventana de la máquina virtual.
3. Comprobar que comienza el arranque desde la imagen ISO.

En este momento, la máquina virtual utiliza la ISO de Windows 10 como medio de instalación.

### 3.2. Configurar idioma y preferencias iniciales

Al iniciar el instalador de Windows aparece una pantalla de selección de preferencias regionales.

**Paso 1 — Revisar los campos**

El instalador permite seleccionar opciones como:

- Idioma que se va a instalar.
- Formato de hora y moneda.
- Teclado o método de entrada.

**Paso 2 — Continuar**

1. Revisar los valores presentados.
2. Seleccionar las preferencias correspondientes.
3. Hacer clic en **Siguiente**.

Utilizamos el instalador en español.

### 3.3. Comenzar la instalación

En la siguiente pantalla aparece la opción:

**Instalar ahora**

**Procedimiento:**

1. Localizar el botón **Instalar ahora**.
2. Hacer clic.
3. Esperar a que el instalador continúe.

### 3.4. Introducir una clave de producto

El instalador puede solicitar una clave de producto de Windows.

En nuestra práctica no introdujimos una clave.

**Procedimiento:**

1. Buscar la opción **No tengo clave de producto**.
2. Seleccionarla.
3. Continuar con la instalación.

**¿Qué significa?**

Permite instalar Windows sin introducir una clave durante este paso.

Sin embargo, instalar Windows no equivale a activarlo.

Posteriormente verificaremos el estado de activación.

### 3.5. Seleccionar la edición de Windows

El instalador mostró una lista de ediciones disponibles.

**Procedimiento:**

1. Revisar las ediciones presentadas.
2. Localizar **Windows 10 Pro**.
3. Seleccionar esa edición.
4. Hacer clic en **Siguiente**.

**Edición utilizada: Windows 10 Pro de 64 bits.**

### 3.6. Aceptar los términos de licencia

El instalador presenta los términos de licencia de Microsoft.

**Procedimiento:**

1. Leer los términos.
2. Si estamos de acuerdo, marcar la casilla de aceptación.
3. Hacer clic en **Siguiente**.

### 3.7. Seleccionar el tipo de instalación

El instalador permite elegir entre una actualización y una instalación personalizada.

En nuestra práctica seleccionamos la instalación personalizada.

**Procedimiento:**

1. Revisar las alternativas.
2. Seleccionar **Personalizada: instalar solo Windows (avanzado)**.

**¿Por qué utilizamos esta opción?**

Porque estamos instalando Windows desde cero en un disco virtual nuevo.

No necesitamos conservar archivos ni aplicaciones de una instalación anterior.

### 3.8. Seleccionar el disco de instalación

En esta pantalla Windows muestra las unidades y particiones disponibles.

En nuestra máquina virtual había un disco VDI de 64 GB.

#### Paso 1 — Identificar el disco

1. Revisar la lista de unidades.
2. Localizar el disco virtual de aproximadamente 64 GB.
3. Comprobar que corresponde a la máquina virtual.

En el estado inicial, el espacio del disco estaba sin asignar.

#### Paso 2 — Seleccionar el espacio sin asignar

1. Seleccionar el espacio sin asignar del disco virtual.
2. Hacer clic en **Siguiente**.

Windows puede crear automáticamente las particiones que necesita para instalarse.

**Importante:** estas operaciones afectan al disco virtual seleccionado. Debemos verificar siempre que no estamos trabajando sobre un disco que contenga información que deseamos conservar.

### 3.9. Esperar a que Windows instale los archivos

El instalador comienza a realizar distintas operaciones.

Entre las etapas mostradas se encuentran:

- Copiar archivos de Windows.
- Preparar archivos para instalación.
- Instalar características.
- Instalar actualizaciones.
- Finalizar.

Durante nuestra práctica observamos que la fase **Preparando archivos para instalación** avanzaba lentamente.

Registramos, entre otros momentos, progresos del 46 % y del 69 %.

**¿Qué debemos hacer en esta etapa?**

1. Mantener la máquina virtual encendida.
2. Esperar a que termine el proceso.
3. No apagar el equipo anfitrión innecesariamente.
4. Permitir los reinicios que Windows realice durante la instalación.

---

## 4. Incidencia durante la instalación y solución aplicada

En nuestro primer intento ocurrió un problema que obligó a repetir la instalación.

### 4.1. Problema encontrado

La computadora anfitriona se apagó durante la noche cuando Windows 10 todavía estaba instalándose.

Como consecuencia, el proceso quedó interrumpido.

No se había completado una instalación funcional de Windows.

### 4.2. Revisar el estado del disco

Al volver a iniciar el instalador, observamos que el disco virtual ya tenía particiones creadas parcialmente.

Aparecían:

| Partición | Tamaño aproximado |
|---|---|
| Partición reservada para el sistema | 50 MB |
| Partición principal | 63,9 GB |

Estas particiones correspondían al intento anterior de instalación.

### 4.3. Decisión tomada

Como queríamos realizar una instalación limpia desde cero, decidimos eliminar las particiones incompletas del **disco virtual de práctica**.

Esto nos permitió comenzar nuevamente con todo el espacio sin asignar.

### 4.4. Eliminar las particiones del intento anterior

**Advertencia:** eliminar una partición borra la información almacenada en ella. Este procedimiento únicamente debe realizarse cuando estamos seguros de que podemos descartar su contenido.

**Paso 1 — Abrir el instalador**

1. Iniciar la máquina virtual desde la ISO.
2. Avanzar por las pantallas iniciales.
3. Seleccionar la edición Windows 10 Pro.
4. Elegir la instalación personalizada.

**Paso 2 — Revisar las particiones**

1. Localizar el disco virtual de 64 GB.
2. Identificar las particiones creadas por el intento anterior.
3. Confirmar que corresponden al disco virtual de nuestra práctica.

**Paso 3 — Eliminar las particiones**

1. Seleccionar una partición del disco virtual.
2. Hacer clic en **Eliminar**.
3. Confirmar la advertencia cuando corresponda.
4. Repetir el procedimiento con la otra partición creada durante el intento anterior.

**Paso 4 — Comprobar el resultado**

Después de eliminar las particiones, el disco volvió a aparecer como:

**Espacio sin asignar — aproximadamente 64 GB**

### 4.5. Reiniciar la instalación

1. Seleccionar el espacio sin asignar.
2. Hacer clic en **Siguiente**.
3. Permitir que Windows prepare nuevamente el disco.
4. Esperar a que complete la instalación.

### 4.6. Resultado

En este segundo intento, Windows terminó de instalarse correctamente.

La instalación avanzó hasta las pantallas de configuración inicial del sistema operativo.

### 4.7. Aprendizaje de la incidencia

Una instalación interrumpida puede dejar particiones y archivos incompletos.

Si se trata de un disco virtual nuevo y no existen datos que debamos conservar, podemos repetir la instalación desde un espacio sin asignar.

No obstante, **eliminar particiones no es un procedimiento que deba aplicarse automáticamente ante cualquier error**.

---

## 5. Configuración inicial de Windows 10 Pro

Después de completar la instalación, Windows inicia su asistente de configuración.

Este proceso suele denominarse **OOBE**, del inglés *Out-of-Box Experience*.

Aquí configuramos la región, los idiomas, la cuenta y las preferencias del sistema.

### 5.1. Seleccionar la región

Windows mostró una pantalla para confirmar la región.

**Procedimiento:**

1. Buscar el país o región.
2. Seleccionar **Uruguay**.
3. Confirmar la selección.

**Región configurada: Uruguay.**

### 5.2. Configurar la distribución principal del teclado

Windows solicitó seleccionar una distribución del teclado.

Seleccionamos:

**Español**

Esta fue la distribución principal utilizada.

### 5.3. Agregar un segundo idioma y configurar su teclado

Durante la configuración inicial de Windows 10 agregamos:

- **Idioma:** Inglés (Estados Unidos).
- **Distribución del teclado:** Español.

Posteriormente identificamos que el idioma y la distribución del teclado son configuraciones independientes.

La distribución del teclado determina la ubicación de las teclas y los caracteres que se escriben, independientemente del idioma seleccionado.

**Aprendizaje:** si queremos utilizar la distribución estadounidense, debemos seleccionar **Estados Unidos (US)**. Si nuestro teclado físico tiene distribución española, podemos mantener **Español**, aunque el idioma agregado sea Inglés (Estados Unidos).

Esta configuración puede modificarse posteriormente desde:

**Inicio → Configuración → Hora e idioma → Idioma → Inglés (Estados Unidos) → Opciones → Teclados**.

### 5.3.1. Corrección de la distribución del teclado para Inglés (Estados Unidos)

Durante la configuración inicial de Windows 10 agregamos el idioma **Inglés (Estados Unidos)**, pero seleccionamos la distribución de teclado **Español — QWERTY**.

Posteriormente comprobamos que nuestro teclado físico ASUS no tiene la letra Ñ y que la distribución **Estados Unidos (US)** se adapta correctamente a sus teclas.

#### Paso 1 — Acceder a la configuración del idioma

1. Abrir **Inicio → Configuración**.
2. Seleccionar **Hora e idioma**.
3. Entrar en **Idioma**.
4. En **Idiomas preferidos**, seleccionar **Inglés (Estados Unidos)**.
5. Hacer clic en **Opciones**.

#### Paso 2 — Agregar el teclado estadounidense

1. Localizar la sección **Teclados**.
2. Hacer clic en **Agregar un teclado**.
3. Buscar y seleccionar **Estados Unidos**.
4. Comprobar que aparecen las distribuciones:
   - **Español — QWERTY**.
   - **Estados Unidos — QWERTY**.

#### Paso 3 — Seleccionar y comprobar la nueva distribución

1. Presionar `Windows + Espacio` para abrir el selector de idioma y teclado.
2. Seleccionar **ENG — Inglés (Estados Unidos), Teclado Estados Unidos**.
3. Abrir el Bloc de notas.
4. Probar las teclas de letras, números y signos de puntuación.
5. Confirmar que los caracteres coinciden con los símbolos del teclado físico.

**Resultado:** la distribución Estados Unidos funcionó correctamente.

#### Paso 4 — Eliminar la distribución española asociada al inglés

1. Regresar a **Configuración → Hora e idioma → Idioma**.
2. Seleccionar **Inglés (Estados Unidos) → Opciones**.
3. En **Teclados**, seleccionar **Español — QWERTY**.
4. Hacer clic en **Quitar**.
5. Comprobar que permanece **Estados Unidos — QWERTY**.

#### Paso 5 — Verificar la configuración final

Abrir nuevamente el selector con `Windows + Espacio`.

Comprobamos que quedaron disponibles estas combinaciones:

| Idioma | Distribución del teclado |
|---|---|
| Español (Uruguay) | Latinoamérica |
| Español (España, internacional) | Español |
| Inglés (Estados Unidos) | Estados Unidos |

La distribución **ENG US** quedó seleccionada y funcionando correctamente.

#### Aprendizaje

El idioma y la distribución del teclado son configuraciones independientes.

Por ejemplo, podemos tener Windows en español y utilizar una distribución estadounidense si corresponde a nuestro teclado físico.

**Conclusión:** corregimos la distribución del idioma inglés sin eliminar los idiomas españoles ni cambiar el idioma de visualización de Windows 10.

### 5.4. Elegir el tipo de uso del equipo

Windows preguntó cómo deseábamos configurar el dispositivo.

Seleccionamos:

**Configurar para uso personal**

**¿Por qué?**

Porque se trata de una máquina virtual destinada al aprendizaje personal.

No estamos incorporando el equipo a la administración de una organización.

### 5.5. Seleccionar una cuenta sin conexión

Durante la configuración, Windows ofreció iniciar sesión con una cuenta de Microsoft.

En nuestra práctica elegimos crear una cuenta local.

**Procedimiento:**

1. Buscar y seleccionar **Cuenta sin conexión**.
2. En la siguiente pantalla, seleccionar **Experiencia limitada**.
3. Continuar con la configuración de una cuenta local.

**¿Qué es una cuenta local?**

Es una cuenta de usuario administrada dentro de Windows, sin requerir que el inicio de sesión utilice una cuenta de Microsoft.

### 5.6. Crear el usuario local

Windows solicitó un nombre para el usuario.

Introdujimos:

`Osmaily`

**Procedimiento:**

1. Escribir `Osmaily` en el campo de nombre.
2. Confirmar para continuar.

**Usuario local creado: Osmaily.**

### 5.7. Configurar la contraseña

Windows solicitó establecer una contraseña para la cuenta local.

**Procedimiento:**

1. Introducir una contraseña.
2. Continuar.
3. Volver a escribirla para confirmarla.
4. Avanzar a la siguiente pantalla.

**Nota de seguridad:** no debemos escribir la contraseña real en este documento ni publicarla en GitHub.

### 5.8. Configurar las preguntas de seguridad

Windows solicitó responder tres preguntas de seguridad.

**Procedimiento:**

1. Seleccionar la primera pregunta.
2. Introducir su respuesta.
3. Repetir con la segunda pregunta.
4. Repetir con la tercera pregunta.
5. Finalizar esta etapa.

Las tres preguntas fueron configuradas correctamente.

**Nota de seguridad:** tampoco debemos publicar las preguntas seleccionadas ni sus respuestas.

### 5.9. Configuración relacionada con Microsoft Edge

Windows mostró una pantalla con el mensaje:

**Tenga siempre acceso a los datos de exploración recientes**

La opción que seleccionamos fue:

**Ahora no**

Con esto continuamos sin habilitar esa propuesta durante la configuración inicial.

### 5.10. Configurar las opciones de privacidad

Windows mostró varias opciones relacionadas con privacidad y personalización.

Revisamos cada una y seleccionamos los siguientes valores:

| Opción | Valor seleccionado |
|---|---|
| Ubicación | No |
| Encontrar mi dispositivo | No |
| Datos de diagnóstico | Enviar Datos de diagnóstico requeridos |
| Entrada manuscrita y escritura | No |
| Experiencias personalizadas | No |
| Id. de publicidad | No |

#### ¿Qué significan estas opciones?

**Ubicación:** permite que Windows y ciertas aplicaciones utilicen información sobre la ubicación del dispositivo.

**Encontrar mi dispositivo:** función que puede ayudar a localizar un equipo cuando está configurada y disponible.

**Datos de diagnóstico:** información que Windows envía a Microsoft para funciones de diagnóstico y funcionamiento del servicio.

**Entrada manuscrita y escritura:** configuración relacionada con el uso de información de escritura para mejorar determinados servicios.

**Experiencias personalizadas:** permite utilizar ciertos datos para ofrecer recomendaciones y experiencias adaptadas.

**Id. de publicidad:** identificador utilizado por aplicaciones compatibles para personalización de anuncios.

En nuestra práctica decidimos desactivar las opciones opcionales y mantener únicamente el nivel requerido de diagnóstico.

### 5.11. Pantalla Personalicemos su experiencia

Windows mostró la pantalla:

**Personalicemos su experiencia**

En este paso seleccionamos:

**Omitir**

No configuramos categorías adicionales de uso.

### 5.12. Finalizar la configuración inicial

Después de completar las pantallas anteriores:

1. Esperar a que Windows termine de preparar la cuenta.
2. Permitir que concluya la configuración.
3. Esperar a que aparezca el escritorio.

**Resultado:** Windows 10 Pro inició correctamente y mostró el escritorio del usuario `Osmaily`.

---

## 6. Comprobaciones finales de Windows 10 Pro

Después de instalar y configurar el sistema, realizamos varias comprobaciones para confirmar que la instalación había terminado correctamente.

### 6.1. Comprobar edición, versión y compilación

**Paso 1 — Abrir Ejecutar**

Presionar:

`Windows + R`

**Paso 2 — Ejecutar el comando**

Escribir:

`winver`

Presionar **Enter**.

**Paso 3 — Revisar la información**

Comprobar la edición y versión mostradas.

En nuestra práctica se verificó:

| Dato | Resultado |
|---|---|
| Edición | Windows 10 Pro |
| Versión | 22H2 |
| Compilación del sistema operativo | 19045.3803 |

La información comprobó que la edición instalada era Windows 10 Pro.

### 6.2. Revisar los datos del equipo

**Paso 1 — Abrir Configuración**

1. Abrir el menú **Inicio**.
2. Seleccionar **Configuración**.

**Paso 2 — Abrir Sistema**

1. Seleccionar **Sistema**.
2. Buscar **Acerca de**.

**Paso 3 — Revisar las especificaciones**

En esta pantalla verificamos:

- Procesador.
- Memoria RAM instalada.
- Arquitectura del sistema.
- Edición de Windows.
- Versión.
- Compilación.

### Valores observados

| Dato | Resultado |
|---|---|
| Procesador presentado al invitado | Intel Core i7-8750H |
| RAM instalada | 4,00 GB |
| Tipo de sistema | Sistema operativo de 64 bits, procesador x64 |
| Edición | Windows 10 Pro |
| Versión | 22H2 |
| Fecha de instalación | 10/11/2026 |
| Compilación | 19045.3803 |
| Windows Feature Experience Pack | 1000.19053.1000.0 |

**Importante:** Windows puede mostrar el modelo del procesador físico anfitrión, aunque VirtualBox haya asignado solamente 2 procesadores virtuales.

### 6.3. Comprobar el usuario local

Para revisar la cuenta:

1. Abrir **Inicio**.
2. Entrar en **Configuración**.
3. Seleccionar **Cuentas**.
4. Abrir **Tu información**.
5. Revisar el nombre y tipo de cuenta.

En nuestra práctica, el usuario configurado fue:

`Osmaily`

La cuenta se creó mediante el procedimiento de **Cuenta sin conexión**.

### 6.4. Comprobar el estado de activación

**Paso 1 — Abrir Configuración**

1. Seleccionar **Inicio**.
2. Hacer clic en **Configuración**.

**Paso 2 — Abrir Activación**

1. Seleccionar **Actualización y seguridad**.
2. Buscar **Activación**.

**Paso 3 — Revisar el resultado**

Windows mostró:

**Windows no está activado**

Y el código:

`0xC004F213`

El mensaje indicaba que no se había encontrado una clave de producto en el dispositivo.

### ¿Qué significa este resultado?

Windows se instaló correctamente, pero no tenía una licencia activada.

**Instalación y activación son procesos distintos.**

Para activar Windows normalmente se necesita una licencia válida o un derecho digital de activación aplicable a esa instalación.

### 6.5. Consideración sobre Windows 10

El soporte general de Windows 10 finalizó el **14 de octubre de 2025**.

Por ese motivo, esta máquina virtual se utiliza principalmente como entorno de aprendizaje.

Es recomendable evitar su uso para actividades sensibles en Internet y limitar la exposición a servicios que no sean necesarios para las prácticas.

---

## 7. Incidencias registradas

Durante esta práctica encontramos las siguientes situaciones:

| Incidencia u observación | Acción realizada | Resultado |
|---|---|---|
| Interrupción de instalación por apagado del anfitrión | Volver a iniciar el instalador | Se pudo retomar el procedimiento desde cero |
| Particiones del intento incompleto | Eliminar las particiones del disco virtual de práctica | Disco nuevamente sin asignar |
| Preparación de archivos lenta | Mantener la máquina encendida y permitir que avanzara | Instalación completada |
| Solicitud de clave de producto | Seleccionar No tengo clave de producto | Se permitió continuar |
| Selección de cuenta Microsoft | Elegir Cuenta sin conexión y Experiencia limitada | Cuenta local creada |
| Windows sin activar | Consultar el estado en Activación | Código 0xC004F213 identificado |

---

## 8. Resumen cronológico de la instalación

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar `PC-Windows10-Osmaily`.
3. Iniciar la máquina virtual desde la ISO.
4. Revisar el idioma y las preferencias iniciales.
5. Seleccionar **Instalar ahora**.
6. Continuar sin introducir una clave de producto.
7. Seleccionar **Windows 10 Pro**.
8. Aceptar los términos de licencia.
9. Seleccionar **Personalizada: instalar solo Windows (avanzado)**.
10. Seleccionar el disco virtual.
11. Iniciar la instalación.
12. Detectar la interrupción del primer intento.
13. Eliminar las particiones incompletas del disco virtual.
14. Volver a instalar desde el espacio sin asignar.
15. Esperar a que Windows termine la instalación.
16. Seleccionar **Uruguay** como región.
17. Configurar **Español** como teclado principal.
18. Agregar **Inglés (Estados Unidos)** con distribución **Español**.
19. Seleccionar **Configurar para uso personal**.
20. Elegir **Cuenta sin conexión**.
21. Seleccionar **Experiencia limitada**.
22. Crear el usuario local `Osmaily`.
23. Configurar y confirmar la contraseña.
24. Responder las tres preguntas de seguridad.
25. Seleccionar **Ahora no** en la propuesta de Microsoft Edge.
26. Configurar las opciones de privacidad.
27. Seleccionar **Omitir** en Personalicemos su experiencia.
28. Esperar a que aparezca el escritorio.
29. Ejecutar `winver` para comprobar la versión.
30. Revisar **Sistema → Acerca de**.
31. Consultar **Actualización y seguridad → Activación**.

---

## 9. Principales aprendizajes

### 9.1. Crear una máquina virtual no instala automáticamente Windows

La creación de la máquina define el hardware virtual.

La instalación del sistema operativo es una etapa posterior.

### 9.2. Una ISO puede utilizarse como medio de arranque

VirtualBox permite iniciar el instalador directamente desde la imagen ISO.

### 9.3. El instalador permite seleccionar diferentes ediciones

En esta práctica seleccionamos Windows 10 Pro.

La edición elegida puede tener funcionalidades diferentes de otras ediciones de Windows.

### 9.4. Una instalación personalizada permite elegir el disco

Podemos seleccionar el almacenamiento donde se instalará Windows y revisar las particiones.

### 9.5. Una instalación interrumpida puede dejar particiones incompletas

Aprendimos a identificar esas particiones y repetir una instalación limpia en nuestro disco virtual de práctica.

### 9.6. Windows puede utilizar cuentas locales

No es obligatorio utilizar una cuenta Microsoft en todos los escenarios de instalación de Windows 10.

En esta práctica creamos una cuenta local.

### 9.7. La configuración inicial incluye opciones de privacidad

Es importante revisar cada pantalla en lugar de aceptar automáticamente todas las propuestas.

### 9.8. Instalación y activación no son lo mismo

El sistema operativo puede terminar de instalarse aunque todavía no esté activado.

### 9.9. Siempre debemos verificar la instalación

Comprobar la versión, edición, memoria, arquitectura y activación ayuda a identificar posibles diferencias entre lo que configuramos y lo que finalmente quedó instalado.

---

## 10. Resultado final de la práctica

**Windows 10 Pro instalado y configurado correctamente.**

| Elemento | Resultado |
|---|---|
| Máquina virtual | PC-Windows10-Osmaily |
| Sistema operativo | Windows 10 Pro |
| Arquitectura | 64 bits |
| Versión | 22H2 |
| Compilación | 19045.3803 |
| RAM | 4 GB |
| Disco virtual | 64 GB |
| Usuario local | Osmaily |
| Región | Uruguay |
| Instalación | Finalizada |
| Escritorio | Funcional |
| Activación | Pendiente de licencia válida |

La instalación finalizó correctamente, y el sistema quedó preparado para continuar con la configuración de las herramientas de integración de VirtualBox.

### Siguiente práctica

[Práctica 04 — Instalación y configuración de Guest Additions](04-instalacion-guest-additions.md)

En esa práctica documentaremos:

- Cómo insertar la imagen de Guest Additions.
- Cómo ejecutar el instalador.
- El problema del primer reinicio.
- La segunda instalación de los complementos.
- Cómo verificar el controlador gráfico.
- Cómo revisar la configuración de pantalla.
- Cómo cambiar la resolución.
- Cómo comprobar el modo pantalla completa.
- Cómo verificar la integración del ratón.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

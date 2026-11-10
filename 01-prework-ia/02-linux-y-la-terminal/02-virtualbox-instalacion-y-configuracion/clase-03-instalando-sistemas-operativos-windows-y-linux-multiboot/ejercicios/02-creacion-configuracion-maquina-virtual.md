# Práctica 01 — Creación y configuración de una máquina virtual para Windows 10 Pro

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase 04:** Instalación únicamente de Linux o Windows 10  
**Herramienta:** Oracle VirtualBox  
**Máquina virtual:** `PC-Windows10-Osmaily`  
**Sistema operativo invitado:** Windows 10 Pro (64 bits)

---

## 1. Objetivo de la práctica

Aprender a crear una máquina virtual en Oracle VirtualBox y configurar los recursos necesarios para instalar Windows 10 Pro.

Durante esta práctica realizaremos lo siguiente:

1. Identificar las características del equipo anfitrión.
2. Comprobar los requisitos previos.
3. Crear una máquina virtual nueva.
4. Configurar el nombre, la ubicación y la imagen ISO.
5. Elegir entre instalación manual o desatendida.
6. Asignar memoria RAM y procesadores.
7. Configurar el tipo de firmware.
8. Crear un disco duro virtual.
9. Revisar la configuración y finalizar la creación.
10. Aprender a consultar posteriormente los parámetros de la máquina.

**Alcance de esta práctica:** termina cuando la máquina virtual está creada y lista para iniciar la instalación de Windows 10 Pro.

La instalación del sistema operativo se documentará en la **Práctica 02**.

---

## 2. Equipo utilizado

La máquina virtual se creó en una computadora con las siguientes características:

| Componente | Especificación |
|---|---|
| Equipo | ASUS TUF Gaming FX705GM |
| Sistema anfitrión | Windows 11 Home |
| Procesador | Intel Core i7-8750H |
| Núcleos físicos | 6 |
| Hilos del procesador | 12 |
| Memoria RAM | 32 GB |
| Arquitectura | x64 |
| Software de virtualización | Oracle VirtualBox |

### 2.1. ¿Qué es el sistema anfitrión?

El **sistema anfitrión**, también llamado *Host*, es el sistema operativo instalado directamente en la computadora física.

En nuestra práctica:

**Host: Windows 11 Home.**

Es el sistema desde el cual abrimos Oracle VirtualBox y administramos las máquinas virtuales.

### 2.2. ¿Qué es el sistema invitado?

El **sistema invitado**, también llamado *Guest*, es el sistema operativo que instalamos y ejecutamos dentro de una máquina virtual.

En nuestra práctica:

**Guest: Windows 10 Pro (64 bits).**

### 2.3. ¿Por qué utilizamos una máquina virtual?

Una máquina virtual permite instalar otros sistemas operativos dentro de un entorno separado, sin reemplazar el sistema operativo principal.

Entre sus ventajas se encuentran:

- Probar diferentes sistemas operativos.
- Practicar instalaciones y configuraciones.
- Experimentar con particiones virtuales.
- Ejecutar programas en un entorno separado.
- Crear varias máquinas virtuales con configuraciones distintas.
- Utilizar instantáneas para conservar estados de una instalación.

**Importante:** una máquina virtual utiliza recursos reales de la computadora anfitriona, como memoria RAM, procesador y almacenamiento.

---

## 3. Requisitos previos

Antes de comenzar necesitamos:

- Oracle VirtualBox instalado en Windows 11.
- Una imagen ISO de Windows 10.
- Memoria RAM disponible.
- Espacio libre suficiente en el disco físico.
- Virtualización de hardware habilitada.

### 3.1. Imagen ISO utilizada

Para esta instalación utilizamos:

`E:\Descargas\ISOS\Windows.iso`

### ¿Qué es una imagen ISO?

Una **ISO** es un archivo que contiene la imagen de un medio de instalación, como un DVD.

VirtualBox puede conectar directamente ese archivo a una unidad óptica virtual.

De esta manera, podemos instalar Windows sin crear una memoria USB de arranque.

### ¿De dónde obtuvimos la ISO?

Utilizamos la herramienta oficial de Microsoft para crear el medio de instalación de Windows 10.

Ese procedimiento se encuentra documentado por separado en:

[Guía para obtener una ISO de Windows 10](01-prework-ia/02-linux-y-la-terminal/02-virtualbox-instalacion-y-configuracion/clase-03-instalando-sistemas-operativos-windows-y-linux-multiboot/ejercicios/01-creacion-iso-windows-10.md)

**En esta práctica partimos de la ISO ya descargada.**

---

## 4. Creación de la máquina virtual en Oracle VirtualBox

Este capítulo contiene **todo el procedimiento de creación de la máquina virtual**, desde que abrimos Oracle VirtualBox hasta que finalizamos el asistente.

Los apartados `4.2.1` a `4.2.6` corresponden a las secciones y decisiones del mismo asistente de creación.

### 4.1. Abrir Oracle VirtualBox

**Paso 1 — Iniciar Windows 11**

1. Encender la computadora.
2. Esperar a que cargue Windows 11.
3. Iniciar sesión en el sistema.

**Paso 2 — Abrir Oracle VirtualBox**

1. Abrir el menú **Inicio** de Windows 11.
2. Buscar **Oracle VirtualBox**.
3. Abrir **Oracle VirtualBox Administrador**.
4. Esperar a que aparezca su ventana principal.

En esta ventana encontramos la lista de máquinas virtuales existentes y los controles para administrarlas.

### 4.2. Crear una máquina nueva

**Paso 1 — Localizar el botón de creación**

1. En la ventana principal de Oracle VirtualBox, buscar el botón **Nueva**.
2. Hacer clic en **Nueva**.

**Paso 2 — Abrir el asistente**

Se abrirá el asistente de creación de máquinas virtuales.

Este asistente permite definir los parámetros necesarios antes de crear la máquina.

**Secciones que vamos a revisar:**

- **4.2.1. Virtual machine name and operating system:** nombre, ubicación e imagen ISO.
- **4.2.2. Proceed with Unattended Installation:** elección entre instalación desatendida y manual.
- **4.2.3. Set up unattended guest OS installation:** parámetros de automatización.
- **4.2.4. Specify virtual hardware:** memoria RAM, procesadores y EFI.
- **4.2.5. Specify virtual hard disk:** creación y configuración del disco virtual.
- **4.2.6. Finalizar la creación:** revisión de los valores y creación definitiva.

A continuación, seguiremos ese orden.

---

### 4.2.1. Virtual machine name and operating system

En esta sección definimos la identidad de la nueva máquina virtual y seleccionamos el sistema operativo que deseamos instalar.

#### Paso 1 — Configurar VM Name

Localizar el campo:

**VM Name**

Introducir:

`PC-Windows10-Osmaily`

**¿Para qué sirve?**

Permite identificar la máquina virtual dentro de Oracle VirtualBox.

También ayuda a organizar sus archivos y diferenciarla de otras máquinas.

Este nombre se utilizará a lo largo de las demás prácticas.

#### Paso 2 — Configurar VM Folder

Localizar:

**VM Folder**

Seleccionar:

`E:\VirtualBox`

**¿Para qué sirve?**

Indica la carpeta en la que VirtualBox guardará los archivos de la máquina virtual.

Elegimos una ubicación en la unidad `E:` para mantener organizadas nuestras máquinas virtuales.

El directorio de esta máquina quedará ubicado dentro de esa carpeta.

#### Paso 3 — Configurar ISO Image

Localizar:

**ISO Image**

Realizar lo siguiente:

1. Abrir el selector de imágenes ISO.
2. Buscar la unidad `E:`.
3. Entrar en la carpeta `Descargas`.
4. Abrir la carpeta `ISOS`.
5. Seleccionar el archivo `Windows.iso`.
6. Confirmar la selección.

La ruta final es:

`E:\Descargas\ISOS\Windows.iso`

**¿Para qué sirve?**

Este campo indica qué imagen de instalación utilizará VirtualBox para arrancar el sistema operativo.

En nuestro caso, la ISO contiene el instalador de Windows 10.

#### Paso 4 — Revisar OS

Localizar:

**OS**

Comprobar:

`Microsoft Windows`

Este campo identifica la familia del sistema operativo.

#### Paso 5 — Revisar OS Version

Localizar:

**OS Version**

Comprobar:

`Windows 10 (64-bit)`

Este valor indica a VirtualBox el sistema operativo para el cual configuramos la máquina.

**Importante:** seleccionar Windows 10 aquí no instala Windows automáticamente. Solo define el tipo de sistema invitado previsto.

#### Paso 6 — Revisar OS Edition

Localizar:

**OS Edition**

Durante nuestra práctica, este campo no permitía seleccionar una edición.

Lo dejamos sin seleccionar.

Posteriormente, durante la instalación manual, Windows nos permitió elegir **Windows 10 Pro**.

#### Resumen de la sección 4.2.1

| Campo | Valor utilizado |
|---|---|
| VM Name | PC-Windows10-Osmaily |
| VM Folder | E:\VirtualBox |
| ISO Image | E:\Descargas\ISOS\Windows.iso |
| OS | Microsoft Windows |
| OS Version | Windows 10 (64-bit) |
| OS Edition | Sin seleccionar |

---

### 4.2.2. Proceed with Unattended Installation

En el asistente aparece la opción:

**Proceed with Unattended Installation**

Su traducción aproximada es:

**Continuar con la instalación desatendida.**

Esta opción permite decidir cómo realizaremos la instalación del sistema operativo.

#### Paso 1 — Localizar la opción

1. Permanecer en el asistente de creación.
2. Buscar **Proceed with Unattended Installation**.
3. Comprobar si la casilla está marcada.

#### Paso 2 — Comprender las dos alternativas

**Opción A — Casilla marcada**

VirtualBox prepara una instalación desatendida.

Esto significa que puede utilizar datos introducidos previamente para automatizar partes del proceso.

Por ejemplo:

- Usuario.
- Contraseña.
- Nombre del equipo.
- Clave de producto, cuando corresponda.
- Otros parámetros de configuración.

Esta alternativa resulta útil cuando necesitamos crear instalaciones similares repetidamente.

**Opción B — Casilla desmarcada**

VirtualBox no utilizará ese procedimiento de instalación desatendida.

La instalación se realizará de forma manual.

El usuario podrá interactuar directamente con las pantallas del instalador de Windows.

#### Paso 3 — Comparar las alternativas

| Característica | Marcada | Desmarcada |
|---|---|---|
| Tipo de instalación | Desatendida | Manual |
| Configuración previa de usuario | Sí | No, mediante este asistente |
| Configuración previa de contraseña | Sí | No, mediante este asistente |
| Interacción durante la instalación | Menor | Mayor |
| Automatización | Sí | No se utiliza la instalación desatendida |
| Adecuada para practicar cada pantalla | Menos | Más |

#### Paso 4 — Seleccionar nuestra configuración

Dejamos:

**Proceed with Unattended Installation: Desmarcado**

#### ¿Por qué elegimos instalación manual?

Porque el objetivo de esta práctica era aprender:

- Cómo funciona el instalador de Windows.
- Cómo seleccionar la edición del sistema operativo.
- Cómo elegir el disco de instalación.
- Cómo configurar Windows desde cero.
- Qué decisiones aparecen durante la configuración inicial.

**Resultado:** utilizaremos el instalador de Windows 10 manualmente.

---

### 4.2.3. Set up unattended guest OS installation

Esta sección contiene los datos que VirtualBox puede utilizar cuando se selecciona una instalación desatendida.

En nuestra práctica la revisamos para comprender su función, aunque no utilizamos sus campos.

#### Paso 1 — Localizar la sección

Buscar en el asistente:

**Set up unattended guest OS installation**

Abrir la sección para observar sus opciones.

#### Paso 2 — Identificar los campos

Entre los campos que se mostraban estaban:

| Campo u opción | ¿Para qué sirve? |
|---|---|
| User Name | Definir un nombre de usuario |
| Contraseña | Establecer la contraseña |
| Confirm Password | Confirmar la contraseña |
| Product Key | Introducir una clave de producto |
| Host Name | Definir el nombre del equipo |
| Domain Name | Indicar un dominio |
| Instalación en segundo plano | Ejecutar el proceso desatendido sin mostrar todas sus pantallas |
| Install Guest Additions | Solicitar la instalación automática de los complementos, cuando sea compatible |

#### Paso 3 — Comprender Host Name

**Host Name** es el nombre con el que se identifica una computadora.

Por ejemplo:

`PC-Windows10-Osmaily`

Este nombre puede utilizarse para identificar el equipo en un sistema operativo o dentro de una red.

#### Paso 4 — Comprobar los campos deshabilitados

Como desmarcamos:

**Proceed with Unattended Installation**

Los campos de esta sección quedaron deshabilitados.

Esto es normal: VirtualBox no necesita esos datos cuando no utiliza el procedimiento de instalación desatendida.

#### Configuración utilizada

No introdujimos datos de usuario, contraseña ni clave de producto en esta sección.

Estos elementos se configurarían posteriormente durante la instalación manual de Windows 10.

**Nota de seguridad:** las contraseñas reales no deben incluirse en archivos Markdown públicos ni en repositorios de GitHub.

---

### 4.2.4. Specify virtual hardware

Esta sección permite configurar los recursos de hardware que tendrá nuestra máquina virtual.

Revisamos tres parámetros principales:

1. Base Memory.
2. Number of CPUs.
3. Use EFI.

#### Paso 1 — Abrir Specify virtual hardware

1. Buscar **Specify virtual hardware**.
2. Desplegar la sección.
3. Identificar los controles de memoria, procesadores y EFI.

#### Paso 2 — Configurar Base Memory

Localizar:

**Base Memory**

El valor inicial observado fue:

`2048 MB`

Lo cambiamos a:

**4096 MB**

##### ¿Qué significa Base Memory?

Es la cantidad de memoria RAM que VirtualBox asignará a la máquina virtual mientras se encuentre en ejecución.

En nuestra práctica:

`4096 MB ≈ 4 GB`

El equipo físico dispone de 32 GB de RAM.

Por eso, asignar 4 GB a Windows 10 resulta razonable para realizar estas prácticas.

##### ¿Cómo se modifica?

1. Seleccionar el campo **Base Memory**.
2. Introducir `4096`, o ajustar el control deslizante hasta ese valor.
3. Comprobar que la unidad es MB.
4. Confirmar visualmente que el campo indica `4096 MB`.

#### Paso 3 — Configurar Number of CPUs

Localizar:

**Number of CPUs**

El valor inicial observado fue:

`1`

Lo cambiamos a:

**2**

##### ¿Qué significa Number of CPUs?

Indica cuántos procesadores virtuales tendrá disponibles el sistema invitado.

Nuestro procesador físico es un Intel Core i7-8750H con 6 núcleos y 12 hilos.

Asignar 2 procesadores virtuales proporciona recursos suficientes para esta instalación sin utilizar todos los procesadores lógicos del anfitrión.

##### ¿Cómo se modifica?

1. Seleccionar **Number of CPUs**.
2. Cambiar el valor a `2`.
3. Comprobar que el campo muestra `2`.

#### Paso 4 — Revisar Use EFI

Localizar:

**Use EFI**

Mantener:

**Desmarcado**

##### ¿Qué significa EFI?

EFI, y su evolución UEFI, es una interfaz de firmware utilizada durante el arranque del sistema operativo.

VirtualBox permite crear máquinas con firmware UEFI o con BIOS tradicional.

##### ¿Qué ocurre con la casilla?

- **Marcada:** se utiliza firmware EFI/UEFI.
- **Desmarcada:** se utiliza el firmware BIOS tradicional de VirtualBox.

##### ¿Por qué la dejamos desmarcada?

En esta práctica decidimos instalar Windows 10 utilizando el modo BIOS tradicional.

Windows 10 admite tanto instalaciones BIOS como UEFI, según la configuración de la máquina.

#### Resumen de la sección 4.2.4

| Campo | Valor inicial | Valor seleccionado |
|---|---|---|
| Base Memory | 2048 MB | 4096 MB |
| Number of CPUs | 1 | 2 |
| Use EFI | Desmarcado | Desmarcado |

---

### 4.2.5. Specify virtual hard disk

En esta sección configuramos el disco virtual que utilizará Windows 10.

El disco virtual será un archivo almacenado en Windows 11, pero Windows 10 lo reconocerá como una unidad de almacenamiento.

#### Paso 1 — Abrir Specify virtual hard disk

1. Buscar la sección **Specify virtual hard disk**.
2. Desplegarla.
3. Revisar las opciones disponibles.

#### Paso 2 — Seleccionar Create a New Virtual Hard Disk

Comprobar que está seleccionada:

**Create a New Virtual Hard Disk**

##### ¿Qué significa?

Solicita a VirtualBox que cree un disco nuevo para esta máquina virtual.

No vamos a utilizar el disco de otra máquina.

#### Paso 3 — Revisar la ubicación del archivo

El archivo de disco virtual se ubicará en:

`E:\VirtualBox\PC-Windows10-Osmaily\PC-Windows10-Osmaily.vdi`

##### ¿Qué representa esta ruta?

- `E:`: unidad física donde guardamos la máquina.
- `VirtualBox`: carpeta que contiene las máquinas virtuales.
- `PC-Windows10-Osmaily`: carpeta de la máquina.
- `PC-Windows10-Osmaily.vdi`: archivo de disco duro virtual.

#### Paso 4 — Configurar Disk Size

Localizar:

**Disk Size**

El valor inicial era:

`50,00 GB`

Lo cambiamos a:

**64,00 GB**

##### ¿Para qué sirve Disk Size?

Define la capacidad máxima del disco duro virtual.

En nuestro caso, el sistema invitado dispondrá de un disco de aproximadamente 64 GB.

Este espacio se utilizará para Windows 10, actualizaciones, programas y archivos.

##### ¿Cómo se modifica?

1. Seleccionar el campo **Disk Size**.
2. Cambiar el valor a `64`.
3. Comprobar que la unidad indicada es GB.
4. Verificar que el resultado sea `64,00 GB`.

#### Paso 5 — Configurar Hard Disk File Type and Format

Localizar:

**Hard Disk File Type and Format**

Seleccionar:

**VDI (VirtualBox Disk Image)**

##### ¿Qué es VDI?

VDI significa *VirtualBox Disk Image*.

Es el formato nativo de almacenamiento virtual de Oracle VirtualBox.

El disco tendrá la extensión:

`.vdi`

##### ¿Por qué utilizamos VDI?

Porque trabajamos con Oracle VirtualBox y no necesitamos otro formato de disco virtual para esta práctica.

#### Paso 6 — Revisar Reservar completamente

Localizar la casilla:

**Reservar completamente**

Mantener:

**Desmarcada**

##### ¿Qué significa esta opción?

Permite decidir si el espacio del disco virtual se reserva íntegramente desde su creación.

Cuando se encuentra desmarcada, el archivo VDI utiliza almacenamiento dinámico.

##### ¿Qué es un disco dinámico?

Es un disco virtual cuyo archivo físico puede crecer a medida que se guardan datos.

Por ejemplo:

Un disco VDI configurado con una capacidad máxima de 64 GB no necesariamente ocupa 64 GB en el equipo anfitrión desde el primer momento.

Su archivo aumenta de tamaño según el uso, hasta alcanzar el límite configurado.

**Importante:** al eliminar archivos dentro de Windows 10, el archivo VDI no necesariamente reduce automáticamente su tamaño en Windows 11.

#### Paso 7 — Revisar Split Disk Into 2 GB Parts

Localizar:

**Split Disk Into 2 GB Parts**

Mantener:

**Desmarcado**

##### ¿Qué significa?

Permite dividir el almacenamiento del disco virtual en varios archivos de aproximadamente 2 GB.

En esta práctica no necesitábamos dividirlo.

#### Paso 8 — Revisar las alternativas que no utilizamos

En el asistente también aparecían otras dos opciones.

**Usar un archivo de disco duro virtual existente**

Permite seleccionar un archivo de disco virtual que ya fue creado anteriormente.

No la seleccionamos.

**Create Virtual Machine Without a Virtual Hard Disk**

Permite crear una máquina virtual sin añadirle un disco duro en ese momento.

Tampoco la seleccionamos.

Como queremos instalar Windows 10 en un disco nuevo, utilizamos **Create a New Virtual Hard Disk**.

#### Resumen de la sección 4.2.5

| Campo u opción | Valor utilizado |
|---|---|
| Create a New Virtual Hard Disk | Seleccionado |
| Ubicación del archivo | E:\VirtualBox\PC-Windows10-Osmaily\PC-Windows10-Osmaily.vdi |
| Disk Size | 64,00 GB |
| Hard Disk File Type and Format | VDI (VirtualBox Disk Image) |
| Reservar completamente | Desmarcado |
| Split Disk Into 2 GB Parts | Desmarcado |
| Usar un archivo de disco duro virtual existente | No seleccionado |
| Create Virtual Machine Without a Virtual Hard Disk | No seleccionado |

---

### 4.2.6. Finalizar la creación de la máquina virtual

Después de configurar las secciones anteriores, debemos revisar todos los parámetros.

#### Paso 1 — Revisar la identificación

Comprobar:

- VM Name: `PC-Windows10-Osmaily`.
- VM Folder: `E:\VirtualBox`.
- ISO Image: `E:\Descargas\ISOS\Windows.iso`.
- OS: `Microsoft Windows`.
- OS Version: `Windows 10 (64-bit)`.

#### Paso 2 — Revisar el tipo de instalación

Comprobar:

**Proceed with Unattended Installation: Desmarcado**

Así tendremos una instalación manual.

#### Paso 3 — Revisar el hardware virtual

Comprobar:

- Base Memory: `4096 MB`.
- Number of CPUs: `2`.
- Use EFI: desmarcado.

#### Paso 4 — Revisar el disco virtual

Comprobar:

- Disco nuevo seleccionado.
- Tamaño de 64 GB.
- Formato VDI.
- Reservar completamente desmarcado.
- Split Disk Into 2 GB Parts desmarcado.

#### Paso 5 — Crear la máquina

1. Localizar el botón **Terminar**.
2. Hacer clic en **Terminar**.
3. Esperar a que VirtualBox complete la creación.
4. Regresar a la ventana principal de Oracle VirtualBox Administrador.

#### Paso 6 — Comprobar el resultado

Buscar en la lista de máquinas virtuales:

`PC-Windows10-Osmaily`

Comprobar que aparezca en estado:

**Apagada**

### Resultado

La máquina virtual quedó creada correctamente.

Todavía no se había instalado Windows 10.

Ese proceso corresponde a la siguiente práctica.

---

## 5. Cómo volver a revisar la configuración de una máquina virtual

Una vez creada la máquina, podemos consultar sus parámetros cuando los necesitemos.

Esto resulta útil cuando estudiamos una configuración o queremos solucionar un problema.

### 5.1. Abrir la configuración de la máquina

1. Abrir **Oracle VirtualBox Administrador**.
2. Localizar `PC-Windows10-Osmaily` en la lista.
3. Seleccionar la máquina.
4. Comprobar que esté apagada antes de modificar sus parámetros de hardware.
5. Hacer clic en **Configuración**.

Se abrirá la ventana de configuración específica de esta máquina virtual.

**Importante:** esta ventana no es lo mismo que **Archivo → Preferencias**, que contiene opciones generales de VirtualBox.

### 5.2. Revisar Sistema

1. Dentro de Configuración, seleccionar **Sistema**.
2. Abrir las pestañas correspondientes a placa base y procesador.
3. Comprobar la memoria RAM, los procesadores y la configuración de EFI.

Valores utilizados:

| Parámetro | Valor |
|---|---|
| Memoria base | 4096 MB |
| Procesadores | 2 |
| EFI | Desactivado |

### 5.3. Revisar Almacenamiento

1. En la ventana de Configuración, seleccionar **Almacenamiento**.
2. Buscar el controlador donde esté conectado el disco virtual.
3. Seleccionar el archivo `PC-Windows10-Osmaily.vdi`.
4. Revisar sus propiedades.

Comprobar que corresponde al disco de 64 GB creado para esta máquina.

### 5.4. Revisar General

1. En Configuración, seleccionar **General**.
2. Revisar el nombre y los datos de identificación de la máquina.

Esto permite comprobar que estamos trabajando sobre la máquina virtual correcta.

---

## 6. Resumen final de la configuración utilizada

| Campo u opción | Configuración definitiva |
|---|---|
| VM Name | PC-Windows10-Osmaily |
| VM Folder | E:\VirtualBox |
| ISO Image | E:\Descargas\ISOS\Windows.iso |
| OS | Microsoft Windows |
| OS Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |
| Base Memory | 4096 MB |
| Number of CPUs | 2 |
| Use EFI | Desmarcado |
| Create a New Virtual Hard Disk | Seleccionado |
| Disk Size | 64,00 GB |
| Hard Disk File Type and Format | VDI (VirtualBox Disk Image) |
| Reservar completamente | Desmarcado |
| Split Disk Into 2 GB Parts | Desmarcado |

### Recursos asignados

**Hardware virtual:**

- 4 GB de memoria RAM.
- 2 procesadores virtuales.
- Disco duro VDI de 64 GB.
- Firmware BIOS tradicional.

**Método de instalación preparado:**

- Imagen ISO de Windows 10.
- Instalación manual.
- Sin automatización desatendida.

---

## 7. Principales aprendizajes

### 7.1. Máquina virtual y sistema operativo son elementos distintos

Primero creamos la máquina virtual, que representa el hardware.

Después instalamos Windows 10, que será el sistema operativo invitado.

### 7.2. La instalación manual permite aprender cada etapa

Al desmarcar **Proceed with Unattended Installation**, podremos interactuar con el instalador de Windows.

Esto nos permitirá estudiar mejor sus pantallas y opciones.

### 7.3. Los recursos asignados deben ajustarse al equipo anfitrión

La memoria RAM y los procesadores virtuales se obtienen de los recursos de la computadora física.

Debemos evitar asignar tantos recursos que el anfitrión quede sin memoria o capacidad de procesamiento suficiente.

### 7.4. EFI y BIOS son métodos de arranque distintos

VirtualBox permite utilizar firmware UEFI o BIOS tradicional.

En esta práctica seleccionamos BIOS.

### 7.5. VDI es un formato de disco virtual

El archivo `.vdi` representa el disco duro de Windows 10.

Puede almacenarse como un archivo dentro del sistema anfitrión.

### 7.6. Un disco dinámico no reserva inmediatamente toda su capacidad

Al dejar **Reservar completamente** desmarcado, utilizamos almacenamiento dinámico.

Esto permite aprovechar mejor el espacio físico disponible durante el crecimiento inicial del disco.

### 7.7. Cada sección del asistente cumple una función

El asistente nos permite configurar:

1. La identidad de la máquina.
2. El método de instalación.
3. Los parámetros opcionales de automatización.
4. El hardware virtual.
5. El disco de almacenamiento.

Estas opciones forman parte de un mismo procedimiento: **crear una nueva máquina virtual**.

---

## 8. Resultado de la práctica

La máquina virtual `PC-Windows10-Osmaily` fue creada correctamente en Oracle VirtualBox.

### Configuración final

- **Nombre:** PC-Windows10-Osmaily.
- **Sistema operativo previsto:** Windows 10 Pro de 64 bits.
- **Memoria RAM:** 4096 MB.
- **Procesadores virtuales:** 2.
- **Disco virtual:** VDI dinámico de 64 GB.
- **Firmware:** BIOS tradicional.
- **ISO:** `E:\Descargas\ISOS\Windows.iso`.
- **Tipo de instalación:** manual.

### Estado al finalizar

**Máquina virtual creada y preparada para instalar Windows 10 Pro.**

### Siguiente práctica

[Práctica 02 — Instalación de Windows 10 Pro](02-instalacion-windows-10-pro.md)

En la próxima nota documentaremos:

- Inicio de la máquina virtual.
- Arranque desde la imagen ISO.
- Pantallas del instalador.
- Selección de Windows 10 Pro.
- Configuración del disco y sus particiones.
- Interrupción del primer intento de instalación.
- Reinicio de la instalación.
- Configuración inicial de Windows.
- Creación del usuario local.
- Opciones de privacidad.
- Comprobaciones del sistema instalado.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

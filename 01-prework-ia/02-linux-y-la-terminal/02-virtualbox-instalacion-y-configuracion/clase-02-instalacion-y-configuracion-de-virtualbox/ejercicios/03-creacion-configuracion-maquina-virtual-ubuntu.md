# Práctica 03 — Creación y configuración de una máquina virtual Ubuntu en Oracle VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox — Instalación y configuración  
**Clase:** 02 — Instalación y configuración de VirtualBox  
**Tipo:** Práctica personal  
**Sistema anfitrión:** Windows 11  
**Sistema operativo invitado:** Ubuntu 22.04.3 Desktop, 64 bits  
**Software de virtualización:** Oracle VirtualBox

---

## 1. Objetivo de la práctica

Crear y configurar una máquina virtual para instalar Ubuntu utilizando Oracle VirtualBox.

En esta práctica realizamos la configuración inicial de la máquina virtual, asignando sus recursos de hardware y creando el disco duro virtual.

A diferencia de nuestra práctica anterior con Windows 10 Pro, **no seleccionamos la imagen ISO durante la creación de la máquina virtual**.

Primero creamos la máquina y posteriormente conectamos la imagen de Ubuntu desde su configuración de almacenamiento.

De esta forma, reproducimos el procedimiento que utilizó el profesor durante la Clase 04.

### Objetivos específicos

- Crear una máquina virtual destinada a Ubuntu.
- Seleccionar correctamente el tipo de sistema operativo.
- Establecer el nombre y la ubicación de la máquina.
- Comprender qué es una instalación desatendida.
- Configurar la memoria RAM y los procesadores virtuales.
- Identificar la función del firmware EFI.
- Crear un disco duro virtual en formato VDI.
- Comprender la diferencia entre un disco dinámico y uno de tamaño completamente reservado.
- Conectar una imagen ISO después de crear la máquina.
- Verificar que VirtualBox reconoce el disco duro y el medio de instalación.
- Comprobar que la máquina puede iniciar desde la ISO de Ubuntu.

---

## 2. Entorno de trabajo

La práctica se realiza utilizando Oracle VirtualBox instalado en una computadora con Windows 11.

### 2.1. Equipo anfitrión

| Característica | Configuración |
|---|---|
| Sistema operativo | Windows 11 |
| Arquitectura | 64 bits |
| Memoria RAM física | 32 GB |
| Procesador | Intel Core i7-8750H |
| Software | Oracle VirtualBox |
| Unidad de almacenamiento utilizada | E: |

La máquina virtual se almacenará en una ubicación diferente de las carpetas predeterminadas de Windows.

### 2.2. Sistema invitado

El sistema operativo que instalaremos será:

**Ubuntu Desktop 22.04.3 LTS, arquitectura AMD64.**

Ubuntu es una distribución de GNU/Linux que puede ejecutarse como sistema operativo principal o dentro de una máquina virtual.

La denominación **AMD64** identifica la arquitectura de 64 bits compatible con procesadores x86-64, incluidos procesadores Intel y AMD.

### 2.3. Recursos asignados

| Recurso | Valor |
|---|---|
| Nombre de máquina virtual | `PC-Ubuntu-Osmaily` |
| Carpeta de máquinas virtuales | `E:\VirtualBox` |
| Sistema operativo | Linux |
| Distribución | Ubuntu |
| Versión | Ubuntu (64-bit) |
| Memoria RAM | 4096 MB |
| Procesadores virtuales | 1 |
| EFI | Deshabilitado |
| Disco virtual | 25,00 GB |
| Formato de disco | VDI |
| Reserva completa del disco | Deshabilitada |
| División en archivos de 2 GB | Deshabilitada |
| Instalación desatendida | Deshabilitada |
| ISO durante la creación | No seleccionada |

---

## 3. Abrir Oracle VirtualBox

### 3.1. Iniciar el programa

Desde Windows 11:

1. Abrimos **Oracle VirtualBox Administrador**.
2. Esperamos a que aparezca la ventana principal.
3. Localizamos la opción para crear una nueva máquina virtual.
4. Hacemos clic en **Nueva**.

### 3.2. Asistente de creación

VirtualBox abre el asistente:

**New Virtual Machine**

Este asistente permite configurar:

1. Nombre y sistema operativo.
2. Opciones de instalación desatendida.
3. Hardware virtual.
4. Disco duro virtual.

En la versión utilizada, los apartados aparecen como secciones desplegables dentro de la misma ventana.

---

## 4. Configurar el nombre y el sistema operativo

Abrimos la sección:

**Virtual machine name and operating system**

Esta es la primera sección del asistente.

### 4.1. Campo VM Name

Introducimos:

`PC-Ubuntu-Osmaily`

Este nombre identifica la máquina dentro de Oracle VirtualBox.

Nos permite distinguirla de otras máquinas virtuales, por ejemplo:

- Una máquina con Windows 10 Pro.
- Una máquina con Ubuntu.
- Una máquina con varios sistemas operativos.

**Importante:** el nombre de la máquina en VirtualBox es independiente del nombre interno que tendrá Ubuntu después de instalarse.

### 4.2. Campo VM Folder

Seleccionamos:

`E:\VirtualBox`

Este campo indica la carpeta del equipo anfitrión donde VirtualBox almacenará los archivos de la máquina virtual.

Por ejemplo:

- Archivo de configuración de la máquina.
- Disco duro virtual.
- Archivos asociados a instantáneas, cuando se creen.

### 4.3. Campo ISO Image

Dejamos:

`<no seleccionado>`

Esta es una decisión importante de nuestra práctica.

**No conectamos todavía la ISO de Ubuntu.**

En lugar de hacerlo durante la creación de la máquina, conectaremos la imagen posteriormente desde las opciones de almacenamiento.

Este procedimiento reproduce la forma de trabajo que observamos en la demostración del profesor.

### 4.4. Campo OS Edition

No seleccionamos ninguna edición.

En la captura, este campo aparece sin una selección aplicable para el procedimiento.

### 4.5. Campo OS

Seleccionamos:

`Linux`

Esto indica a VirtualBox que utilizaremos una distribución de Linux como sistema operativo invitado.

### 4.6. Campo OS Distribution

Seleccionamos:

`Ubuntu`

VirtualBox reconoce la distribución que instalaremos.

### 4.7. Campo OS Version

Seleccionamos:

`Ubuntu (64-bit)`

Este valor corresponde a una instalación de Ubuntu de 64 bits.

### 4.8. Configuración final

| Campo | Valor |
|---|---|
| VM Name | `PC-Ubuntu-Osmaily` |
| VM Folder | `E:\VirtualBox` |
| ISO Image | `<no seleccionado>` |
| OS | Linux |
| OS Distribution | Ubuntu |
| OS Version | Ubuntu (64-bit) |

---

## 5. Deshabilitar la instalación desatendida

Dentro de la primera sección aparece:

**Proceed with Unattended Installation**

Dejamos esta casilla **desmarcada**.

### 5.1. ¿Qué es una instalación desatendida?

Es un mecanismo mediante el cual VirtualBox puede automatizar determinadas etapas de la instalación del sistema operativo.

Dependiendo del sistema compatible, puede permitir establecer anticipadamente datos como:

- Usuario.
- Contraseña.
- Nombre del equipo.
- Otras opciones de instalación.

### 5.2. ¿Por qué no la utilizamos?

Nuestro objetivo es aprender el procedimiento manual.

Queremos observar y documentar las pantallas que presenta Ubuntu durante su instalación.

Esto nos permitirá practicar posteriormente:

- Selección del idioma.
- Configuración del teclado.
- Opciones de instalación.
- Particionado del disco.
- Selección de la zona horaria.
- Creación del usuario.

### 5.3. Resultado

La opción queda:

**Proceed with Unattended Installation: desmarcada.**

---

## 6. Revisar la sección de instalación desatendida

Abrimos la sección:

**Set up unattended guest OS installation**

Aunque no utilizaremos esta modalidad, revisamos los campos disponibles para comprender su función.

### 6.1. Datos mostrados

En nuestra versión de VirtualBox aparecen:

**User Name and Password**

- User Name.
- Contraseña.
- Confirm Password.

**OS Installation Options**

- Product Key.
- Host Name.
- Domain Name.
- Instalar en segundo plano.

También aparece:

**Install Guest Additions**

Y un campo que contiene la ruta de la imagen ISO de Guest Additions.

### 6.2. Valores observados

Entre los valores predeterminados de esta sección aparecen:

| Campo | Valor mostrado |
|---|---|
| User Name | `vboxuser` |
| Host Name | `PC-Ubuntu-Osmaily` |
| Domain Name | `myguest.virtualbox.org` |
| Instalar en segundo plano | Desmarcado |
| Install Guest Additions | Desmarcado |

La ruta mostrada para la imagen de Guest Additions es:

`C:\Program Files\Oracle\VirtualBox\VBoxGuestAdditions.iso`

### 6.3. ¿Modificamos estos campos?

No.

Como decidimos realizar una instalación manual, **no necesitamos configurar las opciones de instalación desatendida**.

### 6.4. ¿Instalamos Guest Additions en esta etapa?

No.

La instalación de Guest Additions se documentará por separado, siguiendo el contenido de la Clase 05.

Esto mantiene la organización de nuestro portafolio:

- Clase 02: creación de la máquina virtual.
- Clase 04: instalación de Ubuntu.
- Clase 05: instalación de Guest Additions.

---

## 7. Configurar el hardware virtual

Abrimos la sección:

**Specify virtual hardware**

Aquí configuramos la memoria RAM, el número de procesadores virtuales y el firmware.

### 7.1. Campo Base Memory

Establecemos:

`4096 MB`

Esto equivale a **4 GB de memoria RAM virtual**.

### ¿Qué significa?

VirtualBox asignará a Ubuntu una cantidad de memoria RAM tomada de los recursos del equipo anfitrión mientras la máquina esté funcionando.

La memoria asignada no representa necesariamente memoria ocupada permanentemente cuando la máquina está apagada.

### ¿Por qué seleccionamos 4096 MB?

Porque queremos reproducir la configuración mostrada por el profesor y disponer de una cantidad de memoria adecuada para esta práctica.

### 7.2. Campo Number of CPUs

Establecemos:

`1`

Esto significa que Ubuntu dispondrá de **un procesador virtual**.

### ¿Qué es un procesador virtual?

Es una unidad de procesamiento que VirtualBox presenta al sistema invitado y que utiliza los recursos de procesamiento de la computadora anfitriona.

### ¿Por qué utilizamos un procesador?

Porque esa fue la configuración utilizada por el profesor y queremos mantener consistencia con su práctica.

Para un uso posterior más exigente, la asignación podría revisarse, considerando los recursos disponibles del equipo anfitrión.

### 7.3. Campo Use EFI

Dejamos la opción:

**Use EFI: desmarcada.**

### ¿Qué es EFI?

EFI, y su evolución UEFI, son tecnologías de firmware que permiten inicializar el equipo y participar en el proceso de arranque del sistema operativo.

Al dejar esta opción deshabilitada, nuestra máquina virtual utilizará el modo de firmware BIOS tradicional de VirtualBox.

### ¿Por qué no habilitamos EFI?

Porque estamos reproduciendo la configuración utilizada por el profesor.

**Consideración para la instalación posterior:** el modo de firmware influye en cómo debe configurarse el cargador de arranque. Durante la práctica de instalación de Ubuntu comprobaremos el esquema de particiones y prepararemos los elementos que necesite GRUB.

### 7.4. Configuración final del hardware

| Campo | Valor |
|---|---|
| Base Memory | 4096 MB |
| Number of CPUs | 1 |
| Use EFI | Desmarcado |

---

## 8. Configurar el disco duro virtual

Abrimos la sección:

**Specify virtual hard disk**

En esta etapa creamos el almacenamiento donde posteriormente instalaremos Ubuntu.

### 8.1. Opción seleccionada

**Create a New Virtual Hard Disk**

Esta opción indica que queremos crear un disco duro virtual nuevo.

No reutilizaremos un disco existente.

### 8.2. Ubicación del disco virtual

VirtualBox muestra la siguiente ruta:

`E:\VirtualBox\PC-Ubuntu-Osmaily\PC-Ubuntu-Osmaily.vdi`

### ¿Qué significa?

El archivo `.vdi` representa el disco duro virtual de la máquina.

Ubuntu utilizará ese disco como si fuera una unidad de almacenamiento conectada a una computadora.

### 8.3. Campo Disk Size

Establecemos:

`25,00 GB`

Esta será la capacidad nominal del disco virtual.

### ¿Por qué seleccionamos 25 GB?

Porque es la capacidad que utilizó el profesor durante la demostración de instalación individual de Ubuntu.

Es importante tener presente que esta cantidad representa el espacio disponible dentro del disco virtual, no necesariamente el tamaño inicial que ocupará el archivo `.vdi` en Windows 11.

### 8.4. Formato de disco duro

En **Hard Disk File Type and Format** seleccionamos:

`VDI (VirtualBox Disk Image)`

### ¿Qué es VDI?

Es un formato de archivo de disco virtual utilizado por VirtualBox.

Permite almacenar los datos que el sistema invitado escribe en su disco.

### 8.5. Opción Reservar completamente

Dejamos desmarcada:

**Reservar completamente**

### ¿Qué significa?

Al no reservar completamente el tamaño, VirtualBox puede utilizar un disco de asignación dinámica.

Esto significa que el archivo físico del disco virtual puede crecer a medida que Ubuntu almacena información, hasta alcanzar su capacidad configurada.

### Ejemplo

Aunque el disco tenga una capacidad nominal de 25 GB, el archivo `.vdi` no necesita ocupar necesariamente esos 25 GB desde el primer momento.

Su tamaño dependerá de los datos escritos y del comportamiento del formato de almacenamiento.

### 8.6. Opción Split Disk Into 2 GB Parts

Dejamos desmarcada:

**Split Disk Into 2 GB Parts**

### ¿Para qué sirve?

Permite dividir el almacenamiento virtual en partes de 2 GB cuando se utiliza una configuración compatible con esta modalidad.

En nuestra práctica no necesitamos dividir el disco.

### 8.7. Opciones no seleccionadas

No utilizamos:

- **Usar un archivo de disco duro virtual existente.**
- **Create Virtual Machine Without a Virtual Hard Disk.**

Porque queremos crear un disco VDI nuevo para Ubuntu.

### 8.8. Configuración final del disco

| Campo | Valor |
|---|---|
| Opción | Create a New Virtual Hard Disk |
| Ubicación | `E:\VirtualBox\PC-Ubuntu-Osmaily\PC-Ubuntu-Osmaily.vdi` |
| Disk Size | 25,00 GB |
| Formato | VDI |
| Reservar completamente | Desmarcado |
| Split Disk Into 2 GB Parts | Desmarcado |

---

## 9. Finalizar la creación de la máquina virtual

Una vez revisadas todas las secciones, hacemos clic en:

**Terminar**

### 9.1. ¿Qué realiza VirtualBox?

Crea la definición de la máquina virtual y prepara los archivos necesarios para su funcionamiento.

Entre ellos, el disco virtual VDI que configuramos anteriormente.

### 9.2. Resultado

La máquina virtual aparece en Oracle VirtualBox Administrador con el nombre:

`PC-Ubuntu-Osmaily`

En esta etapa, la máquina está creada, pero **Ubuntu todavía no está instalado**.

### 9.3. Diferencia importante

**Crear una máquina virtual no significa instalar automáticamente el sistema operativo.**

Primero creamos el entorno de hardware virtual.

Después conectamos un medio de instalación y ejecutamos el instalador del sistema operativo.

---

## 10. Conectar la ISO de Ubuntu después de crear la máquina

Esta es una característica importante de nuestra práctica.

Durante la creación de `PC-Ubuntu-Osmaily`, dejamos el campo **ISO Image** sin seleccionar.

Por tanto, necesitamos conectar la ISO antes de iniciar Ubuntu.

### 10.1. Abrir la configuración

Desde Oracle VirtualBox Administrador:

1. Seleccionamos `PC-Ubuntu-Osmaily`.
2. Abrimos **Configuración**.
3. Entramos en **Almacenamiento**.

### 10.2. Identificar los controladores de almacenamiento

En nuestra configuración aparecen:

- **Controlador: IDE**.
- **Controlador: SATA**.

### ¿Cuál es la diferencia?

**Controlador IDE**

En nuestra práctica se utiliza para conectar la unidad óptica virtual que contiene la ISO de Ubuntu.

**Controlador SATA**

Se utiliza para conectar el disco duro virtual donde instalaremos Ubuntu.

### 10.3. Conectar la imagen ISO

Desde **Almacenamiento**:

1. Seleccionamos la unidad óptica correspondiente al controlador IDE.
2. Abrimos el selector de medios ópticos.
3. Buscamos la imagen ISO de Ubuntu.
4. Seleccionamos el archivo.
5. Confirmamos la configuración.

### 10.4. Imagen utilizada

`ubuntu-22.04.3-desktop-amd64.iso`

### 10.5. Comprobación

En la pantalla de Almacenamiento observamos:

**Controlador: IDE**

`ubuntu-22.04.3-desktop-amd64.iso`

**Controlador: SATA**

`PC-Ubuntu-Osmaily.vdi`

Esto confirma que conectamos correctamente los dos elementos necesarios:

1. El medio de instalación de Ubuntu.
2. El disco virtual donde posteriormente se instalará el sistema operativo.

---

## 11. Diferencia con nuestra práctica anterior de Windows 10 Pro

Anteriormente creamos una máquina virtual para instalar Windows 10 Pro.

En aquella práctica seleccionamos la ISO durante la creación de la máquina.

En Ubuntu decidimos seguir el procedimiento del profesor, conectando la ISO posteriormente.

| Característica | Windows 10 Pro | Ubuntu |
|---|---|---|
| Máquina virtual | `PC-Windows10-Osmaily` | `PC-Ubuntu-Osmaily` |
| Sistema | Windows 10 Pro | Ubuntu 22.04.3 |
| ISO durante la creación | Seleccionada | No seleccionada |
| ISO conectada después | No fue necesario | Sí |
| RAM | 4096 MB | 4096 MB |
| Procesadores virtuales | 2 | 1 |
| Disco virtual | 64 GB | 25 GB |
| Formato | VDI | VDI |
| EFI | Deshabilitado | Deshabilitado |
| Instalación | Manual | Manual |

### Aprendizaje

VirtualBox permite conectar la ISO en distintos momentos:

**Método 1 — Durante la creación**

Seleccionamos la imagen ISO directamente en el asistente de nueva máquina virtual.

**Método 2 — Después de la creación**

Creamos la máquina sin ISO y posteriormente utilizamos:

**Configuración → Almacenamiento**

Ambos procedimientos permiten preparar una máquina virtual para instalar el sistema operativo.

---

## 12. Iniciar la máquina virtual

Después de conectar la ISO de Ubuntu, iniciamos la máquina.

### 12.1. Procedimiento

1. Regresamos a Oracle VirtualBox Administrador.
2. Seleccionamos `PC-Ubuntu-Osmaily`.
3. Hacemos clic en **Iniciar**.
4. Esperamos a que VirtualBox arranque el medio de instalación.

### 12.2. Resultado observado

La máquina virtual muestra el menú:

**GNU GRUB version 2.06**

### 12.3. Opciones disponibles

| Opción | Función |
|---|---|
| Try or Install Ubuntu | Iniciar Ubuntu para probarlo o instalarlo |
| Ubuntu (safe graphics) | Arrancar utilizando opciones gráficas de compatibilidad |
| OEM install (for manufacturers) | Instalación destinada a fabricantes |
| Test memory | Comprobar la memoria |

### 12.4. Comparación con el profesor

En la demostración del profesor aparecía resaltada:

**Ubuntu (safe graphics)**

Durante nuestra práctica también observamos esa opción seleccionada y continuamos hasta la pantalla de bienvenida del instalador.

### 12.5. Comprobación final

El instalador de Ubuntu comenzó correctamente y mostró:

**Le damos la bienvenida**

Esto confirmó que:

- La máquina virtual pudo iniciarse.
- El medio ISO era accesible.
- VirtualBox reconoció el sistema invitado.
- El entorno de instalación de Ubuntu pudo arrancar.

---

## 13. Comprobaciones finales de la práctica

| Comprobación | Resultado |
|---|---|
| Crear máquina `PC-Ubuntu-Osmaily` | Completado |
| Seleccionar Linux | Completado |
| Seleccionar Ubuntu (64-bit) | Completado |
| Configurar carpeta `E:\VirtualBox` | Completado |
| Crear sin ISO inicial | Completado |
| Desactivar instalación desatendida | Completado |
| Asignar 4096 MB RAM | Completado |
| Asignar 1 CPU | Completado |
| Mantener EFI deshabilitado | Completado |
| Crear disco de 25 GB | Completado |
| Seleccionar VDI | Completado |
| Utilizar asignación dinámica | Completado |
| Conectar ISO posteriormente | Completado |
| Verificar controladores IDE y SATA | Completado |
| Iniciar desde la ISO | Completado |
| Acceder al instalador de Ubuntu | Completado |

---

## 14. Resultado de la práctica

**Máquina virtual creada y configurada correctamente para instalar Ubuntu 22.04.3 Desktop.**

La máquina utiliza:

- **Nombre:** `PC-Ubuntu-Osmaily`.
- **Memoria RAM:** 4096 MB.
- **Procesadores:** 1.
- **Firmware:** BIOS tradicional.
- **Disco:** VDI dinámico de 25 GB.
- **Medio de instalación:** `ubuntu-22.04.3-desktop-amd64.iso`.
- **Instalación:** manual.

La ISO se conectó después de terminar la creación de la máquina virtual.

Comprobamos que VirtualBox arrancaba correctamente desde ese medio y permitía acceder al instalador de Ubuntu.

---

## 15. Conclusión

En esta práctica aprendimos a preparar una máquina virtual de Ubuntu desde cero utilizando Oracle VirtualBox.

Comprendimos cómo configurar el nombre, la ubicación, la memoria, los procesadores, el firmware y el almacenamiento.

También aprendimos la diferencia entre seleccionar una ISO durante la creación de la máquina y conectarla posteriormente desde las opciones de almacenamiento.

**El objetivo de la práctica se cumplió: crear y configurar correctamente la máquina virtual que utilizaremos para instalar Ubuntu.**

La instalación del sistema operativo y el particionado del disco se documentan por separado, respetando la organización de nuestro portafolio.

---

## 16. Siguiente práctica

**Clase 04 — Instalación y configuración de Ubuntu**

[Práctica 03 — Instalación y configuración de Ubuntu](../../clase-04-instalacion-unicamente-de-linux-o-windows-10/ejercicios/03-instalacion-configuracion-ubuntu.md)

En esa práctica documentaremos:

- Pantalla de bienvenida.
- Selección del idioma.
- Distribución del teclado.
- Opciones de instalación.
- Desconexión temporal de Internet.
- Particionado manual.
- Configuración del cargador de arranque GRUB.
- Configuración de Montevideo como zona horaria.
- Creación de la cuenta de usuario.
- Instalación del sistema operativo.
- Reinicio y comprobación del arranque.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

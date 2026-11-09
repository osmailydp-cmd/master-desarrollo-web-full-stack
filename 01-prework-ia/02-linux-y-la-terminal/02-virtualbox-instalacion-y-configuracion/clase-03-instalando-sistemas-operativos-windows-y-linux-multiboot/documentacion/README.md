# Clase 03 — Instalando Sistemas Operativos Windows y Linux Multiboot

**Curso:** Máster en Desarrollo Web Full Stack  
**Categoría:** Prework + IA  
**Módulo:** Linux y la Terminal  
**Tema 02:** VirtualBox, instalación y configuración  
**Clase 03:** Instalando Sistemas Operativos Windows y Linux Multiboot

---

## 1. Objetivo de la clase

Aprender a preparar medios de instalación, gestionar particiones e instalar dos sistemas operativos diferentes en una misma computadora o máquina virtual.

Durante la clase, el profesor utiliza **Oracle VirtualBox** para crear un entorno de pruebas en el que instala:

- **Windows 7**, como primer sistema operativo.
- **Xubuntu 20.04.1**, como segundo sistema operativo.

Ambos sistemas se instalan en un mismo disco virtual, utilizando particiones independientes.

Finalmente, se utiliza el gestor de arranque **GNU GRUB** para seleccionar qué sistema operativo iniciar.

### Objetivos específicos

Al finalizar la clase debemos comprender:

1. Qué es una imagen ISO y cómo se utiliza.
2. Cómo crear una memoria USB de arranque con Rufus.
3. Qué es Hiren's BootCD PE y para qué sirve.
4. Cómo arrancar una máquina virtual desde una unidad óptica virtual.
5. Qué son los discos, las particiones y el espacio sin asignar.
6. Cómo utilizar herramientas de administración de particiones.
7. Cómo instalar Windows en una partición.
8. Cómo instalar Linux conservando una instalación anterior de Windows.
9. Qué función cumplen la partición raíz `/` y la memoria swap.
10. Qué es GRUB y cómo permite implementar un sistema Multiboot.

---

## 2. Conceptos fundamentales

Antes de estudiar el procedimiento, es importante comprender varios conceptos.

### 2.1. ¿Qué es un sistema operativo?

Un **sistema operativo** es el software encargado de administrar los recursos de una computadora y proporcionar un entorno donde se ejecutan las aplicaciones.

Entre sus responsabilidades están:

- Gestionar la memoria RAM.
- Administrar el procesador.
- Organizar archivos y directorios.
- Controlar dispositivos de hardware.
- Gestionar usuarios y permisos.
- Permitir la ejecución de programas.

Windows y Linux son ejemplos de sistemas operativos.

### 2.2. ¿Qué es una imagen ISO?

Una **imagen ISO** es un archivo que contiene una representación del contenido de un medio óptico, como un CD o DVD.

Las imágenes ISO se utilizan frecuentemente para distribuir instaladores de sistemas operativos y herramientas de recuperación.

Ejemplos utilizados durante la clase:

- `HBCD_PE_x64.iso`
- `Windows 7 todo en uno.iso`
- `xubuntu-20.04.1-desktop-amd64.iso`

Una ISO puede utilizarse para preparar una memoria USB de arranque o conectarse directamente a una máquina virtual.

**Importante:** descargar una ISO no significa que el sistema operativo esté instalado.

### 2.3. ¿Qué significa booteable?

El término *booteable* significa que un dispositivo o medio está preparado para iniciar un entorno de arranque cuando se enciende la computadora.

Por ejemplo:

- Un USB con un instalador de Windows.
- Un USB con un instalador de Linux.
- Una unidad óptica virtual con la ISO de Hiren's BootCD PE.

### 2.4. ¿Qué es Multiboot?

**Multiboot** significa tener varios sistemas operativos instalados en un mismo equipo y disponer de un mecanismo para elegir cuál iniciar.

En la demostración:

- Windows 7 ocupa una parte del disco.
- Xubuntu ocupa otra parte del mismo disco.
- GRUB presenta un menú para elegir el sistema operativo.

Multiboot no significa ejecutar ambos sistemas simultáneamente.

Cuando se utiliza Multiboot tradicional, se selecciona un sistema operativo durante el arranque y ese sistema es el que se ejecuta.

### 2.5. Diferencia entre máquina virtual y Multiboot

| Concepto | Máquina virtual | Multiboot |
|---|---|---|
| Funcionamiento | Ejecuta un sistema invitado mediante virtualización | Permite elegir entre sistemas instalados |
| Herramienta | VirtualBox | Gestor de arranque como GRUB |
| Sistemas simultáneos | Pueden ejecutarse simultáneamente si hay recursos suficientes | Normalmente se inicia uno cada vez |
| Disco | Puede utilizar un archivo de disco virtual | Utiliza particiones del disco correspondiente |

En esta clase ambos conceptos se combinan: **se configura Multiboot dentro de una máquina virtual de VirtualBox**.

---

## 3. Preparación para la instalación

### 3.1. Herramientas necesarias

Durante la demostración se utilizan o presentan las siguientes herramientas:

| Herramienta | Finalidad |
|---|---|
| Oracle VirtualBox | Crear y ejecutar máquinas virtuales |
| Imágenes ISO | Proporcionar los medios de instalación |
| Rufus | Crear memorias USB booteables |
| Hiren's BootCD PE | Ejecutar herramientas de diagnóstico y recuperación |
| AOMEI Partition Assistant | Administrar discos y particiones |
| Macrorit Partition Expert | Crear y modificar particiones |
| Instalador de Windows 7 | Instalar Windows |
| Instalador de Xubuntu | Instalar Linux |
| GNU GRUB | Seleccionar el sistema operativo durante el arranque |

### 3.2. Repositorio oficial de la academia

La academia proporciona un repositorio de referencia:

[Conquer Blocks — Linux y la Terminal](https://github.com/ConquerBlocks/conquerblocks-linux-terminal)

### 3.3. Documento de imágenes ISO

La academia proporciona también un documento con enlaces a imágenes ISO:

[ISOS Para el módulo de Linux y la Terminal](https://docs.google.com/document/d/1CIsb7nzQE2C-kLSWsztdNpo3GB_zyLjkFOjX1BEowbM/edit)

Los recursos indicados en ese documento incluyen:

| Sistema o herramienta | Imagen disponible |
|---|---|
| Hiren's BootCD PE | `HBCD_PE_x64.iso` |
| Windows 7 | Imagen de Windows 7 |
| Windows XP | Imagen de Windows XP |
| Windows 10 | Imagen de Windows 10 |
| Ubuntu | Ubuntu 24.04 |
| Xubuntu | Xubuntu 24.04 |

**Observación:** los recursos de descarga del documento no necesariamente coinciden con las versiones antiguas utilizadas por el profesor en el video.

Para futuras prácticas conviene utilizar imágenes obtenidas de fuentes confiables, verificar su integridad y respetar las licencias correspondientes.

Windows 7 y Windows XP ya no cuentan con soporte general de seguridad. Si se utilizan para estudiar, es recomendable mantenerlos aislados de redes externas.

---

## 4. Crear pen Booteable — Rufus

### 4.1. ¿Qué es Rufus?

**Rufus** es una herramienta que permite preparar memorias USB para iniciar una computadora desde ellas.

Su función principal es convertir una memoria USB en un dispositivo de arranque utilizando, por ejemplo, una imagen ISO.

Sitio oficial:

[Rufus — Cree unidades USB arrancables fácilmente](https://rufus.ie/es/)

### 4.2. ¿Cuándo utilizar Rufus?

Resulta útil cuando necesitamos:

- Instalar un sistema operativo en una computadora física.
- Crear un medio USB de recuperación.
- Preparar herramientas de diagnóstico.
- Arrancar un equipo desde un dispositivo externo.

### 4.3. ¿Necesitamos Rufus para instalar Windows en VirtualBox?

**No necesariamente.**

VirtualBox puede utilizar directamente una ISO conectada a su unidad óptica virtual.

Por tanto:

| Situación | Procedimiento habitual |
|---|---|
| Instalar Windows en una computadora física desde USB | Preparar una memoria USB con Rufus |
| Instalar Ubuntu en una computadora física desde USB | Preparar una memoria USB |
| Instalar Windows en VirtualBox | Conectar directamente la ISO |
| Ejecutar Hiren's BootCD PE en VirtualBox | Conectar directamente la ISO |

### 4.4. Configuración de Rufus mostrada por el profesor

En el video aparece **Rufus 3.20.1929**.

La demostración utiliza una imagen de Windows 11.

| Campo (nombre exacto) | Valor mostrado |
|---|---|
| Dispositivo | Windows 11 22H2 (F:) [8 GB] |
| Elección de arranque | Windows 11 22H2.iso |
| Opciones de imagen | Instalación de Windows estandar |
| Esquema de partición | GPT |
| Sistema destino | UEFI (no CSM) |
| Etiqueta de volumen | Windows 11 22H2 |
| Sistema de archivos | NTFS |
| Tamaño del clúster | 4096 bytes (Por defecto) |
| Formateo rápido | Marcado |
| Añadir etiquetas extendidas e iconos | Marcado |
| Buscar bloques dañados en dispositivo | Desmarcado |
| Estado | PREPARADO |

Estos valores corresponden al ejemplo de la clase. No deben aplicarse automáticamente a cualquier equipo.

### 4.5. Procedimiento general con Rufus

1. Conectar una memoria USB.
2. Abrir Rufus.
3. Elegir la memoria en **Dispositivo**.
4. Pulsar **SELECCIONAR** para cargar la ISO.
5. Revisar **Opciones de imagen**.
6. Seleccionar el **Esquema de partición** adecuado.
7. Verificar **Sistema destino**.
8. Revisar las **Opciones de formateo**.
9. Pulsar **EMPEZAR**.
10. Confirmar los avisos y completar el proceso.

**Advertencia:** preparar una memoria USB de arranque puede borrar todos sus archivos. Es indispensable comprobar que el dispositivo seleccionado sea el correcto y realizar una copia de seguridad.

### 4.6. ¿Qué significan GPT y UEFI?

**GPT (GUID Partition Table)** es un esquema moderno de particionado de discos.

**UEFI (Unified Extensible Firmware Interface)** es un tipo moderno de firmware utilizado para iniciar computadoras.

Rufus permite preparar medios compatibles con distintos modos de arranque.

La combinación adecuada depende del equipo donde se utilizará el USB.

---

## 5. Hiren's Boot CD

### 5.1. ¿Qué es Hiren's BootCD PE?

**Hiren's BootCD PE (Preinstallation Environment)** es un entorno de recuperación basado en Windows PE.

Se utiliza para diagnosticar, mantener y recuperar computadoras.

A diferencia de un instalador convencional, puede iniciar un entorno de trabajo sin instalar Windows en el disco.

Sitio de referencia:

[Hiren's BootCD PE](https://www.hirensbootcd.org/)

### 5.2. Características mostradas durante la clase

Según la página que consulta el profesor:

- Está basado en Windows 10 PE de 64 bits.
- Puede iniciar en equipos compatibles con UEFI.
- Indica un requisito mínimo de 2 GB de RAM.
- Incluye distintas herramientas gratuitas.
- Puede intentar detectar controladores de gráficos, sonido y red.
- Proporciona utilidades de diagnóstico, administración y recuperación.

### 5.3. ¿Para qué sirve?

Hiren's BootCD PE puede resultar útil cuando un sistema operativo instalado presenta problemas o cuando necesitamos realizar tareas de mantenimiento desde un entorno independiente.

Ejemplos de aplicaciones:

- Revisar discos y particiones.
- Diagnosticar problemas del sistema.
- Consultar archivos.
- Realizar operaciones de recuperación.
- Ejecutar herramientas de administración.

---

## 6. Arrancar Hiren's BootCD PE en VirtualBox

### 6.1. Máquina virtual utilizada

El profesor utiliza una máquina virtual llamada:

`MultiSistema`

Su disco virtual se llama:

`MultiSistema.vdi`

### 6.2. Configuración → Almacenamiento

El profesor abre VirtualBox y conecta la imagen ISO de Hiren's a la unidad óptica virtual.

| Campo (nombre exacto) | Configuración observada |
|---|---|
| Controlador | IDE |
| Disco virtual | MultiSistema.vdi |
| Unidad óptica | Dispositivo IDE secundario 0 |
| Imagen conectada | HBCD_PE_x64.iso |
| Tamaño mostrado | 1,26 GB |

### 6.3. ¿Qué es una unidad óptica virtual?

Es un dispositivo simulado por VirtualBox que representa una unidad de CD/DVD.

En lugar de insertar un disco físico, se conecta un archivo ISO.

La máquina virtual puede utilizar esa ISO como medio de arranque.

### 6.4. Configuración → Sistema → Placa base

El profesor muestra los siguientes parámetros:

| Campo (nombre exacto) | Valor observado |
|---|---|
| Memoria base | 4096 MB |
| Orden de arranque → Disquete | Marcado |
| Orden de arranque → Óptica | Marcado |
| Orden de arranque → Disco duro | Marcado |
| Orden de arranque → Red | Desmarcado |
| Chipset | PIIX3 |
| TPM | Ninguno |
| Dispositivo apuntador | Tableta USB |
| Habilitar I/O APIC | Marcado |
| Habilitar reloj hardware en tiempo UTC | Desmarcado |
| Habilitar EFI (sólo SO especiales) | Desmarcado |
| Habilitar Secure Boot | Deshabilitado |

### 6.5. ¿Qué significa Orden de arranque?

El **Orden de arranque** establece la secuencia de dispositivos que VirtualBox comprueba para encontrar un sistema desde el cual iniciar.

Por ejemplo:

1. Disquete.
2. Óptica.
3. Disco duro.

En esta práctica interesa especialmente **Óptica**, porque contiene `HBCD_PE_x64.iso`.

Para priorizar expresamente el arranque desde la ISO, puede colocarse **Óptica** antes de **Disco duro**.

### 6.6. Arranque del entorno

Después de conectar la ISO, el profesor inicia `MultiSistema`.

Se observa primero el logotipo de Windows y posteriormente el escritorio de **Hiren's BootCD PE Windows 10**.

Esto confirma que el entorno se ha cargado correctamente.

**Concepto importante:** el arranque desde una ISO no implica que se haya instalado Windows en el disco virtual.

---

## 7. Exploración de Hiren's BootCD PE

### 7.1. Herramientas visibles en el escritorio

En el escritorio se observan:

| Elemento | Función |
|---|---|
| Control Panel | Acceso a configuraciones |
| Utilities | Herramientas de mantenimiento |
| Change Keyboard Layout | Cambio de distribución del teclado |
| Chrome | Navegador |
| Command Prompt | Consola |
| Mozilla Firefox | Navegador |

### 7.2. PE Network Manager

Al iniciar, aparece una herramienta de configuración de red llamada:

`PE Network Manager 0.59.B4 Profile Selector`

Ofrece dos alternativas:

| Opción | Significado |
|---|---|
| Dynamic IP address | Obtener automáticamente una dirección IP mediante DHCP |
| Static IP address | Configurar manualmente la dirección IP |

El profesor muestra seleccionada:

`Dynamic IP address`

En la descripción aparece:

`IP: DHCP`

Esto indica que el entorno intentará obtener automáticamente su configuración de red.

### 7.3. Unidades visibles en This PC

El profesor abre **This PC**.

Se observan:

| Unidad | Significado |
|---|---|
| CD Drive (D:) HBCD_PE_x64 | Unidad óptica virtual que contiene la ISO |
| Boot (X:) | Unidad temporal utilizada por Windows PE |

### 7.4. ¿Qué es Boot (X:)?

Windows PE utiliza habitualmente una unidad temporal `X:` durante su ejecución.

Normalmente corresponde a un entorno cargado en memoria RAM.

Esto es diferente de la partición donde se instala un sistema operativo de manera permanente.

**Importante:** no debemos confundir `Boot (X:)` con el disco duro virtual de la máquina.

---

## 8. Herramientas disponibles en Utilities

El profesor abre la carpeta **Utilities**, donde las aplicaciones aparecen organizadas por categorías.

| Carpeta (nombre exacto) | Finalidad general |
|---|---|
| Accessories | Herramientas auxiliares |
| BCD-MBR Tools | Herramientas relacionadas con el arranque |
| Computer Management | Administración de equipos |
| Driver Management | Gestión de controladores |
| Hard Disk Tools | Utilidades para discos |
| Network | Herramientas de red |
| Other Tools | Herramientas adicionales |
| Removable Drive Tools | Gestión de dispositivos extraíbles |
| Security | Herramientas de seguridad |
| System Tools | Utilidades del sistema |
| Windows Recovery | Recuperación de Windows |

Estas categorías muestran las posibilidades del entorno, aunque no significa que el profesor haya utilizado todos los programas disponibles.

Durante la clase sí muestra herramientas de administración de particiones.

---

## 9. Conceptos de discos y particiones

### 9.1. ¿Qué es un disco?

Un disco es un dispositivo o unidad de almacenamiento.

En VirtualBox, el disco puede representarse mediante un archivo como:

`MultiSistema.vdi`

Ese archivo simula un disco duro para el sistema invitado.

### 9.2. ¿Qué es una partición?

Una **partición** es una división lógica del espacio de un disco.

Un mismo disco puede contener varias particiones destinadas a distintos sistemas o finalidades.

Por ejemplo:

| Partición | Posible uso |
|---|---|
| Partición 1 | Archivos de arranque |
| Partición 2 | Windows |
| Partición 3 | Linux |
| Partición 4 | Swap |

La cantidad y organización dependen del esquema de particionado utilizado.

### 9.3. ¿Qué significa Unallocated?

`Unallocated` significa **espacio sin asignar**.

Es un área del disco que todavía no pertenece a una partición.

Para almacenar archivos de manera convencional suele ser necesario crear una partición y preparar un sistema de archivos adecuado.

### 9.4. ¿Qué es MBR?

**MBR (Master Boot Record)** es un esquema tradicional de particionado de discos, habitualmente asociado a instalaciones BIOS.

En el esquema MBR tradicional se pueden crear hasta cuatro particiones primarias, o utilizar una partición extendida para alojar particiones lógicas.

### 9.5. Partición primaria y partición lógica

**Primary:** partición primaria definida en la tabla de particiones correspondiente.

**Logical:** partición lógica alojada dentro de una estructura extendida en discos MBR.

En la instalación de Xubuntu, el profesor utiliza particiones lógicas para Linux.

### 9.6. Sistemas de archivos

| Sistema de archivos | Uso habitual |
|---|---|
| NTFS | Particiones de Windows |
| ext4 | Particiones de Linux |
| FAT32 | Medios y particiones compatibles con múltiples sistemas |
| swap | Espacio de intercambio de Linux; no es un sistema de archivos convencional |

---

## 10. Administración de particiones con AOMEI Partition Assistant

### 10.1. Herramienta utilizada

El profesor abre:

**AOMEI Partition Assistant Standard Edition**

En su interfaz se observa un disco de aproximadamente 50 GB completamente sin asignar.

### 10.2. Estado del disco mostrado

| Campo | Valor |
|---|---|
| Disk | Disk 1 |
| Tipo | Basic MBR |
| Capacity | 50.00 GB |
| Estado del espacio | Unallocated |
| Used Space | 0.00 KB |
| Free Space | 50.00 GB |

### 10.3. Herramientas disponibles

Entre las opciones visibles aparecen:

| Opción | Función |
|---|---|
| Disk Copy Wizard | Copiar un disco |
| Partition Copy Wizard | Copiar una partición |
| Migrate OS to SSD | Migrar un sistema operativo |
| Partition Recovery Wizard | Recuperar particiones |
| Create Partition | Crear particiones |
| Check Partition | Comprobar particiones |
| Wipe Data | Borrar datos |
| Properties | Consultar propiedades |

**Observación:** la demostración confirma que el profesor abre AOMEI y muestra sus herramientas. No documentamos una modificación aplicada mediante esta aplicación.

---

## 11. Administración de particiones con Macrorit Partition Expert

### 11.1. Herramienta utilizada

El profesor utiliza:

**Macrorit Partition Expert v4.9.3 — Free For Home User**

Esta herramienta permite administrar discos y particiones desde Hiren's BootCD PE.

### 11.2. Creación inicial de una partición

Se muestra la ventana de creación de un volumen con los siguientes parámetros:

| Campo (nombre exacto) | Valor mostrado |
|---|---|
| Volume label | Windows |
| Assign the drive letter | C |
| File system | NTFS |
| Cluster size | 4 K |
| Volume Type | Primary |
| Volume size | 51,198.9 MB |
| Unallocate space before | 0.0 MB |
| Unallocate space after | 0.0 MB |
| SSD partition alignment | Optimized |

La captura inicial muestra el tamaño completo del espacio disponible.

En otra captura posterior, la partición preparada ya tiene un tamaño menor.

No se observó exactamente cada acción intermedia utilizada para modificar ese tamaño.

### 11.3. Distribución preparada posteriormente

| Espacio | Tamaño |
|---|---|
| C: Windows (NTFS) | 19.73 GB |
| Unallocated | 30.27 GB |
| Total del disco | 50.00 GB |

Se observa una partición primaria destinada a Windows y un espacio restante sin asignar.

### 11.4. ¿Qué significa Commit?

**Commit** permite aplicar las modificaciones que se han preparado en la aplicación.

Es importante comprender que algunas herramientas de particionado no escriben inmediatamente los cambios en el disco.

Primero permiten configurar las operaciones y después solicitan confirmación.

### 11.5. Operaciones pendientes mostradas

En Macrorit aparecen:

- `Initialize disk 1`
- `Create volume Windows(C:)`

Posteriormente, el profesor pulsa **Commit**.

Aparece una ventana titulada:

`Commit changes.`

El mensaje indica que existen dos operaciones pendientes.

Se muestran las opciones:

- `OK`
- `Cancel`
- `Shut down the computer after changes are applied.`

La última opción está desmarcada.

### 11.6. Concepto importante

Al crear particiones debemos distinguir entre:

**Preparar cambios:** definir una operación en la interfaz.

**Aplicar cambios:** escribir realmente las modificaciones en el disco.

Modificar particiones puede ocasionar pérdida de datos. Es necesario comprobar el disco seleccionado antes de confirmar.

---

## 12. Instalación de Windows 7

### 12.1. Preparación de la imagen ISO

Después de la demostración con Hiren's BootCD PE, el profesor cambia la imagen conectada a la unidad óptica virtual de `MultiSistema`.

En **Configuración → Almacenamiento** selecciona:

`Windows 7 todo en uno.iso`

### 12.2. Configuración observada

| Campo | Valor |
|---|---|
| Máquina virtual | MultiSistema |
| Disco virtual | MultiSistema.vdi |
| Tamaño del disco | 50,00 GB |
| Controlador | IDE |
| Imagen de instalación | Windows 7 todo en uno.iso |
| Tamaño de la ISO | 3,75 GB |

### 12.3. Inicio del instalador

Al arrancar desde la ISO aparece la pantalla **Instalar Windows**.

En la captura inicial se muestran:

| Campo | Valor |
|---|---|
| Idioma que va a instalar | Español |
| Formato de hora y moneda | Español (España, internacional) |
| Teclado o método de entrada | Español |

El profesor continúa con el asistente de instalación.

---

## 13. Particionado durante la instalación de Windows 7

### 13.1. Detección de particiones existentes

En la pantalla **¿Dónde desea instalar Windows?**, el instalador encuentra la partición creada anteriormente.

| Nombre | Tamaño total | Tipo |
|---|---|---|
| Disco 0 Partición 1 | 20.0 GB | Principal |
| Espacio sin asignar en el disco 0 | 30.0 GB | Sin asignar |

Esto demuestra que el instalador de Windows reconoce las particiones del disco virtual.

### 13.2. Eliminación de la partición anterior

El profesor elimina la partición existente para mostrar nuevamente el proceso de particionado desde Windows.

Después queda:

`Espacio sin asignar en el disco 0 — 50.0 GB`

**Advertencia:** eliminar una partición también elimina el acceso habitual a los datos contenidos en ella. En esta clase el profesor trabaja con un disco virtual de pruebas.

### 13.3. Creación de una nueva partición

El profesor pulsa:

**Nuevo**

Y configura una partición de aproximadamente 20 GB.

Después utiliza:

**Aplicar**

El instalador de Windows crea automáticamente una pequeña partición adicional para el arranque del sistema.

### 13.4. Distribución resultante

| Nombre (según la pantalla) | Tamaño | Tipo |
|---|---|---|
| Disco 0 Partición 1: Reservado para el sistema | 100.0 MB | Sistema |
| Disco 0 Partición 2 | 19.4 GB | Principal |
| Espacio sin asignar en el disco 0 | 30.5 GB | Sin asignar |

### 13.5. ¿Por qué Windows crea una partición reservada?

En esta instalación de Windows 7 con disco MBR y arranque BIOS, la partición **Reservado para el sistema** contiene componentes necesarios para iniciar Windows.

Entre ellos pueden encontrarse:

- Archivos del administrador de arranque.
- Datos de configuración del arranque.

No es la partición destinada a almacenar la instalación principal de Windows.

### 13.6. ¿Dónde instala Windows el profesor?

El sistema se instala en la partición principal:

**Disco 0 Partición 2**

No se debe seleccionar la pequeña partición de 100 MB como destino de instalación.

---

## 14. Proceso de instalación de Windows 7

Una vez seleccionada la partición principal, comienza la instalación.

### Etapas mostradas

| Etapa (nombre exacto) | Función general |
|---|---|
| Copiando archivos de Windows | Copia los archivos iniciales |
| Expandiendo archivos de Windows | Extrae los componentes necesarios |
| Instalando características | Configura características del sistema |
| Instalando actualizaciones | Aplica componentes de actualización incluidos en el proceso |
| Completando instalación | Finaliza la configuración inicial |

El instalador advierte que la computadora puede reiniciarse varias veces.

### Configuración posterior

Según la demostración y las explicaciones de la clase, el profesor:

1. Completa la instalación.
2. Configura el usuario de Windows.
3. Establece una contraseña.
4. Finaliza el asistente.
5. Accede al escritorio.

La captura posterior muestra Windows 7 ejecutándose correctamente dentro de VirtualBox.

### Resultado

**Instalación inicial de Windows 7 completada.**

El disco mantiene disponible el espacio restante para instalar otro sistema operativo.

---

## 15. Introducción a VirtualBox Guest Additions

Después de instalar Windows 7, el profesor muestra la opción:

**Devices → Insert Guest Additions CD image...**

### 15.1. ¿Qué son Guest Additions?

Son herramientas y controladores que se instalan dentro del sistema operativo invitado para mejorar su integración con VirtualBox.

### 15.2. ¿Para qué sirven?

Entre sus funcionalidades se encuentran:

- Mejor adaptación de la resolución de pantalla.
- Mejor integración del ratón.
- Compatibilidad con carpetas compartidas.
- Portapapeles compartido cuando está habilitado.
- Integración gráfica.
- Posibilidad de trabajar con pantalla completa de manera más cómoda.

### 15.3. ¿Cómo funciona la opción mostrada?

Al seleccionar **Insert Guest Additions CD image...**, VirtualBox conecta una ISO con los instaladores de Guest Additions.

El usuario debe ejecutar el instalador adecuado dentro del sistema invitado.

**Conectar la ISO no equivale a tener Guest Additions instalado.**

### 15.4. Relación con la siguiente clase

El módulo contiene una clase específica dedicada a este tema:

**Clase 05 — Instalación guest additions en VirtualBox**

Por ese motivo, aquí se registra únicamente su introducción. El procedimiento detallado se documentará cuando se estudie esa clase.

---

## 16. Instalación de Linux con Xubuntu

### 16.1. Preparación de la instalación

El profesor utiliza nuevamente la máquina virtual:

`MultiSistema`

Pero ahora cambia la imagen de la unidad óptica por:

`xubuntu-20.04.1-desktop-amd64.iso`

### 16.2. ¿Qué es Xubuntu?

Xubuntu es una variante de Ubuntu que utiliza el entorno de escritorio **Xfce**.

Comparte la base de Ubuntu, pero presenta una interfaz de escritorio diferente.

En la clase se utiliza Xubuntu como segundo sistema operativo.

### 16.3. ¿Por qué se utiliza el mismo disco virtual?

Porque el objetivo es conservar Windows 7 e instalar Linux en el espacio libre del mismo disco.

Así se prepara una configuración Multiboot.

### 16.4. Arranque desde la ISO

El profesor inicia la máquina virtual con la ISO de Xubuntu conectada.

Se muestra el logotipo de Xubuntu y una comprobación de archivos del medio de instalación.

Después aparece el asistente.

---

## 17. Configuración inicial del instalador de Xubuntu

### 17.1. Pantalla Le damos la bienvenida

El profesor selecciona:

**Español**

En esta pantalla aparecen las opciones:

- **Probar Xubuntu**
- **Instalar Xubuntu**

### ¿Cuál es la diferencia?

**Probar Xubuntu:** permite utilizar el sistema desde el medio de arranque sin realizar inmediatamente una instalación en el disco.

**Instalar Xubuntu:** inicia el asistente para instalar el sistema operativo.

El profesor selecciona:

**Instalar Xubuntu**

### 17.2. Pantalla Disposición del teclado

Se muestra la selección:

`Spanish`

También aparecen opciones para detectar la distribución y probar la escritura.

### 17.3. Pantalla Actualizaciones y otro software

Se observan dos casillas:

| Opción (nombre exacto) | Estado |
|---|---|
| Descargar actualizaciones al instalar Xubuntu | Desmarcado |
| Instalar programas de terceros para hardware de gráficos y de wifi y formatos multimedia adicionales | Desmarcado |

El profesor continúa sin seleccionar estas opciones.

Esto permite realizar la instalación sin solicitar esas descargas o componentes adicionales durante esa etapa.

---

## 18. Tipo de instalación de Xubuntu

Esta es una de las pantallas más importantes de la clase.

El instalador reconoce una instalación existente de Windows 7 y pregunta cómo continuar.

### 18.1. Opciones disponibles

| Opción (nombre exacto) | Significado |
|---|---|
| Instalar Xubuntu junto a Windows 7 | Instalación asistida para conservar Windows |
| Borrar disco e instalar Xubuntu | Elimina los sistemas y datos del disco de destino |
| Más opciones | Permite configurar manualmente las particiones |

### 18.2. ¿Qué opción utiliza el profesor?

**Más opciones**

El profesor explica que utilizará el procedimiento avanzado para controlar directamente cómo se organiza el disco.

### 18.3. ¿Por qué es importante?

Porque permite comprender:

- Qué particiones pertenecen a Windows.
- Cuánto espacio queda libre.
- Dónde se instalará Linux.
- Cómo crear una partición raíz.
- Cómo configurar el área de intercambio.
- Dónde instalar el cargador de arranque.

**Importante:** seleccionar **Más opciones** no es obligatorio para cualquier instalación Multiboot. Se utiliza aquí con fines didácticos.

---

## 19. Reconocimiento de las particiones de Windows

Al seleccionar **Más opciones**, aparece la tabla de particiones del disco.

El instalador muestra aproximadamente:

| Dispositivo | Tipo | Tamaño | Función |
|---|---|---|---|
| `/dev/sda1` | ntfs | 104 MB | Partición reservada para Windows |
| `/dev/sda2` | ntfs | 20.866 MB | Partición de Windows 7 |
| espacio libre | Sin asignar | 32.714 MB | Espacio destinado a Linux |

### 19.1. ¿Qué es `/dev/sda`?

En Linux, `/dev/sda` es un nombre tradicional para identificar un dispositivo de almacenamiento de bloques.

Las particiones se representan mediante nombres como:

- `/dev/sda1`
- `/dev/sda2`
- `/dev/sda5`
- `/dev/sda6`

El número final identifica una partición dentro del dispositivo.

### 19.2. ¿Por qué conservar `/dev/sda1` y `/dev/sda2`?

Porque contienen los componentes de Windows 7.

El profesor no utiliza esas particiones para instalar Linux.

En su lugar, selecciona el espacio libre que todavía queda en el disco.

---

## 20. Creación de las dos particiones de Linux

El profesor explica que, para el esquema de instalación utilizado en esta clase, creará:

1. Una partición para el sistema Linux.
2. Una partición de intercambio o swap.

### 20.1. Primera partición — Sistema Linux

En la ventana **Crear partición** se observan estos valores:

| Campo (nombre exacto) | Valor seleccionado |
|---|---|
| Tamaño | 28000 MB |
| Tipo de la nueva partición | Lógica |
| Ubicación de la nueva partición | Al principio de este espacio |
| Utilizar como | sistema de ficheros ext4 transaccional |
| Punto de montaje | `/` |

### ¿Qué significa cada opción?

**Tamaño:** determina cuánto espacio ocupará la partición.

**Lógica:** crea una partición lógica dentro del esquema de particionado MBR correspondiente.

**Al principio de este espacio:** coloca la partición al comienzo del espacio libre disponible.

**ext4:** es un sistema de archivos utilizado habitualmente por Linux.

**Punto de montaje `/`:** identifica la raíz del sistema de archivos Linux.

### 20.2. ¿Qué significa `/` en Linux?

El símbolo `/` representa el directorio raíz.

Desde él se organiza la estructura de directorios del sistema.

Por ejemplo:

```text
/
├── home/
├── etc/
├── usr/
├── var/
├── boot/
└── tmp/
```

Estos son directorios habituales de Linux; no representan una captura exacta del sistema del profesor.

La partición montada en `/` contiene la estructura principal del sistema operativo.

### 20.3. Segunda partición — Swap

Después de preparar la partición raíz, el profesor utiliza el espacio restante para crear la partición swap.

| Campo (nombre exacto) | Valor seleccionado |
|---|---|
| Tamaño | 4714 MB |
| Tipo de la nueva partición | Lógica |
| Ubicación de la nueva partición | Al principio de este espacio |
| Utilizar como | área de intercambio |

### 20.4. ¿Qué es swap?

La memoria **swap** es un espacio en el almacenamiento que Linux puede utilizar para colocar temporalmente páginas de memoria.

Sirve como mecanismo complementario de administración de memoria.

Es importante recordar que el almacenamiento utilizado para swap suele ser mucho más lento que la RAM física.

### 20.5. ¿Es obligatorio crear una partición swap?

No siempre.

Las instalaciones modernas de Ubuntu también pueden utilizar un archivo swap en lugar de una partición independiente.

Sin embargo, **el profesor utiliza una partición swap porque ese es el esquema que está enseñando durante la clase**.

---

## 21. Distribución final de las particiones

Después de crear las particiones de Linux, la tabla muestra:

| Dispositivo | Sistema de archivos | Tamaño | Punto de montaje |
|---|---|---:|---|
| `/dev/sda1` | ntfs | 104 MB | — |
| `/dev/sda2` | ntfs | 20.866 MB | — |
| `/dev/sda5` | ext4 | 27.999 MB | `/` |
| `/dev/sda6` | swap | 4.712 MB | — |

### Interpretación

**`/dev/sda1`:** partición reservada para el sistema Windows.

**`/dev/sda2`:** instalación principal de Windows 7.

**`/dev/sda5`:** partición raíz de Xubuntu.

**`/dev/sda6`:** área de intercambio de Linux.

Esta distribución permite que ambos sistemas operativos ocupen diferentes partes del mismo disco.

### ¿Por qué la numeración salta de sda2 a sda5?

En esquemas MBR, las particiones lógicas suelen comenzar a numerarse desde `5`, porque los números `1` a `4` se reservan para las entradas primarias de la tabla de particiones.

Por eso aparecen `/dev/sda5` y `/dev/sda6`, aunque no veamos una partición `/dev/sda3` o `/dev/sda4` como volumen de datos independiente en la lista.

---

## 22. Instalación del cargador de arranque

En la parte inferior del instalador aparece el campo:

**Dispositivo donde instalar el cargador de arranque:**

El profesor utiliza:

`/dev/sda ATA VBOX HARDDISK (53.7 GB)`

### 22.1. ¿Qué es un cargador de arranque?

Es el programa que permite localizar e iniciar un sistema operativo.

### 22.2. ¿Qué es GRUB?

**GRUB (GNU GRand Unified Bootloader)** es un gestor de arranque muy utilizado en Linux.

Permite iniciar Linux y puede presentar otros sistemas operativos detectados.

### 22.3. ¿Por qué el profesor selecciona `/dev/sda`?

Porque está indicando el disco donde se instalará el cargador de arranque.

En esta demostración se utiliza un esquema de arranque BIOS/MBR.

No debe confundirse el disco completo `/dev/sda` con una partición específica como `/dev/sda5`.

El valor adecuado depende del modo de arranque y del esquema de particiones del equipo.

---

## 23. Confirmación de cambios en el disco

Después de configurar las particiones, el profesor pulsa:

**Instalar ahora**

Aparece una ventana de confirmación:

**¿Desea escribir los cambios en los discos?**

El instalador informa que se aplicarán cambios en el dispositivo de almacenamiento.

Entre las operaciones mostradas están:

- Formatear la partición nº 5 como `ext4`.
- Configurar la partición nº 6 como `intercambio`.

El profesor selecciona:

**Continuar**

### ¿Qué significa esta confirmación?

Significa que el instalador va a aplicar las modificaciones de particionado.

En ese momento es fundamental comprobar que se están modificando las particiones correctas.

En esta demostración, el profesor utiliza las particiones recién creadas para Linux y conserva las particiones NTFS de Windows.

---

## 24. Configuración regional de Xubuntu

La siguiente pantalla se denomina:

**¿Dónde se encuentra?**

El profesor selecciona:

`Madrid`

Esta elección configura la región y zona horaria correspondiente para la instalación.

El instalador utiliza esa información para establecer la hora local del sistema.

---

## 25. Creación del usuario en Xubuntu

La siguiente pantalla se denomina:

**¿Quién es usted?**

El profesor introduce los datos del usuario del sistema.

| Campo (nombre exacto) | Valor mostrado |
|---|---|
| Su nombre | usuario |
| El nombre de su equipo | usuario-VirtualBox |
| Elija un nombre de usuario | usuario |
| Elija una contraseña | Configurada |
| Confirme su contraseña | Configurada |
| Solicitar mi contraseña para iniciar sesión | Seleccionado |

### 25.1. ¿Qué es el nombre del equipo?

Es el identificador que permite reconocer la computadora dentro del sistema y, dependiendo de la configuración, en la red.

### 25.2. ¿Qué es el nombre de usuario?

Es el identificador utilizado por una persona para iniciar sesión en el sistema.

### 25.3. ¿Por qué se configura una contraseña?

La contraseña ayuda a controlar el acceso a la cuenta.

El profesor selecciona la opción para solicitarla durante el inicio de sesión.

En la captura aparece un aviso de contraseña débil.

**Recomendación de seguridad:** utilizar contraseñas fuertes y no publicarlas en documentación o repositorios.

---

## 26. Finalización de la instalación de Xubuntu

Después de configurar el usuario, el instalador continúa copiando archivos.

Se muestran pantallas informativas de Xubuntu y una barra de progreso.

Posteriormente aparece el mensaje:

**Instalación terminada**

El asistente indica que es necesario reiniciar el equipo para utilizar la nueva instalación.

El profesor pulsa:

**Reiniciar ahora**

Con esto termina el proceso de instalación del segundo sistema operativo.

---

## 27. GNU GRUB — Menú de arranque múltiple

Después de reiniciar, aparece el menú del gestor de arranque.

En la captura se observa:

`GNU GRUB version 2.04`

### Opciones mostradas

```text
Ubuntu
Opciones avanzadas para Ubuntu
Memory test (memtest86+)
Memory test (memtest86+, serial console 115200)
Windows 7 (en /dev/sda1)
```

### 27.1. Ubuntu

Permite iniciar el sistema Linux instalado.

Aunque el profesor utilizó Xubuntu, la entrada de GRUB aparece identificada como **Ubuntu**.

### 27.2. Opciones avanzadas para Ubuntu

Permite acceder a opciones de arranque adicionales, como determinadas versiones del kernel o modos de recuperación, según lo disponible.

### 27.3. Memory test

Las entradas de `memtest86+` permiten ejecutar pruebas de memoria en entornos compatibles.

No son sistemas operativos adicionales.

### 27.4. Windows 7 (en /dev/sda1)

Es la opción que permite iniciar Windows 7.

Esta entrada demuestra que GRUB ha detectado el otro sistema operativo.

### 27.5. ¿Cómo seleccionar un sistema?

En la pantalla de GRUB aparecen instrucciones que permiten utilizar las flechas del teclado para elegir una entrada y pulsar **Enter** para iniciarla.

Si no se selecciona ninguna opción, GRUB puede iniciar automáticamente la entrada predeterminada después del tiempo configurado.

---

## 28. Comprobación del funcionamiento de Xubuntu

El profesor selecciona la entrada Linux y el sistema inicia correctamente.

### 28.1. Inicio de sesión

Aparece la pantalla de acceso con el usuario:

`usuario`

Se solicita la contraseña configurada durante la instalación.

Después de introducirla, se muestra el escritorio de Xubuntu.

### 28.2. Escritorio de Xubuntu

En las capturas se observan accesos como:

- Volumen de 21 GB.
- Reservado para el sistema.
- Papelera.
- Sistema de archivos.
- Carpeta personal.

La presencia de las unidades de Windows permite observar que Xubuntu reconoce particiones del disco compartido, aunque su acceso depende de cómo estén montadas y de sus permisos.

### 28.3. Apertura de la terminal

El profesor abre una terminal.

El indicador visible es:

```bash
usuario@usuario-VirtualBox:~$
```

### ¿Qué significa?

| Elemento | Significado |
|---|---|
| `usuario` | Nombre de usuario |
| `usuario-VirtualBox` | Nombre del equipo |
| `~` | Directorio personal del usuario |
| `$` | Indicador habitual de una sesión sin privilegios de administrador |

La aparición de la terminal confirma que Xubuntu puede iniciar sesión y ejecutar herramientas del sistema.

---

## 29. Comprobación del arranque de Windows 7

Después de comprobar que Xubuntu funciona correctamente, el profesor reinicia la máquina virtual `MultiSistema` y vuelve al menú **GNU GRUB**.

En el menú selecciona:

`Windows 7 (en /dev/sda1)`

### Verificación realizada

1. GRUB reconoce la instalación de Windows 7.
2. El profesor selecciona Windows 7 como sistema operativo de arranque.
3. Windows 7 inicia correctamente.
4. Se muestra el escritorio de Windows 7 funcionando dentro de VirtualBox.

### Resultado de la práctica Multiboot

| Comprobación | Resultado |
|---|---|
| Instalación de Windows 7 | Completada |
| Instalación de Xubuntu | Completada |
| GRUB detecta Windows 7 y Xubuntu | Confirmado |
| Arranque de Xubuntu | Correcto |
| Inicio de sesión y escritorio de Xubuntu | Correcto |
| Arranque de Windows 7 desde GRUB | Correcto |
| Escritorio de Windows 7 | Confirmado |

**Conclusión:** el profesor demuestra que Windows 7 y Xubuntu pueden coexistir en el mismo disco virtual y arrancar correctamente mediante el gestor GNU GRUB, sin necesidad de utilizar máquinas virtuales independientes para cada sistema operativo.

---

## 30. Resumen del procedimiento completo de la demostración

La secuencia estudiada durante esta clase fue la siguiente.

### Fase 1 — Preparación

1. Conocer las imágenes ISO disponibles.
2. Revisar Rufus y el concepto de USB booteable.
3. Preparar la máquina virtual `MultiSistema`.
4. Conectar la ISO de Hiren's BootCD PE.

### Fase 2 — Hiren's BootCD PE

5. Revisar el orden de arranque en VirtualBox.
6. Iniciar desde la unidad óptica virtual.
7. Explorar el escritorio de Hiren's BootCD PE.
8. Revisar la configuración de red.
9. Identificar las unidades `D:` y `X:`.
10. Explorar las categorías de `Utilities`.
11. Mostrar AOMEI Partition Assistant.
12. Utilizar Macrorit Partition Expert para preparar una partición.

### Fase 3 — Windows 7

13. Cambiar la ISO por la de Windows 7.
14. Iniciar el instalador.
15. Revisar las particiones existentes.
16. Eliminar la partición creada anteriormente.
17. Crear una nueva partición de aproximadamente 20 GB.
18. Observar la partición reservada de 100 MB que Windows crea automáticamente.
19. Instalar Windows 7 en la partición principal.
20. Configurar el usuario y la contraseña.
21. Acceder al escritorio de Windows 7.
22. Introducir la función de Guest Additions.

### Fase 4 — Xubuntu

23. Cambiar la ISO por `xubuntu-20.04.1-desktop-amd64.iso`.
24. Iniciar el instalador de Xubuntu.
25. Seleccionar idioma y teclado.
26. Revisar las opciones de actualizaciones.
27. Elegir **Más opciones**.
28. Identificar las particiones NTFS de Windows.
29. Seleccionar el espacio libre.
30. Crear una partición ext4 para `/`.
31. Crear una partición de intercambio.
32. Seleccionar el disco `/dev/sda` para instalar el cargador de arranque.
33. Confirmar los cambios.
34. Configurar la ubicación.
35. Crear el usuario y establecer una contraseña.
36. Completar la instalación.
37. Reiniciar.

### Fase 5 — Comprobación del Multiboot

38. Observar el menú GNU GRUB.
39. Comprobar que aparecen Ubuntu y Windows 7.
40. Iniciar Xubuntu.
41. Acceder al escritorio.
42. Abrir la terminal.
43. Volver al menú GRUB.
44. Seleccionar Windows 7 para comprobar el arranque del otro sistema.

---

## 31. Problemas y precauciones importantes

### 31.1. Seleccionar el disco equivocado

Crear, eliminar o formatear particiones puede provocar pérdida de datos.

Antes de aplicar cambios se debe identificar correctamente el disco.

En esta clase las operaciones se realizan sobre un disco virtual de pruebas.

### 31.2. Confundir la ISO con el disco de instalación

La ISO proporciona el medio desde el cual arranca el instalador.

El disco virtual es el destino donde se instala el sistema operativo.

Son componentes diferentes.

### 31.3. Borrar Windows al instalar Linux

Algunas opciones del instalador pueden eliminar las particiones existentes.

Para esta demostración, el profesor utiliza **Más opciones** y conserva las particiones NTFS de Windows.

### 31.4. Seleccionar un punto de montaje incorrecto

Para la instalación de Linux mostrada en clase, la partición ext4 debe tener el punto de montaje:

`/`

La partición swap se configura como área de intercambio.

### 31.5. Instalar incorrectamente el cargador de arranque

El dispositivo seleccionado para el cargador debe corresponder al esquema de arranque utilizado.

En el ejemplo BIOS/MBR de la clase se selecciona `/dev/sda`.

En instalaciones UEFI modernas, el procedimiento puede ser diferente.

### 31.6. Utilizar sistemas operativos antiguos

Windows 7 y Xubuntu 20.04.1 son versiones antiguas utilizadas en el material del curso.

Para repetir la práctica se deben considerar su compatibilidad, soporte y seguridad.

En particular, Windows 7 dejó de recibir soporte general de seguridad de Microsoft en enero de 2020.

---

## 32. Diferencias entre los sistemas de archivos estudiados

| Característica | NTFS | ext4 | swap |
|---|---|---|---|
| Uso en la clase | Windows 7 | Xubuntu | Intercambio |
| Almacena archivos habituales | Sí | Sí | No como sistema de archivos convencional |
| Identificación | Particiones Windows | Partición raíz Linux | Partición swap |
| Ejemplo | `/dev/sda2` | `/dev/sda5` | `/dev/sda6` |

Es importante recordar que **un mismo disco puede contener particiones con distintos sistemas de archivos**.

---

## 33. Glosario de términos importantes

| Término | Definición |
|---|---|
| ISO | Imagen utilizada para distribuir sistemas o herramientas de arranque |
| Booteable | Medio preparado para iniciar un entorno |
| BIOS | Firmware tradicional utilizado durante el arranque |
| UEFI | Firmware moderno utilizado para iniciar sistemas |
| MBR | Esquema tradicional de particionado |
| GPT | Esquema moderno de particionado |
| Partición | División lógica del espacio de un disco |
| Primary | Partición primaria |
| Logical | Partición lógica en un esquema compatible |
| Unallocated | Espacio sin asignar |
| NTFS | Sistema de archivos utilizado habitualmente en Windows |
| ext4 | Sistema de archivos utilizado habitualmente en Linux |
| swap | Espacio de intercambio de Linux |
| `/` | Directorio raíz de Linux |
| Punto de montaje | Ubicación donde se integra un sistema de archivos |
| GRUB | Gestor de arranque |
| Multiboot | Configuración con varios sistemas operativos seleccionables |
| Hiren's BootCD PE | Entorno de diagnóstico y recuperación |
| Rufus | Herramienta para crear USB de arranque |
| Guest Additions | Herramientas de integración entre VirtualBox y el sistema invitado |
| Commit | Acción para aplicar modificaciones pendientes |

---

## 34. Principales aprendizajes

1. Una ISO puede utilizarse directamente desde VirtualBox sin crear un USB físico.

2. Rufus permite preparar memorias USB booteables.

3. El orden de arranque determina qué dispositivos se comprueban cuando inicia la computadora.

4. Hiren's BootCD PE permite ejecutar herramientas de recuperación sin instalar Windows de manera permanente.

5. Un disco puede dividirse en varias particiones.

6. El espacio `Unallocated` es almacenamiento que todavía no pertenece a una partición.

7. Herramientas como AOMEI y Macrorit permiten administrar particiones.

8. Algunas herramientas requieren aplicar las operaciones mediante **Commit**.

9. Windows puede crear automáticamente una partición pequeña reservada para el sistema.

10. La instalación principal de Windows debe realizarse en una partición adecuada, no en la partición reservada para el arranque.

11. Linux utiliza una estructura de archivos organizada a partir del directorio raíz `/`.

12. Xubuntu utiliza el sistema de archivos ext4 en la partición raíz de esta demostración.

13. La partición swap proporciona espacio de intercambio.

14. Windows y Linux pueden coexistir en diferentes particiones del mismo disco.

15. GRUB permite presentar un menú para seleccionar el sistema operativo.

16. Las entradas `/dev/sda1`, `/dev/sda2`, `/dev/sda5` y `/dev/sda6` permiten identificar particiones del disco desde Linux.

17. Es posible comprobar una instalación Multiboot arrancando cada sistema por separado.

18. Antes de modificar particiones es indispensable identificar el disco y comprender las consecuencias de las operaciones.

---

## 35. Conclusión

En esta clase aprendimos el procedimiento general para preparar, instalar y gestionar distintos sistemas operativos utilizando Oracle VirtualBox.

El profesor comenzó explicando la preparación de medios de instalación y herramientas de arranque, como Rufus y Hiren's BootCD PE.

Posteriormente mostró la administración de particiones mediante AOMEI Partition Assistant y Macrorit Partition Expert.

Después instaló Windows 7 en una partición de aproximadamente 20 GB, conservando el resto del disco para un segundo sistema operativo.

A continuación instaló Xubuntu utilizando una partición ext4 para el sistema y otra partición destinada a swap.

Finalmente, se observó el gestor de arranque GNU GRUB, que ofrecía entradas para Ubuntu y Windows 7.

La demostración permite comprender que **Multiboot consiste en instalar distintos sistemas operativos en particiones independientes y configurar un gestor de arranque que permita seleccionar cuál utilizar**.

Estos conocimientos serán importantes en futuras prácticas de Linux, particionado, mantenimiento, administración de sistemas y recuperación de equipos.

---

## 36. Prácticas personales relacionadas

Además de la demostración del profesor, se han preparado prácticas personales para reforzar los conocimientos adquiridos.

### Guía para obtener una ISO de Windows 10

[Consultar guía de obtención de ISO](../ejercicios/guia-iso-windows-10.md)

Explica cómo obtener una imagen ISO de Windows 10 desde Windows 11 utilizando las herramientas proporcionadas por Microsoft.

### Instalación de Windows 10 Pro en VirtualBox

[Consultar práctica de instalación de Windows 10 Pro](../ejercicios/instalacion-windows-10-pro-virtualbox.md)

Esta práctica se realiza utilizando una máquina virtual propia denominada:

`PC-Windows10-Osmaily`

**Estado al redactar esta documentación:** práctica en desarrollo.

Se documentará por separado su configuración, instalación, incidencias y verificaciones finales.

---

## 37. Fuentes y alcance de los apuntes

**Material principal:** Clase 03 — Instalando Sistemas Operativos Windows y Linux Multiboot, del módulo Linux y la Terminal de Conquer Blocks.

**Recursos complementarios:**

- [Repositorio de Conquer Blocks](https://github.com/ConquerBlocks/conquerblocks-linux-terminal)
- [Documento de imágenes ISO de la academia](https://docs.google.com/document/d/1CIsb7nzQE2C-kLSWsztdNpo3GB_zyLjkFOjX1BEowbM/edit)
- [Sitio oficial de Rufus](https://rufus.ie/es/)
- [Sitio de Hiren's BootCD PE](https://www.hirensbootcd.org/)

Las configuraciones específicas de las demostraciones se han reconstruido a partir de las capturas y explicaciones registradas durante el estudio de la clase.

Las definiciones y aclaraciones técnicas adicionales se incorporan como apoyo para el aprendizaje y no deben interpretarse como transcripciones literales del profesor.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

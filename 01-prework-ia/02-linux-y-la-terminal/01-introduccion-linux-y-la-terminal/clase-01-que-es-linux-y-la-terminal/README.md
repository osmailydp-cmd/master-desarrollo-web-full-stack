# Clase 01 — ¿Qué es Linux y la Terminal?

**Curso:** Máster en Desarrollo Web Full Stack  
**Categoría:** Prework + IA  
**Módulo:** Linux y la Terminal  
**Tema 01:** Introducción Linux y la Terminal  
**Clase:** 01 — ¿Qué es Linux y la Terminal?

## 1. Objetivo de la clase

Comprender qué es GNU/Linux, cómo está organizado un sistema operativo, cuáles son sus principales características y qué función cumple la terminal.

También se introduce su evolución histórica, las distribuciones GNU/Linux, las licencias de software, los conceptos básicos de instalación y los diferentes entornos gráficos.

## 2. ¿Qué es GNU/Linux?

GNU/Linux es un sistema operativo de tipo UNIX que permite administrar los recursos de una computadora y ejecutar aplicaciones.

El sistema combina el **núcleo Linux (kernel)** con herramientas, utilidades y componentes del sistema, entre los que destacan los desarrollados por el proyecto GNU.

### Características principales

- **Multiusuario:** permite que varios usuarios utilicen el sistema.
- **Multitarea:** puede ejecutar varios procesos simultáneamente.
- **Multiplataforma:** puede utilizarse en diferentes arquitecturas de hardware compatibles.
- **Código abierto:** el código fuente está disponible para su estudio, modificación y distribución según las licencias correspondientes.
- **Software libre:** gran parte del sistema se distribuye mediante licencias que garantizan libertades de uso, estudio, modificación y redistribución.
- **Personalizable:** permite utilizar diferentes interfaces gráficas, herramientas y configuraciones.

### Diferencia entre Linux y GNU/Linux

| Concepto | Descripción |
|---|---|
| Linux | Núcleo del sistema operativo, encargado de administrar los recursos del hardware |
| GNU | Proyecto de software libre que desarrolla herramientas y componentes del sistema |
| GNU/Linux | Sistema que combina el núcleo Linux con componentes GNU y otros programas |

**Idea clave:** Linux es el núcleo; GNU/Linux se refiere a un sistema operativo completo construido alrededor de él.

## 3. Estructura de GNU/Linux

El material presenta GNU/Linux como un sistema organizado en diferentes capas.

Estas permiten separar las aplicaciones utilizadas por el usuario de los componentes internos del sistema y del hardware.

### Capas principales

| Capa | Función |
|---|---|
| Aplicaciones de usuario | Programas que utiliza el usuario |
| Gestor de ventanas | Administra la presentación de ventanas en pantalla |
| Shell | Interpreta los comandos introducidos por el usuario |
| Sistema de ficheros | Organiza y permite acceder a archivos y directorios |
| Kernel | Administra los recursos del sistema y el hardware |
| Hardware | Componentes físicos de la computadora |

### Funcionamiento general

El usuario interactúa con aplicaciones o introduce comandos mediante una terminal.

El sistema procesa las solicitudes utilizando sus componentes internos y, cuando es necesario, el kernel coordina el acceso al hardware.

**Ejemplo conceptual:**

Usuario → Terminal → Shell → Servicios del sistema / Kernel → Hardware

Este esquema simplifica la interacción y ayuda a entender cómo se comunican los componentes.

## 4. Aplicaciones de usuario y gestores de ventanas

### Aplicaciones de usuario

Son los programas utilizados para realizar tareas dentro del sistema operativo.

Algunos ejemplos mencionados en el material son:

- LibreOffice.
- GIMP.
- Editores de texto.
- Navegadores web.
- Gestores de archivos.
- Herramientas de administración.

### Gestores de ventanas y entornos de escritorio

Los gestores de ventanas controlan aspectos como la posición, el tamaño y la presentación de las ventanas.

Los entornos de escritorio proporcionan una experiencia gráfica más completa, incorporando aplicaciones, paneles y otras herramientas.

El material presenta varios entornos gráficos:

| Entorno | Características destacadas |
|---|---|
| GNOME | Entorno de escritorio de software libre |
| KDE | Ecosistema de escritorio y aplicaciones |
| Unity | Interfaz desarrollada por Canonical para Ubuntu |
| Xfce | Entorno ligero, adecuado para equipos con recursos limitados |
| Fluxbox | Gestor de ventanas ligero |
| IceWM | Gestor de ventanas que consume pocos recursos |
| LXDE | Entorno de escritorio ligero |

**Nota:** las imágenes del material corresponden a versiones antiguas de estos escritorios. Su apariencia y disponibilidad pueden diferir de las versiones actuales.

## 5. ¿Qué es la Shell?

La **Shell** es un intérprete de comandos que permite al usuario comunicarse con el sistema operativo.

Recibe instrucciones, las interpreta y coordina su ejecución.

### Funciones principales

- Interpretar los comandos del usuario.
- Ejecutar programas.
- Permitir la automatización de tareas.
- Facilitar la administración del sistema.
- Proporcionar una interfaz de trabajo mediante comandos.

### Tipos de Shell mencionados

| Shell | Descripción |
|---|---|
| `sh` | Intérprete tradicional de UNIX |
| `bash` | Intérprete ampliamente utilizado en GNU/Linux |
| `csh` | Shell cuya sintaxis tiene similitudes con el lenguaje C |

### Consultar la Shell configurada

```bash
echo $SHELL
```

Este comando muestra la ruta de la Shell configurada para el usuario.

Ejemplo de salida:

```text
/bin/bash
```

La salida real depende de la configuración de cada sistema.

## 6. ¿Qué es la terminal?

La terminal es una interfaz que permite introducir comandos mediante texto y visualizar sus resultados.

Es importante distinguir dos conceptos:

- **Terminal:** proporciona el medio de interacción con el usuario.
- **Shell:** interpreta y ejecuta los comandos.

### Ventajas del uso de la terminal

- Permite realizar tareas de administración.
- Facilita la automatización de procesos.
- Proporciona acceso a herramientas del sistema.
- Permite trabajar sin depender de una interfaz gráfica.
- Resulta útil para administrar servidores y sistemas remotos.

**Concepto fundamental:** la terminal es la interfaz; la Shell es el intérprete que procesa los comandos.

## 7. Sistema de ficheros

El sistema de ficheros permite organizar, almacenar y recuperar información.

Entre sus operaciones principales se encuentran:

- Crear archivos.
- Abrir y cerrar archivos.
- Leer información.
- Escribir información.
- Organizar directorios.
- Acceder a recursos almacenados.

### 7.1. Sistemas de ficheros de disco

El material presenta los siguientes ejemplos:

| Sistema | Características |
|---|---|
| ext2 | Sistema de archivos tradicional de Linux |
| ext3 | Evolución de ext2 con registro de operaciones |
| ext4 | Evolución de la familia ext |
| ReiserFS / Reiser4 | Sistemas de ficheros tratados en el material |
| XFS | Diseñado para ofrecer buen rendimiento, especialmente con archivos grandes |
| JFS | Sistema de archivos desarrollado por IBM |
| ISO9660 | Formato utilizado en medios ópticos como CD |

Para consultar sistemas de archivos montados:

```bash
mount
```

### 7.2. Sistemas de ficheros en red

Permiten acceder a archivos almacenados en otra computadora mediante una red.

**NFS — Network File System**

Permite compartir y acceder a archivos entre sistemas conectados a una red.

**CIFS / SMB**

Protocolos utilizados para compartir archivos e impresoras, especialmente en entornos Windows y redes mixtas.

El material muestra el siguiente comando como ejemplo de consulta de recursos compartidos:

```bash
smbclient --list 192.168.13.50
```

La dirección IP es ilustrativa y debe sustituirse por la dirección de un equipo real.

### 7.3. Sistemas de ficheros virtuales

El material introduce los siguientes conceptos:

- **VFS:** proporciona una interfaz común para acceder a diferentes sistemas de archivos.
- **SysFS:** permite consultar información relacionada con dispositivos y componentes del sistema.

### 7.4. Sistemas especiales: SWAP

La SWAP es un espacio de almacenamiento que puede utilizarse como apoyo a la memoria RAM.

Cuando el sistema necesita administrar memoria adicional, puede utilizar el espacio de intercambio.

Para consultar la memoria RAM y SWAP:

```bash
free -h
```

La opción `-h` presenta los tamaños en un formato legible.

## 8. Kernel o núcleo de Linux

El kernel es uno de los componentes fundamentales del sistema operativo.

### Responsabilidades principales

- Administrar los recursos del hardware.
- Gestionar procesos.
- Administrar memoria.
- Coordinar operaciones de entrada y salida.
- Gestionar dispositivos y controladores.
- Proporcionar servicios fundamentales a los programas.

### Consultar la versión del kernel

```bash
uname -r
```

Muestra la versión del núcleo instalado.

Para consultar información más completa:

```bash
uname -a
```

El material explica que las versiones del kernel se identifican mediante números separados por puntos.

**Aprendizaje:** el kernel actúa como intermediario entre el software y los recursos físicos de la computadora.

## 9. Hardware

El hardware está formado por los componentes físicos de una computadora.

Ejemplos:

- Procesador.
- Memoria RAM.
- Disco duro o SSD.
- Tarjeta de red.
- Teclado.
- Pantalla.

Gracias al sistema operativo, las aplicaciones pueden utilizar estos componentes sin tener que administrar directamente todos sus detalles técnicos.

El kernel y los controladores permiten gestionar esa interacción.

## 10. Evolución histórica de GNU/Linux

La presentación explica los antecedentes de Linux a partir de la familia de sistemas UNIX.

### Principales acontecimientos

| Período | Acontecimiento |
|---|---|
| Décadas de 1960 y 1970 | Desarrollo de los antecedentes de UNIX |
| Década de 1970 | Evolución de UNIX y utilización del lenguaje C |
| Década de 1980 | Aparición de MINIX como sistema de propósito educativo |
| Década de 1980 | Desarrollo del proyecto GNU impulsado por Richard Stallman |
| 1991 | Linus Torvalds inicia el desarrollo del núcleo Linux |
| Década de 1990 | Combinación de herramientas GNU y Linux para formar sistemas GNU/Linux |

El material destaca el papel de:

- **Ken Thompson:** uno de los desarrolladores de UNIX.
- **Andrew Tanenbaum:** creador de MINIX.
- **Richard Stallman:** impulsor del proyecto GNU y del movimiento de software libre.
- **Linus Torvalds:** creador del núcleo Linux.

**Concepto fundamental:** GNU/Linux es resultado de la evolución de UNIX, el desarrollo del software libre y la colaboración de múltiples desarrolladores.

## 11. Distribuciones GNU/Linux

Una distribución GNU/Linux es un sistema operativo completo que reúne el kernel Linux con herramientas, aplicaciones y otros componentes.

Existen diferentes distribuciones adaptadas a distintos usos y necesidades.

### Distribuciones destacadas en el material

**Debian**

- Proyecto desarrollado por una comunidad.
- Reconocido por su enfoque en la estabilidad.
- Sirve de base para otras distribuciones.

**Ubuntu**

- Distribución basada en Debian.
- Orientada a facilitar la instalación y el uso.
- Cuenta con herramientas de administración e instalación de software.
- Utiliza paquetes `.deb`.

### Otras distribuciones mencionadas

El material incluye ejemplos de distribuciones regionales españolas:

- Linex.
- Guadalinex.
- LliureX/Llinex.
- Molinux.
- MAX.
- Melinex.
- Linkat.

Estas referencias tienen un carácter histórico dentro del material.

### Consultar información de Ubuntu

```bash
cat /etc/issue
```

Este comando muestra información de identificación del sistema.

## 12. Licencias de software

Las licencias establecen los derechos y obligaciones asociados al uso y distribución de los programas.

### Tipos de software

| Tipo | Características |
|---|---|
| Software propietario | Su uso, modificación y distribución están sujetos a las restricciones de su licencia |
| Software libre | Garantiza libertades para utilizar, estudiar, modificar y compartir el software |
| Freeware | Se distribuye gratuitamente, pero no necesariamente permite modificarlo o redistribuirlo libremente |

### Licencias mencionadas

**GPL — General Public License**

Licencia de software libre que protege las libertades de uso, modificación y distribución, estableciendo condiciones para las obras derivadas que se distribuyan.

**BSD**

Familia de licencias permisivas de software libre que permite utilizar, modificar y redistribuir software bajo determinadas condiciones.

### Diferencia importante

**Software libre no significa necesariamente software gratuito.**

El concepto de software libre está relacionado con las libertades otorgadas al usuario, mientras que gratuito se refiere al precio.

## 13. Instalación de GNU/Linux

El material presenta diferentes escenarios para instalar el sistema operativo.

### Escenarios posibles

1. Computadora con Windows ocupando todo el disco.
2. Computadora con Windows y otra partición que puede reutilizarse.
3. Computadora con Windows y espacio libre disponible.
4. Computadora sin sistema operativo en la que se desea configurar un arranque dual.

### Instalación y prueba del sistema

También se menciona la posibilidad de probar Linux mediante un medio de instalación en modo Live, sin instalarlo permanentemente en el disco.

### Instalación mediante VirtualBox

El material describe el proceso general:

1. Crear una máquina virtual.
2. Asignar un nombre e identificar el sistema operativo.
3. Configurar la memoria RAM.
4. Crear o seleccionar un disco virtual.
5. Elegir el formato de almacenamiento, por ejemplo VDI.
6. Asignar el tamaño del disco.
7. Seleccionar una imagen ISO del sistema operativo.
8. Iniciar la máquina virtual.
9. Ejecutar el instalador.

**Nota:** las capturas muestran versiones antiguas de VirtualBox y Ubuntu. Las pantallas y las opciones pueden ser diferentes en versiones más recientes.

## 14. Particiones y puntos de montaje

Linux utiliza una estructura de directorios diferente de Windows.

En Windows es habitual utilizar letras de unidad como:

```text
C:
D:
```

En Linux los sistemas de archivos se incorporan a una estructura de directorios que parte de `/`.

### Dispositivos y particiones

El material presenta ejemplos como:

| Ruta | Significado |
|---|---|
| `/dev/sda` | Dispositivo de almacenamiento |
| `/dev/sda1` | Primera partición del dispositivo |
| `/dev/sda2` | Segunda partición del dispositivo |
| `/dev/hda` | Nomenclatura histórica utilizada con unidades IDE |

### Punto de montaje

Un punto de montaje es un directorio desde el cual se accede al contenido de un sistema de archivos.

El punto de montaje fundamental es:

```text
/
```

Este representa la raíz del sistema de archivos.

### Directorios importantes

| Directorio | Función principal |
|---|---|
| `/` | Raíz del sistema |
| `/home` | Carpetas personales de los usuarios |
| `/etc` | Archivos de configuración |
| `/bin` | Comandos esenciales |
| `/boot` | Archivos relacionados con el arranque |
| `/dev` | Representaciones de dispositivos |
| `/tmp` | Archivos temporales |
| `/usr` | Aplicaciones y recursos del sistema |
| `/var` | Datos variables y registros |
| `/root` | Carpeta personal del usuario administrador |

## 15. SWAP y memoria

El material describe la memoria de intercambio como un recurso que permite utilizar almacenamiento secundario en determinadas situaciones de administración de memoria.

### Conceptos principales

- La memoria RAM es el almacenamiento principal utilizado por los procesos.
- La SWAP proporciona espacio adicional de intercambio.
- Puede ubicarse en una partición o archivo.
- Su utilización puede ayudar a gestionar situaciones de presión de memoria.

El PDF presenta como referencia histórica asignar a SWAP el doble de la memoria RAM.

**Nota de estudio:** esa proporción no debe considerarse una regla universal. Los requisitos dependen del equipo, de la carga de trabajo y de las necesidades de hibernación.

## 16. Proceso general de instalación de Ubuntu

Según la presentación, después de preparar la máquina virtual o el equipo, se realizan los siguientes pasos:

1. Seleccionar el idioma.
2. Elegir entre probar o instalar Ubuntu.
3. Configurar la zona horaria.
4. Seleccionar la distribución del teclado.
5. Elegir el destino de instalación.
6. Configurar las particiones y puntos de montaje.
7. Establecer el usuario y su contraseña.
8. Configurar las opciones de arranque cuando corresponda.
9. Confirmar la instalación.
10. Esperar a que finalice el proceso.

### GRUB

GRUB es un gestor de arranque que permite iniciar sistemas operativos compatibles y seleccionar entre diferentes opciones de arranque cuando están configuradas.

**Precaución:** antes de modificar particiones en una computadora real, es importante realizar una copia de seguridad y verificar el disco seleccionado.

## 17. Entorno gráfico de GNU/Linux

El material introduce el sistema gráfico X Window System y su papel en la presentación de aplicaciones y ventanas.

También describe diferentes entornos de escritorio y sus características.

### Aspectos principales

- Linux puede utilizarse con o sin entorno gráfico.
- Existen diferentes interfaces de escritorio.
- Es posible personalizar el entorno.
- Una misma distribución puede ofrecer distintas opciones de escritorio.

### Aplicaciones y menús

La presentación muestra categorías de aplicaciones del escritorio Ubuntu de su época:

- Accesorios.
- Gráficos.
- Herramientas del sistema.
- Internet.
- Juegos.
- Oficina.
- Sonido y video.
- Centro de software.
- Lugares.

Estas categorías representan la organización de los escritorios mostrados en el PDF y pueden variar en instalaciones actuales.

## 18. Primeros comandos mencionados en el material

En las secciones desarrolladas del PDF aparecen algunos comandos de consulta y administración.

| Comando | Función |
|---|---|
| `echo $SHELL` | Mostrar la Shell configurada |
| `mount` | Consultar sistemas de archivos montados |
| `uname -r` | Mostrar la versión del kernel |
| `uname -a` | Mostrar información del sistema y kernel |
| `free -h` | Consultar memoria RAM y SWAP |
| `cat /etc/issue` | Consultar información de identificación del sistema |
| `smbclient --list ...` | Consultar recursos compartidos mediante SMB |

### Ejemplo de consulta básica

```bash
echo $SHELL
uname -r
free -h
```

Estos comandos permiten consultar información de la Shell, el kernel y la memoria del sistema.

**Importante:** el índice del documento también menciona comandos como `date`, `cal`, `who`, `whoami`, `clear`, `whereis`, `passwd`, `history` y `exit`, pero sus explicaciones no aparecen desarrolladas en las 37 páginas proporcionadas. Se estudiarán con mayor detalle en las clases dedicadas a comandos Linux.

## 19. Principales aprendizajes

Al finalizar esta clase se deben comprender los siguientes conceptos:

1. GNU/Linux es un sistema operativo basado

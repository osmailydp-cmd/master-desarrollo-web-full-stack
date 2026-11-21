# Clase 07 — ¿Qué es un comando y tipos de archivos?

## 1. Objetivo de la clase

Comprender qué es un comando en Linux, cómo ejecutarlo desde la terminal y diferenciar sus **opciones (modificadores)** y **argumentos**.

También conocer los principales sistemas de archivos, la estructura de directorios de Linux y algunos comandos básicos.

## 2. Material de referencia

- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-07-Archivos-utiles-y-primeros-comandos-1.pdf`

## 3. ¿Qué es un comando?

Un **comando** es una instrucción que escribimos en la terminal para realizar una operación.

Los comandos son interpretados por la **Shell**, que se encarga de procesarlos.

Linux distingue entre mayúsculas y minúsculas (*case-sensitive*).

Por ejemplo, `ls` y `LS` no se consideran el mismo comando.

### 3.1. El prompt

El **prompt** es el indicador de la terminal que señala que podemos escribir un comando.

Ejemplo:

```bash
usuario@ubuntu:~$
```

| Elemento | Significado |
|---|---|
| `usuario` | Nombre del usuario |
| `ubuntu` | Nombre del equipo |
| `~` | Directorio personal |
| `$` | Usuario normal |
| `#` | Superusuario o root |

### 3.2. Historial y autocompletado

- **Flecha ↑:** recuperar comandos anteriores.
- **Flecha ↓:** avanzar hacia comandos posteriores del historial.
- **Tabulador:** autocompletar nombres de archivos y directorios.

## 4. Estructura de un comando

Sintaxis general:

```bash
comando [-opciones] [argumento]
```

| Elemento | Función |
|---|---|
| Comando | Indica la operación que queremos ejecutar. |
| Opción o modificador | Cambia el comportamiento del comando. |
| Argumento | Indica sobre qué archivo, directorio o elemento se ejecuta. |

Los corchetes `[ ]` indican que una parte es opcional.

**Ejemplo:**

```bash
ls -l /home
```

- `ls`: comando.
- `-l`: opción para mostrar información detallada.
- `/home`: argumento que indica el directorio.

## 5. Primeros comandos de Linux

| Comando | Función |
|---|---|
| `man comando` | Consultar el manual de un comando. |
| `comando --help` | Mostrar ayuda sobre un comando. |
| `date` | Mostrar fecha y hora del sistema. |
| `cal` | Mostrar un calendario. |
| `who` | Mostrar los usuarios conectados. |
| `whoami` | Mostrar el usuario actual. |
| `clear` | Limpiar la pantalla de la terminal. |
| `whereis` | Localizar archivos asociados a un comando. |
| `uname` | Mostrar información del sistema. |
| `passwd` | Cambiar la contraseña del usuario. |
| `history` | Mostrar el historial de comandos. |
| `exit` | Salir de la sesión o cerrar la terminal. |

### 5.1. Ejemplos y opciones

```bash
man cal
cal --help
date
date +%B
date +%j
cal -3
who -a
who -b
whoami
clear
whereis cal
uname -a
cat /etc/issue
history
exit
```

**Otros elementos importantes:**

- `q`: salir del manual de `man`.
- `!!`: recuperar el último comando ejecutado.
- `sudo !!`: ejecutar con `sudo` el último comando del historial.

El documento también presenta `hwclock` para consultar y sincronizar el reloj de hardware.

**Nota:** los comandos que modifican la hora del sistema o sincronizan relojes requieren especial cuidado y permisos adecuados.

## 6. ¿Qué es un sistema de archivos?

Un **sistema de archivos** es el conjunto de estructuras y procedimientos que permiten almacenar, organizar, acceder y recuperar información en un dispositivo de almacenamiento.

### 6.1. Principales sistemas de archivos

| Sistema | Descripción |
|---|---|
| FAT16 | Sistema antiguo utilizado en MS-DOS. |
| FAT32 | Evolución de FAT16 que admite archivos y particiones de mayor tamaño. |
| NTFS | Sistema de archivos utilizado principalmente por Windows. |
| ext2 | Sistema de archivos de Linux. |
| ext3 | Evolución de ext2. |
| ext4 | Evolución de ext3, con mejoras de capacidad y rendimiento. |
| HFS / HFS+ | Sistemas de archivos asociados a Apple. |
| NFS | Sistema de archivos para compartir recursos por red. |
| CIFS / SMB | Permite compartir archivos en redes, incluidas redes Windows y Linux. |
| SWAP | Espacio utilizado para el intercambio de memoria. |

Las diapositivas también mencionan ReiserFS, YAFFS, UDF, VFS, SysFS, VFAT y otros sistemas.

## 7. Estructura de directorios de Linux

Linux organiza los archivos y directorios mediante una estructura jerárquica de árbol, que comienza en la raíz `/`.

```text
/
├── home
├── bin
├── boot
├── dev
├── etc
├── lib
├── media
├── mnt
├── opt
├── proc
├── root
├── sbin
├── usr
├── tmp
└── var
    └── log
```

### 7.1. Función de los principales directorios

| Directorio | Función |
|---|---|
| `/` | Directorio raíz del sistema. |
| `/home` | Carpetas personales de los usuarios. |
| `/bin` | Programas ejecutables esenciales. |
| `/boot` | Archivos necesarios para arrancar Linux. |
| `/dev` | Archivos que representan dispositivos. |
| `/etc` | Configuración del sistema. |
| `/lib` | Bibliotecas utilizadas por programas. |
| `/media` | Dispositivos y medios montados. |
| `/mnt` | Punto de montaje de sistemas de archivos. |
| `/opt` | Aplicaciones adicionales. |
| `/proc` | Información del kernel y procesos. |
| `/root` | Carpeta personal del superusuario. |
| `/sbin` | Programas de administración del sistema. |
| `/usr` | Programas y recursos del sistema. |
| `/tmp` | Archivos temporales. |
| `/var` | Información variable del sistema. |
| `/var/log` | Registros de eventos y errores. |

## 8. ¿Qué es un fichero?

Un **fichero o archivo** es un conjunto de información almacenada bajo un nombre que lo identifica.

En Linux:

- Los archivos y directorios forman parte de una estructura jerárquica.
- Cada archivo pertenece a un usuario y a un grupo.
- Existen permisos de lectura, escritura y ejecución.
- Los nombres de archivos pueden tener hasta 255 caracteres en los sistemas de archivos habituales mencionados.
- El carácter `/` se utiliza para separar directorios.
- Cada archivo se identifica también mediante un número de **inodo (i-node)**.

### 8.1. ¿Qué es un inodo?

Un **inodo** es una estructura que permite identificar un archivo dentro del sistema de archivos y almacenar información sobre él, como sus permisos, propietario y ubicación de los datos.

## 9. Conceptos clave

| Concepto | Significado |
|---|---|
| Shell | Intérprete de comandos. |
| Terminal | Interfaz desde la que introducimos comandos. |
| Prompt | Indicador de que la terminal está lista. |
| Comando | Instrucción que ejecuta una operación. |
| Opción | Modifica el comportamiento de un comando. |
| Argumento | Especifica sobre qué elemento actúa el comando. |
| Fichero | Archivo que contiene información. |
| Directorio | Estructura que organiza archivos y otras carpetas. |
| Sistema de archivos | Organización utilizada para almacenar información. |
| Inodo | Identificador y estructura de metadatos de un archivo. |

## 10. Conclusión

En esta clase aprendemos los fundamentos para trabajar desde la terminal de Linux: cómo se interpretan los comandos, cómo utilizar modificadores y argumentos, y cómo consultar la ayuda del sistema.

También estudiamos la estructura jerárquica de Linux, los principales directorios y los sistemas de archivos.

Estos conocimientos constituyen la base para trabajar con archivos, directorios y comandos más avanzados.

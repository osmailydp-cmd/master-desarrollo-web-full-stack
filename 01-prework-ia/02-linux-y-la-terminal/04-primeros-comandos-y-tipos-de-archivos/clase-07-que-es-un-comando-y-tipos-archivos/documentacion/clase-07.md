# Clase 07 — ¿Qué es un comando y tipos de archivos?

## 1. Objetivo de la clase

Comprender qué es un comando en Linux, cómo ejecutarlo desde la terminal y diferenciar sus **opciones (modificadores)** y **argumentos**.

También conocer los principales sistemas de archivos, la estructura de directorios de Linux y algunos comandos básicos.

## 2. Material de referencia

- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-07-Archivos-utiles-y-primeros-comandos-1_5eeab86f.pdf`

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

Durante la práctica de la clase se estudiaron los siguientes **21 comandos**:

### 5.1. Tabla resumen de comandos practicados

| N.º | Comando | Función |
|---:|---|---|
| 1 | `sudo apt-get update` | Actualiza la lista de paquetes disponibles en los repositorios. |
| 2 | `sudo apt-get install ncal` | Instala el paquete `ncal`. |
| 3 | `ncal` | Muestra el calendario del mes actual. |
| 4 | `ncal -m 8` | Muestra el calendario de agosto del año actual. |
| 5 | `who` | Muestra los usuarios con sesiones iniciadas en el sistema. |
| 6 | `whoami` | Muestra el nombre del usuario actual. |
| 7 | `date` | Muestra la fecha y hora del sistema. |
| 8 | `date +"%d/%m/%Y %H:%M"` | Muestra la fecha y hora en formato día/mes/año hora:minutos. |
| 9 | `clear` | Limpia la pantalla de la terminal sin borrar el historial. |
| 10 | `ls` | Lista los archivos y directorios de la ubicación actual. |
| 11 | `whereis ls` | Localiza el ejecutable `ls` y archivos asociados, como su manual. |
| 12 | `uname` | Muestra el nombre del núcleo del sistema operativo. |
| 13 | `uname -a` | Muestra información detallada del sistema y del kernel. |
| 14 | `cat /etc/issue` | Muestra la identificación de la distribución Linux instalada. |
| 15 | `passwd` | Permite cambiar la contraseña del usuario actual. |
| 16 | `passwd osmaily` | Permite cambiar la contraseña del usuario `osmaily`, con los permisos correspondientes. |
| 17 | `history` | Muestra el historial de comandos de la terminal. |
| 18 | `history 10` | Muestra los últimos 10 comandos del historial. |
| 19 | `sudo -v` | Valida las credenciales y actualiza la autenticación de `sudo`. |
| 20 | `sudo -i` | Abre una Shell de administrador simulando un inicio de sesión de `root`. |
| 21 | `sudo -s` | Abre una Shell con permisos de administrador conservando generalmente más características del entorno actual. |

### 5.2. Opciones, argumentos y formatos utilizados

| Elemento | Explicación |
|---|---|
| `sudo` | Ejecuta comandos con privilegios elevados, normalmente como administrador. |
| `apt-get` | Herramienta para gestionar paquetes de software. |
| `-m 8` | En `ncal`, indica que se desea mostrar el mes de agosto. |
| `%d` | Día del mes. |
| `%m` | Mes numérico. |
| `%Y` | Año de cuatro cifras. |
| `%H` | Hora en formato de 24 horas. |
| `%M` | Minutos. |
| `-a` | En `uname`, muestra toda la información disponible. |
| `/etc/issue` | Archivo que contiene información de identificación del sistema. |
| `10` | En `history 10`, indica la cantidad de comandos que se mostrarán. |
| `-v` | En `sudo`, valida o renueva la autenticación. |
| `-i` | En `sudo`, inicia una Shell de tipo login como administrador. |
| `-s` | En `sudo`, inicia una Shell con privilegios de administrador. |

### 5.3. Diferencias importantes

**`who` y `whoami`**

- `who`: muestra las sesiones de usuarios registradas.
- `whoami`: muestra el usuario con el que se ejecuta el comando.

**`passwd` y `passwd osmaily`**

- `passwd`: cambia la contraseña del usuario actual.
- `passwd osmaily`: solicita cambiar la contraseña del usuario indicado, según los permisos disponibles.

**`uname` y `uname -a`**

- `uname`: muestra el nombre del kernel, normalmente `Linux`.
- `uname -a`: muestra información más completa del sistema.

**`sudo -v`, `sudo -i` y `sudo -s`**

- `sudo -v`: valida las credenciales sin abrir una Shell de administrador.
- `sudo -i`: abre una sesión de administrador con un entorno similar al de inicio de sesión de `root`.
- `sudo -s`: abre una Shell de administrador sin simular necesariamente un inicio de sesión completo.

Para salir de una Shell abierta con `sudo -i` o `sudo -s`, ejecutar:

```bash
exit
```

### 5.4. Consultar ayuda de los comandos

El material teórico presenta dos métodos para consultar información sobre los comandos:

**Manual del comando:**

```bash
man cal
```

Para salir del manual, presionar **q**.

**Ayuda del comando:**

```bash
cal --help
```

Otros conceptos importantes:

- `!!`: hace referencia al último comando del historial.
- `sudo !!`: permite repetir el último comando utilizando `sudo`.
- `Ctrl + L`: limpia visualmente la terminal, al igual que `clear`.

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

En esta clase aprendimos los fundamentos para trabajar desde la terminal de Linux: cómo se interpretan los comandos, cómo utilizar modificadores y argumentos, y cómo consultar la ayuda del sistema.

También estudiamos la estructura jerárquica de Linux, los principales directorios y los sistemas de archivos.

Como parte práctica, registramos **21 comandos**, sus funciones y sus principales opciones, que servirán de referencia para las próximas clases del módulo Linux y la Terminal.

# Clase 08 — Ficheros y ficheros de configuración

## 1. Objetivo de la clase

Comprender cómo se almacenan y organizan los ficheros en Linux, qué son los **inodos**, cómo funcionan los enlaces y cuáles son los principales archivos de configuración del sistema operativo.

## 2. Material de referencia

- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-08-Ficheros-y-ficheros-de-configuracion_1e6e2d56.pdf`

## 3. ¿Qué es un fichero?

Un **fichero o archivo** es un conjunto de información almacenado bajo un nombre que permite identificarlo.

En Linux:

- Los archivos y directorios se organizan en una estructura jerárquica que comienza en `/`.
- Los nombres de fichero pueden tener hasta 255 caracteres, según el sistema de archivos.
- El carácter `/` se utiliza para separar directorios.
- Cada fichero tiene asociado un número de **inodo**.

## 4. ¿Qué es un inodo (i-node)?

Un **inodo** es una estructura de datos que almacena información sobre un fichero dentro del sistema de archivos.

### 4.1. Información de un inodo

| Dato | Descripción |
|---|---|
| Número de inodo | Identificador del fichero dentro del sistema de archivos. |
| Tipo | Archivo, directorio, enlace, etc. |
| Propietario y grupo | Identifican a quién pertenece. |
| Permisos | Lectura, escritura y ejecución. |
| Fechas | Creación, acceso y última modificación, según el sistema. |
| Enlaces | Referencias asociadas al inodo. |
| Tamaño y ubicación | Información para localizar los datos almacenados. |

Cuando cambian los atributos del fichero, se actualizan los metadatos correspondientes del inodo.

### 4.2. Comando para consultar inodos

```bash
ls -i
```

Muestra el número de inodo asociado a cada archivo.

También podemos utilizar:

```bash
ls -li
```

Para consultar el inodo junto con los permisos, propietario, tamaño y otros datos del archivo.

## 5. Tipos de ficheros y operaciones

### 5.1. Según su contenido o función

| Tipo | Descripción | Ejemplo |
|---|---|---|
| Fichero binario o ejecutable | Contiene instrucciones que puede ejecutar el sistema. | `/usr/bin/firefox` |
| Fichero de texto | Almacena información legible, como configuraciones. | Archivos de `/etc` |
| Shell script | Contiene una secuencia de comandos. | `listado.sh` |

### 5.2. Operaciones sobre archivos

Las principales operaciones que podemos realizar son:

- Crear, abrir, cerrar y borrar.
- Copiar, mover y renombrar.
- Modificar su contenido.
- Seleccionar archivos.
- Enlazar archivos.

## 6. Enlaces en Linux

Los enlaces permiten acceder a un fichero mediante diferentes nombres o rutas.

### 6.1. Comparación de tipos de enlaces

| Característica | Fichero regular | Enlace duro | Enlace simbólico |
|---|---|---|---|
| ¿Qué es? | Archivo original | Otro nombre para el mismo fichero | Referencia a una ruta |
| ¿Comparte inodo con el original? | — | Sí | No |
| ¿Comparte el contenido? | — | Sí | Accede al contenido del destino |
| ¿Qué sucede si se elimina el nombre original? | Se elimina ese nombre | El contenido sigue accesible por el enlace duro | El enlace queda roto si su ruta de destino ya no existe |

**Ejemplo de las diapositivas:**

| Fichero | Número de inodo |
|---|---:|
| `Prueba.txt` | 12123 |
| `Duro.lnk` | 12123 |
| `Simbolico.lnk` | 15264 |

El archivo original y su enlace duro comparten el mismo inodo. El enlace simbólico tiene uno diferente.

## 7. Ficheros ocultos

En Linux, los archivos cuyo nombre comienza con un punto (`.`) se consideran **ocultos**.

Por ejemplo:

```text
.bashrc
.profile
```

### Comandos

```bash
ls
ls -a
```

| Comando | Función |
|---|---|
| `ls` | Lista archivos visibles. |
| `ls -a` | Lista también los archivos ocultos. |

## 8. Shell scripts

Un **shell script** es un archivo que contiene comandos que se ejecutan secuencialmente mediante una Shell.

Se utiliza para automatizar tareas repetitivas, como la realización de copias de seguridad.

### 8.1. Ejemplo de las diapositivas

Archivo `listado.sh`:

```bash
#!/bin/bash

### Muestra el listado del directorio /home ###
echo "*** Muestra el listado de /home ***"
ls -lai /home
```

### 8.2. Ejecutar el script

Podemos ejecutarlo mediante:

```bash
sh listado.sh
```

O concederle permisos de ejecución:

```bash
chmod 755 listado.sh
```

Después, ejecutarlo directamente:

```bash
./listado.sh
```

**Importante:** `chmod 755` concede permisos de lectura, escritura y ejecución al propietario, y lectura y ejecución al grupo y a los demás usuarios.

## 9. Ficheros de configuración de Linux

Los archivos de configuración permiten establecer parámetros relacionados con el arranque, el almacenamiento, los programas, los usuarios y otros servicios del sistema.

### 9.1. Principales archivos y directorios de configuración

| Archivo o directorio | Función |
|---|---|
| `/etc/grub.d/` | Archivos utilizados para generar la configuración de GRUB. |
| `/etc/default/grub` | Opciones predeterminadas del gestor de arranque GRUB. |
| `/etc/fstab` | Configuración de sistemas de archivos que se montan automáticamente. |
| `/etc/apt/sources.list` | Configuración de repositorios de software. |
| `/etc/hostname` | Nombre del equipo. |
| `/etc/profile` | Configuración general del entorno de inicio de sesión. |
| `/etc/profile.d/` | Scripts adicionales de configuración del entorno. |
| `/etc/network/interfaces` | Configuración de interfaces de red en sistemas que utilizan este mecanismo. |
| `/etc/crontab` | Configuración de tareas programadas. |

### 9.2. Configuración de usuarios y grupos

| Archivo | Función |
|---|---|
| `/etc/passwd` | Información de las cuentas de usuario. |
| `/etc/group` | Información de los grupos del sistema. |
| `/etc/shadow` | Almacena información protegida de contraseñas, incluidos sus hashes. |
| `/etc/login.defs` | Parámetros predeterminados relacionados con la gestión de usuarios. |

### 9.3. Estructura de `/etc/passwd`

Este fichero contiene información sobre las cuentas de usuario.

Entre sus campos se encuentran:

| Campo | Significado |
|---|---|
| Nombre | Nombre del usuario. |
| `x` | Indica que la contraseña no está almacenada directamente en ese campo. |
| UID | Identificador del usuario. |
| GID | Identificador del grupo principal. |
| Comentario | Información descriptiva sobre el usuario. |
| HOME | Directorio personal. |
| Shell | Intérprete de comandos asignado. |

### 9.4. Estructura de `/etc/group`

Contiene información sobre los grupos:

- Nombre del grupo.
- Campo de contraseña, habitualmente `x`.
- GID o identificador del grupo.
- Usuarios miembros del grupo.

## 10. Comandos mencionados en el material

| Comando | Función |
|---|---|
| `ls -i` | Muestra los números de inodo. |
| `ls -li` | Muestra información detallada de los archivos junto con sus inodos. |
| `ls -a` | Muestra archivos ocultos. |
| `ls -lai /home` | Lista los archivos de `/home`, incluidos los ocultos, con información detallada e inodos. |
| `sh listado.sh` | Ejecuta el script mediante `sh`. |
| `chmod 755 listado.sh` | Asigna permisos al script. |
| `./listado.sh` | Ejecuta el script directamente si tiene los permisos necesarios. |
| `ifconfig` | Muestra información sobre interfaces de red cuando está disponible. |

Esta tabla recoge los comandos explicados o ilustrados en el material. **Los comandos practicados durante el video se incorporarán posteriormente**, sin duplicarlos.

## 11. Conceptos clave

| Concepto | Significado |
|---|---|
| Fichero | Conjunto de información almacenado bajo un nombre. |
| Inodo | Estructura que contiene metadatos de un fichero. |
| Enlace duro | Otro nombre que referencia el mismo inodo. |
| Enlace simbólico | Archivo que contiene una referencia a otra ruta. |
| Fichero oculto | Archivo cuyo nombre comienza con `.`. |
| Shell script | Archivo que contiene comandos para ejecutar mediante una Shell. |
| Fichero de configuración | Archivo que establece parámetros del sistema o las aplicaciones. |
| UID | Identificador de usuario. |
| GID | Identificador de grupo. |

## 12. Conclusión

En esta clase estudiamos cómo Linux organiza y administra los ficheros mediante inodos, cómo funcionan los enlaces duros y simbólicos y cómo se identifican los archivos ocultos.

También aprendimos el concepto de **shell script** como herramienta para automatizar tareas y conocimos los principales archivos de configuración del sistema, especialmente los relacionados con GRUB, almacenamiento, repositorios, usuarios y grupos.

Estos conocimientos permiten comprender mejor la organización interna de Linux y preparan el camino para administrar archivos y configurar el sistema desde la terminal.

# Clase 08 — Ficheros y ficheros de configuración

## 1. Objetivo de la clase

Comprender cómo se almacenan y organizan los ficheros en Linux, qué son los **inodos**, cómo funcionan los enlaces duros y simbólicos y cuáles son los principales archivos de configuración del sistema operativo.

Durante la práctica también se trabajó con archivos ocultos, permisos de acceso y consultas de configuración de usuarios y grupos.

## 2. Material de referencia

- **Curso:** Máster en Desarrollo Full Stack.
- **Módulo:** Linux y la Terminal.
- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-08-Ficheros-y-ficheros-de-configuracion_1e6e2d56.pdf`

## 3. Gestión de archivos y directorios

Un **fichero o archivo** es un conjunto de información relacionada con un mismo concepto, almacenada bajo un nombre que permite identificarla.

En Linux:

- Los archivos y directorios se organizan jerárquicamente desde el directorio raíz `/`.
- Los nombres de fichero pueden tener hasta 255 caracteres, dependiendo del sistema de archivos.
- El carácter `/` se utiliza para separar directorios.
- Cada fichero se identifica también mediante un número de **inodo (i-node)**.

### 3.1. ¿Qué es un inodo?

Un **inodo** es una estructura de datos que identifica un fichero dentro de un sistema de archivos y almacena sus metadatos.

Los inodos se organizan en una tabla denominada **tabla de inodos**.

| Información | Descripción |
|---|---|
| Número de inodo | Identificador del fichero dentro del sistema de archivos. |
| Tipo de fichero | Archivo regular, directorio, enlace simbólico, etc. |
| Propietario y grupo | Identifican a quién pertenece el fichero. |
| Permisos | Determinan quién puede leer, escribir o ejecutar. |
| Fechas | Información de acceso, modificación y otros tiempos disponibles. |
| Enlaces | Referencias asociadas al inodo. |
| Tamaño y bloques | Información del espacio utilizado por el fichero. |

Cuando se modifican los atributos de un fichero, se actualizan sus metadatos correspondientes.

**Comando para consultar inodos:**

```bash
ls -li
```

Muestra el número de inodo junto con los permisos, propietario, tamaño y fecha de modificación.

## 4. Tipos de ficheros y operaciones

### 4.1. Tipos de ficheros

Según su función, podemos distinguir:

| Tipo | Descripción | Ejemplo |
|---|---|---|
| Binario o ejecutable | Contiene instrucciones ejecutables por el sistema. | `/usr/bin/firefox` |
| Fichero de texto | Almacena información legible, como configuraciones. | Archivos de `/etc` |
| Shell script | Contiene una secuencia de comandos ejecutados mediante una Shell. | `listado.sh` |

Las diapositivas utilizan Firefox como ejemplo de aplicación con un ejecutable y archivos de configuración asociados.

### 4.2. Operaciones sobre ficheros

Las operaciones principales son:

- **Crear:** generar un nuevo fichero.
- **Borrar:** eliminarlo.
- **Copiar:** crear una copia en otra ubicación.
- **Mover:** cambiar su ubicación.
- **Modificar:** actualizar su contenido.
- **Seleccionar:** identificar los ficheros sobre los que se desea trabajar.
- **Renombrar:** cambiar su nombre.
- **Abrir y cerrar:** acceder al fichero y finalizar su uso.
- **Enlazar:** crear otra referencia al fichero.

## 5. Enlaces en Linux

Los enlaces permiten acceder a un fichero mediante diferentes nombres o rutas.

### 5.1. Enlace duro

Un **enlace duro (hard link)** es otro nombre que referencia el mismo inodo que un fichero existente.

Características:

- Comparte el número de inodo con el fichero original.
- Accede a los mismos datos.
- Los cambios realizados mediante cualquiera de los nombres se reflejan en ambos.
- Si se elimina uno de los nombres, el otro sigue permitiendo acceder al contenido.

**Sintaxis:**

```bash
ln archivo_original enlace_duro
```

### 5.2. Enlace simbólico

Un **enlace simbólico (symbolic link)** es un fichero que contiene una referencia a otra ruta.

Características:

- Tiene su propio número de inodo.
- Apunta a un fichero o directorio mediante su ruta.
- Si el destino deja de existir en esa ruta, el enlace queda roto.
- Eliminar el enlace simbólico no elimina su destino.

**Sintaxis:**

```bash
ln -s archivo_original enlace_simbolico
```

### 5.3. Diferencias entre enlaces

| Característica | Enlace duro | Enlace simbólico |
|---|---|---|
| Comparte el inodo del destino | Sí | No |
| Referencia | El mismo fichero mediante otro nombre | Una ruta |
| Refleja modificaciones del contenido | Sí | Sí, mientras resuelva el destino |
| Si se renombra el destino | Continúa funcionando | Puede quedar roto |
| Si se elimina el nombre original | Continúa funcionando | Puede quedar roto |
| Puede enlazar directorios | Generalmente no | Sí |

## 6. Ficheros ocultos

En Linux, los nombres de archivos y directorios que comienzan con un punto (`.`) se consideran **ocultos**.

Ejemplos:

```text
.bashrc
.profile
.bash_history
```

| Comando | Función |
|---|---|
| `ls` | Muestra los archivos visibles. |
| `ls -l` | Muestra el listado detallado de archivos visibles. |
| `ls -a` | Incluye los archivos ocultos en el listado. |

**Importante:** ocultar un archivo no significa eliminarlo ni protegerlo mediante permisos.

## 7. Shell scripts

Un **shell script** es un fichero que contiene comandos que una Shell ejecuta de forma secuencial.

Se utiliza para automatizar tareas repetitivas, como copias de seguridad o procesos de mantenimiento.

Es comparable, en su finalidad, a los archivos `.bat` de Windows.

### 7.1. Ejemplo del material

Archivo `listado.sh`:

```bash
#!/bin/bash

echo "*** Muestra el listado de /home ***"
ls -lai /home
```

### 7.2. Permisos de ejecución

Las diapositivas muestran el siguiente comando:

```bash
chmod 755 listado.sh
```

El valor `755` establece:

| Usuario | Permisos |
|---|---|
| Propietario | Lectura, escritura y ejecución (`rwx`). |
| Grupo | Lectura y ejecución (`r-x`). |
| Otros | Lectura y ejecución (`r-x`). |

Una vez concedido el permiso de ejecución, el script puede ejecutarse con:

```bash
./listado.sh
```

**Nota:** los scripts y el uso de `chmod` se estudiaron en el material teórico; no forman parte de los comandos prácticos compartidos en esta clase.

## 8. Ficheros de configuración del sistema

Los ficheros de configuración permiten establecer parámetros del sistema operativo, aplicaciones y servicios.

### 8.1. Principales archivos de configuración

| Archivo o directorio | Función |
|---|---|
| `/etc/grub.d/` | Archivos utilizados para generar la configuración del gestor de arranque GRUB. |
| `/etc/default/grub` | Opciones del gestor de arranque GRUB. |
| `/etc/fstab` | Configuración del montaje de sistemas de archivos. |
| `/etc/apt/sources.list` | Lista de repositorios de software. |
| `/etc/hostname` | Nombre del equipo. |
| `/etc/profile` | Configuración general del entorno de inicio de sesión. |
| `/etc/profile.d/` | Scripts complementarios de configuración del entorno. |
| `/etc/network/interfaces` | Configuración de interfaces de red en sistemas que utilizan este mecanismo. |
| `/etc/crontab` | Configuración de tareas programadas. |

### 8.2. Archivos de usuarios y grupos

| Archivo | Función |
|---|---|
| `/etc/passwd` | Información de las cuentas de usuario. |
| `/etc/group` | Información de los grupos del sistema. |
| `/etc/shadow` | Hashes de contraseñas y parámetros de vencimiento. |
| `/etc/login.defs` | Valores predeterminados utilizados por herramientas de administración de cuentas. |

### 8.3. Estructura de `/etc/passwd`

Cada línea contiene siete campos separados por dos puntos (`:`).

Ejemplo obtenido durante la práctica:

```text
osmaily:x:1000:1000:Osmaily,,,:/home/osmaily:/bin/bash
```

| Campo | Valor | Significado |
|---|---|---|
| Usuario | `osmaily` | Nombre de la cuenta. |
| Contraseña | `x` | Indica que el hash se almacena normalmente en `/etc/shadow`. |
| UID | `1000` | Identificador del usuario. |
| GID | `1000` | Identificador del grupo principal. |
| Comentario | `Osmaily,,,` | Información descriptiva. |
| HOME | `/home/osmaily` | Directorio personal. |
| Shell | `/bin/bash` | Intérprete de comandos asignado. |

### 8.4. Estructura de `/etc/group`

Cada línea contiene cuatro campos separados por dos puntos (`:`).

Ejemplo:

```text
sudo:x:27:osmaily
```

| Campo | Valor | Significado |
|---|---|---|
| Grupo | `sudo` | Nombre del grupo. |
| Contraseña | `x` | Campo de contraseña del grupo. |
| GID | `27` | Identificador del grupo. |
| Miembros | `osmaily` | Usuario incluido como miembro suplementario. |

El grupo principal de un usuario se identifica mediante el GID registrado en `/etc/passwd`; no es necesario que aparezca en la lista de miembros de `/etc/group`.

### 8.5. Estructura de `/etc/shadow`

Este archivo almacena información protegida relacionada con las contraseñas.

Contiene nueve campos:

| Campo | Significado |
|---|---|
| Usuario | Nombre de la cuenta. |
| Contraseña | Hash o indicador de contraseña no utilizable. |
| Último cambio | Días desde el 1 de enero de 1970. |
| Mínimo | Días mínimos entre cambios de contraseña. |
| Máximo | Días máximos de validez. |
| Aviso | Días de advertencia antes del vencimiento. |
| Inactividad | Período de inactividad después del vencimiento. |
| Expiración | Fecha de vencimiento de la cuenta. |
| Reservado | Uso futuro. |

Por seguridad, **no deben publicarse hashes reales de contraseñas en GitHub**.

### 8.6. Archivo `/etc/login.defs`

Define parámetros predeterminados que utilizan determinadas herramientas de administración de cuentas.

| Parámetro | Función |
|---|---|
| `PASS_MAX_DAYS` | Validez máxima de una contraseña en días. |
| `PASS_MIN_DAYS` | Tiempo mínimo entre cambios. |
| `PASS_WARN_AGE` | Días de aviso antes del vencimiento. |
| `UID_MIN` / `UID_MAX` | Rango habitual de UID de usuarios normales. |
| `GID_MIN` / `GID_MAX` | Rango habitual de GID de grupos normales. |
| `UMASK` | Máscara de permisos predeterminada. |

Los valores dependen de la configuración del sistema.

## 9. Práctica realizada — Enlaces, archivos ocultos y configuración

La práctica se realizó desde la terminal de Ubuntu, en el directorio:

```text
/home/osmaily
```

### 9.1. Creación del archivo y consulta de inodos

Se creó `prueba.txt` utilizando Nano y se consultó su información con `ls -li`.

Datos observados inicialmente:

| Propiedad | Valor |
|---|---|
| Archivo | `prueba.txt` |
| Inodo | `805965` |
| Propietario | `osmaily` |
| Grupo | `osmaily` |
| Permisos | `-rw-rw-r--` |
| Tamaño inicial | 19 bytes |

### 9.2. Creación del enlace duro

Se ejecutó:

```bash
ln prueba.txt duro.txt
```

Resultado:

| Archivo | Inodo |
|---|---:|
| `prueba.txt` | 805965 |
| `duro.txt` | 805965 |

Ambos nombres compartían el mismo inodo.

Al modificar el contenido mediante Nano, el tamaño reflejado en ambos archivos aumentó de 19 a 39 bytes y posteriormente a 74 bytes.

**Comprobación:** un enlace duro permite acceder al mismo contenido mediante diferentes nombres.

### 9.3. Creación del enlace simbólico

Se ejecutó:

```bash
ln -s duro.txt blando.txt
```

Resultado:

| Archivo | Inodo | Tipo |
|---|---:|---|
| `prueba.txt` | 805965 | Archivo regular |
| `duro.txt` | 805965 | Enlace duro |
| `blando.txt` | 794170 | Enlace simbólico |

El listado mostraba:

```text
blando.txt -> duro.txt
```

Esto confirmó que `blando.txt` apuntaba a la ruta `duro.txt`, pero tenía su propio inodo.

### 9.4. Comportamiento al renombrar el destino

Se ejecutó:

```bash
mv duro.txt duro2.txt
```

Al cambiar el nombre, el enlace simbólico continuó apuntando a `duro.txt`, por lo que quedó roto temporalmente.

Después se ejecutó:

```bash
mv duro2.txt duro.txt
```

Al recuperar el nombre original, el enlace simbólico volvió a resolver su destino.

**Comprobación:** el enlace simbólico depende de la ruta a la que apunta.

### 9.5. Eliminación del enlace simbólico

Se ejecutó:

```bash
rm blando.txt
```

El enlace simbólico desapareció, pero `duro.txt` y `prueba.txt` permanecieron intactos.

**Comprobación:** borrar un enlace simbólico no elimina su archivo de destino.

### 9.6. Creación de un fichero oculto

Se ejecutó:

```bash
mv duro.txt .duro.txt
```

Después se compararon los resultados de:

```bash
ls -l
ls -a
```

- `ls -l` no mostraba `.duro.txt`.
- `ls -a` sí mostraba `.duro.txt`.

**Comprobación:** un fichero cuyo nombre comienza con `.` queda oculto en los listados normales.

### 9.7. Consulta de archivos de configuración

Se consultaron los siguientes archivos:

| Archivo | Resultado o aprendizaje |
|---|---|
| `/etc/hostname` | El nombre del equipo era `pc-ubuntu-osmaily`. |
| `/etc/passwd` | Se identificaron UID, GID, HOME y Shell del usuario `osmaily`. |
| `/etc/group` | Se revisaron los grupos y sus miembros. |
| `/etc/shadow` | Se comprobó que requiere privilegios para su lectura. |
| `/etc/login.defs` | Se estudió su función como archivo de valores predeterminados. |

En `/etc/group` se comprobó que `osmaily` pertenece al grupo `vboxsf`, relacionado con las carpetas compartidas de VirtualBox.

Al intentar leer `/etc/shadow` sin privilegios, apareció:

```text
cat: /etc/shadow: Permiso denegado
```

Con `sudo` fue posible consultar su contenido.

No se registró la salida concreta del comando utilizado para `/etc/login.defs`.

## 10. Tabla resumen de comandos practicados

Se registraron **20 comandos diferentes** durante la Clase 08.

| N.º | Comando | Función |
|---:|---|---|
| 1 | `pwd` | Muestra la ruta del directorio actual. |
| 2 | `ls` | Lista archivos y directorios. |
| 3 | `ls -l` | Muestra información detallada. |
| 4 | `ls -li` | Muestra información detallada, incluyendo inodos. |
| 5 | `nano prueba.txt` | Crea o modifica el archivo `prueba.txt`. |
| 6 | `ln prueba.txt duro.txt` | Crea un enlace duro. |
| 7 | `nano duro.txt` | Modifica el archivo mediante el enlace duro. |
| 8 | `ln -s duro.txt blando.txt` | Crea un enlace simbólico. |
| 9 | `nano blando.txt` | Accede al contenido mediante el enlace simbólico. |
| 10 | `mv duro.txt duro2.txt` | Renombra el destino del enlace simbólico. |
| 11 | `mv duro2.txt duro.txt` | Recupera el nombre del destino. |
| 12 | `rm blando.txt` | Elimina el enlace simbólico. |
| 13 | `mv duro.txt .duro.txt` | Oculta el archivo mediante un punto inicial. |
| 14 | `ls -a` | Lista también los archivos ocultos. |
| 15 | `cat /etc/hostname` | Muestra el nombre del equipo. |
| 16 | `cat /etc/passwd` | Muestra información de las cuentas de usuario. |
| 17 | `cat /etc/group` | Muestra información de los grupos. |
| 18 | `cat /etc/shadow` | Intenta acceder a un archivo protegido sin privilegios. |
| 19 | `sudo cat /etc/shadow` | Lee el archivo protegido con privilegios elevados. |
| 20 | `sudo cat /etc/login.defs` | Consulta la configuración predeterminada de gestión de cuentas. |

**Observación:** durante la práctica también se ejecutaron varios comandos repetidos, como `ls -li` y `nano prueba.txt`, para comprobar los resultados de cada modificación. La tabla registra una sola vez cada comando diferente.

## 11. Conceptos clave

| Concepto | Significado |
|---|---|
| Fichero | Conjunto de información almacenado bajo un nombre. |
| Inodo | Estructura de metadatos que identifica un fichero dentro de un sistema de archivos. |
| Enlace duro | Nombre adicional que referencia el mismo inodo. |
| Enlace simbólico | Archivo que contiene una referencia a una ruta. |
| Fichero oculto | Archivo cuyo nombre comienza por `.`. |
| Shell script | Archivo que permite ejecutar una secuencia de comandos. |
| Fichero de configuración | Archivo que contiene parámetros del sistema o de una aplicación. |
| UID | Identificador numérico del usuario. |
| GID | Identificador numérico del grupo. |
| `sudo` | Permite ejecutar comandos con privilegios elevados. |

## 12. Conclusión

En esta clase aprendimos cómo Linux almacena y organiza los ficheros mediante inodos, así como las principales operaciones que pueden realizarse sobre ellos.

Mediante la práctica comprobamos que los **enlaces duros comparten el mismo inodo**, mientras que los **enlaces simbólicos dependen de la ruta de destino**. También aprendimos a crear archivos ocultos y a identificarlos desde la terminal.

Finalmente, exploramos archivos de configuración relacionados con el nombre del equipo, los usuarios, los grupos y las contraseñas, comprendiendo la importancia de los permisos para proteger información sensible.

La clase quedó documentada con **20 comandos diferentes**, ejemplos reales de ejecución y resultados obtenidos en Ubuntu.

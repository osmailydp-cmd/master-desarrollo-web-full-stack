# Clase 11 — Comandos útiles I

## 1. Objetivo de la clase

Aprender a utilizar los principales comandos de Linux para consultar manuales, navegar por directorios y gestionar archivos y carpetas desde la terminal.

Los ocho comandos estudiados fueron:

`man`, `ls`, `cd`, `mkdir`, `rmdir`, `cp`, `rm` y `mv`.

También se utilizó `touch` como comando complementario para crear archivos de prueba.

## 2. Material de referencia

- **Curso:** Máster en Desarrollo Full Stack.
- **Módulo:** Linux y la Terminal.
- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-11-Primeros-comandos-utiles_b34e669c.pdf`

**Nota:** el PDF contiene el índice de comandos, sin explicaciones detalladas. Los siguientes ejemplos corresponden a las demostraciones realizadas por el profesor durante el video.

## 3. `man` — Consultar manuales

El comando `man` permite consultar la documentación de otros comandos, conocer su sintaxis, sus opciones y su funcionamiento.

**Ejemplo:**

```bash
man ls
```

El manual muestra secciones como:

| Sección | Significado |
|---|---|
| `NAME` | Nombre y descripción breve del comando. |
| `SYNOPSIS` | Sintaxis y argumentos admitidos. |
| `DESCRIPTION` | Descripción y opciones disponibles. |

### 3.1. Navegar por el manual

| Tecla | Función |
|---|---|
| `↑` / `↓` | Desplazarse por el texto. |
| `Espacio` | Avanzar una página. |
| `b` | Retroceder una página. |
| `/palabra` | Buscar una palabra. |
| `n` | Ir a la siguiente coincidencia. |
| `q` | Salir del manual. |

El profesor también ejecutó `man cd`, pero su sistema respondió que no existía una entrada específica del manual.

Esto se debe a que `cd` es un comando interno de Bash. Su ayuda puede consultarse mediante:

```bash
help cd
```

## 4. `ls` — Listar archivos y directorios

Permite visualizar el contenido de un directorio.

```bash
ls
```

Para consultar información detallada:

```bash
ls -l
```

El listado detallado incluye el tipo de fichero, los permisos, el número de enlaces duros, el propietario, el grupo, el tamaño y la fecha de modificación.

### 4.1. Opciones estudiadas

El profesor mostró varias opciones desde `man ls`.

| Opción | Función |
|---|---|
| `-a`, `--all` | Muestra también archivos ocultos, incluidos `.` y `..`. |
| `-A`, `--almost-all` | Muestra los ocultos, excepto `.` y `..`. |
| `-l` | Utiliza el formato de listado detallado. |
| `-i`, `--inode` | Muestra el número de inodo de cada fichero. |
| `-I`, `--ignore=PATTERN` | Excluye los nombres que coinciden con un patrón. |
| `--hide=PATTERN` | Oculta nombres coincidentes, salvo que se utilicen `-a` o `-A`. |

Estas opciones complementan lo aprendido en las clases anteriores sobre archivos ocultos e inodos.

## 5. `cd` — Cambiar de directorio

El comando `cd` (*Change Directory*) permite cambiar el directorio de trabajo.

El profesor comprobó su ubicación:

```bash
pwd
```

Resultado:

```text
/home/usuario
```

Después ejecutó:

```bash
cd Escritorio/
```

Y accedió al directorio:

```text
/home/usuario/Escritorio
```

Este ejemplo utiliza una **ruta relativa**, porque parte del directorio actual.

## 6. `touch` — Crear archivos de prueba

Aunque no figura entre los ocho comandos del índice, el profesor utilizó `touch` durante la clase.

Permite crear un archivo vacío cuando no existe o actualizar sus marcas de tiempo cuando ya existe.

### 6.1. Crear un fichero en el directorio actual

```bash
touch prueba.txt
```

### 6.2. Crear un fichero mediante una ruta absoluta

```bash
touch /home/usuario/Escritorio/pruebaescritorio.txt
```

Este comando crea el fichero directamente en `Escritorio`.

El profesor también mostró:

```bash
touch pruebaescritorio.txt /home/usuario/Escritorio/
```

En este caso, `touch` recibe dos argumentos independientes: crea `pruebaescritorio.txt` en el directorio actual y actualiza las marcas de tiempo del directorio `Escritorio`.

**Concepto importante:** para crear un fichero en una ubicación concreta, debemos indicar su ruta junto con el nombre del archivo.

## 7. `mkdir` — Crear directorios

`mkdir` permite crear carpetas desde la terminal.

### 7.1. Crear un directorio

```bash
mkdir Escritorio/pruebadirectorio
```

Crea `pruebadirectorio` dentro de `Escritorio`, siempre que el directorio padre exista.

### 7.2. Crear directorios intermedios

El profesor explicó que:

```bash
mkdir Escritorio/Ejercicios/Javascript
```

No funciona si todavía no existe `Ejercicios`.

Para crear toda la estructura utilizó:

```bash
mkdir -p Escritorio/Ejercicios/Javascript
```

La opción `-p` (`--parents`) permite crear automáticamente los directorios intermedios que sean necesarios.

## 8. `rmdir` — Eliminar directorios vacíos

El comando `rmdir` permite eliminar directorios que estén vacíos.

El profesor consultó su manual:

```bash
man rmdir
```

Después intentó eliminar `Ejercicios`, que contenía `Javascript`, y comprobó que no podía hacerlo mientras tuviera contenido.

La eliminación correcta se realizó desde el directorio más interno:

```bash
rmdir Ejercicios/Javascript/
rmdir Ejercicios
```

**Concepto importante:** `rmdir` únicamente elimina directorios vacíos.

## 9. `cp` — Copiar archivos y directorios

`cp` significa *copy* y permite copiar archivos, cambiar el nombre de las copias y copiar directorios.

El profesor consultó:

```bash
man cp
```

Sintaxis básica:

```bash
cp origen destino
```

### 9.1. Ejemplos realizados por el profesor

Los siguientes ejemplos se ejecutaron desde el directorio `Princip`.

| Comando | Función |
|---|---|
| `cp fichero2.txt prueba.txt` | Copia un fichero en el mismo directorio, asignándole otro nombre. |
| `cp fichero2.txt Programa/` | Copia el fichero dentro de `Programa`, conservando su nombre. |
| `cp fichero2.txt Programa/otronombre.txt` | Copia el fichero dentro de `Programa` con un nombre diferente. |
| `cp *.txt Apuntes/` | Copia todos los ficheros `.txt` del directorio actual a `Apuntes`. |
| `cp Apuntes/Sistemas/tema1.doc Programa/` | Copia un fichero de un subdirectorio a otro utilizando rutas relativas. |

En todos estos ejemplos, **`cp` conserva el archivo original**.

### 9.2. Copiar directorios completos

El profesor destacó en el manual la opción:

```text
-R, -r, --recursive
```

Se utiliza para copiar directorios y su contenido recursivamente.

Ejecutó:

```bash
cp -r Apuntes OtroDirectorio
```

El resultado fue una nueva carpeta `OtroDirectorio`, con la misma estructura y los archivos que contenía `Apuntes`.

```text
OtroDirectorio/
├── fichero2.txt
├── fichero.txt
├── prueba.txt
└── Sistemas/
    └── tema1.doc
```

### 9.3. Otras opciones mostradas en `man cp`

| Opción | Función |
|---|---|
| `-r`, `-R`, `--recursive` | Copia directorios recursivamente. |
| `-a`, `--archive` | Copia recursivamente procurando conservar atributos. |
| `-n`, `--no-clobber` | Evita sobrescribir archivos existentes en la versión del manual mostrada. |
| `-L`, `--dereference` | Sigue los enlaces simbólicos del origen. |
| `-P`, `--no-dereference` | No sigue los enlaces simbólicos del origen. |
| `-p` | Conserva permisos, propietario y marcas de tiempo cuando es posible. |
| `--parents` | Conserva la estructura de directorios de la ruta de origen bajo el destino. |

Estas opciones aparecieron en el manual; no todas fueron utilizadas en los ejemplos.

## 10. `rm` — Eliminar archivos y directorios

`rm` significa *remove* y permite eliminar archivos.

El profesor consultó:

```bash
man rm
```

### 10.1. Eliminar un archivo

```bash
rm prueba.txt
```

Elimina el archivo indicado.

### 10.2. Eliminar directorios recursivamente

Para eliminar un directorio que contiene archivos y subdirectorios, se utiliza la opción `-r`.

El profesor ejecutó:

```bash
rm -r OtroDirectorio/
```

Esto eliminó la carpeta `OtroDirectorio` junto con su contenido.

### 10.3. Eliminar archivos mediante comodines

También mostró cómo combinar `rm` con los patrones estudiados en la Clase 09.

| Comando | Función |
|---|---|
| `rm Apuntes/*.txt` | Elimina los archivos `.txt` situados directamente dentro de `Apuntes`. |
| `rm Programa/*.*` | Elimina los archivos cuyos nombres coinciden con el patrón `*.*` dentro de `Programa`. |
| `rm prueba.txt` | Elimina un archivo individual. |

El patrón `*.*` selecciona nombres que contienen un punto, pero no significa necesariamente todos los archivos.

### 10.4. Opciones mostradas en el manual

| Opción | Función |
|---|---|
| `-r`, `-R`, `--recursive` | Elimina directorios y su contenido recursivamente. |
| `-i` | Solicita confirmación antes de cada eliminación. |
| `-I` | Solicita confirmación en determinadas eliminaciones múltiples o recursivas. |
| `-d`, `--dir` | Elimina directorios vacíos. |
| `-v`, `--verbose` | Muestra las operaciones realizadas. |
| `--one-file-system` | Evita atravesar otros sistemas de archivos durante una eliminación recursiva. |
| `--preserve-root` | Mantiene la protección del directorio raíz `/`. |

**Precaución:** `rm` normalmente elimina archivos sin enviarlos a la papelera. Es importante comprobar los elementos seleccionados antes de ejecutar el comando.

### 10.5. Diferencia entre `rmdir` y `rm -r`

| Comando | Función |
|---|---|
| `rmdir directorio/` | Elimina únicamente un directorio vacío. |
| `rm -r directorio/` | Elimina un directorio junto con su contenido. |

## 11. `mv` — Mover y renombrar archivos

`mv` significa *move* y permite cambiar la ubicación o el nombre de archivos y directorios.

### 11.1. Mover un archivo a otro directorio

El profesor ejecutó:

```bash
mv Apuntes/Sistemas/tema1.doc Programa/
```

Esto trasladó `tema1.doc` desde `Sistemas` hasta `Programa`.

A diferencia de `cp`, el archivo dejó de estar en su ubicación original.

### 11.2. Mover archivos con comodines

Para devolver el fichero a su ubicación inicial, utilizó:

```bash
mv Programa/*.doc Apuntes/Sistemas/
```

El comodín `*.doc` permitió seleccionar los archivos terminados en `.doc` dentro de `Programa`.

### 11.3. Renombrar un archivo

Finalmente, el profesor creó un archivo de prueba y cambió su nombre:

```bash
touch prueba.txt
mv prueba.txt prueba2.txt
```

Después comprobó con `ls` que aparecía `prueba2.txt` en lugar de `prueba.txt`.

Para terminar, lo eliminó:

```bash
rm prueba2.txt
```

### 11.4. Diferencia entre copiar, mover y renombrar

| Comando | Resultado |
|---|---|
| `cp prueba.txt prueba2.txt` | Crea una copia y conserva el original. |
| `mv prueba.txt prueba2.txt` | Renombra el archivo dentro del mismo directorio. |
| `mv prueba.txt Programa/` | Mueve el archivo a otro directorio. |
| `mv prueba.txt Programa/prueba2.txt` | Mueve y renombra el archivo al mismo tiempo. |

## 12. Tabla resumen de comandos de la clase

| N.º | Comando | Función principal |
|---:|---|---|
| 1 | `man` | Consultar manuales de comandos. |
| 2 | `ls` | Listar archivos y directorios. |
| 3 | `cd` | Cambiar de directorio. |
| 4 | `mkdir` | Crear directorios. |
| 5 | `rmdir` | Eliminar directorios vacíos. |
| 6 | `cp` | Copiar archivos y directorios. |
| 7 | `rm` | Eliminar archivos y directorios utilizando las opciones correspondientes. |
| 8 | `mv` | Mover y renombrar archivos y directorios. |
| 9 | `touch` | Crear archivos vacíos o actualizar marcas de tiempo. |

**Comandos complementarios utilizados en la demostración:** `pwd` para consultar la ubicación actual y `tree` para comprobar las estructuras de directorios.

## 13. Conceptos clave

| Concepto | Significado |
|---|---|
| Manual | Documentación de un comando y sus opciones. |
| Comando interno | Instrucción ejecutada directamente por la Shell, como `cd`. |
| Ruta relativa | Ruta definida desde el directorio actual. |
| Ruta absoluta | Ruta que comienza desde `/`. |
| Copia | Creación de otro archivo conservando el original. |
| Recursividad | Operación que incluye los subdirectorios y su contenido. |
| Comodín | Patrón utilizado para seleccionar nombres de archivos y directorios. |
| Movimiento | Cambio de ubicación de un archivo o directorio. |
| Renombrado | Cambio de nombre de un archivo o directorio. |

## 14. Conclusión

En la Clase 11 aprendimos a consultar documentación mediante `man` y a utilizar los principales comandos de Linux para gestionar archivos y directorios.

El profesor demostró cómo crear y eliminar directorios, copiar archivos individualmente o mediante comodines, copiar carpetas completas con `cp -r`, eliminar archivos con `rm` y mover o renombrar elementos mediante `mv`.

También comprobamos la importancia de las **rutas relativas**, los **caracteres comodines** y las opciones recursivas.

La demostración terminó recuperando la estructura inicial del ejercicio después de las operaciones de copia, eliminación y movimiento.

**La clase fue seguida mediante las demostraciones del profesor.** Los ejercicios de creación de archivos, directorios y navegación que ya realizamos en Ubuntu están documentados por separado en la práctica de la Clase 09, evitando duplicar contenido en el portafolio.

# Práctica adicional — Creación y navegación de una estructura de directorios

## 1. Objetivo

Recrear en Ubuntu la estructura de archivos y directorios del ejercicio de la Clase 09 para practicar los comandos `mkdir`, `touch`, `tree`, `cd`, `ls`, el uso de rutas relativas y absolutas y los caracteres comodines para buscar archivos.

## 2. Crear la estructura de directorios

Primero accedimos al directorio personal y creamos la carpeta principal de la práctica:

```bash
cd ~
mkdir Practica-Clase-09
cd Practica-Clase-09
```

A continuación, creamos los subdirectorios:

```bash
mkdir -p Princip/Docs/Word
mkdir -p Princip/Docs/Excel
mkdir -p Princip/Programa
mkdir -p Princip/Apuntes/Sistemas
```

La opción `-p` permite crear los directorios intermedios que todavía no existen.

## 3. Crear los archivos

Utilizamos `touch` para crear cinco archivos vacíos:

```bash
touch Princip/fichero.txt
touch Princip/fichero2.txt
touch Princip/Docs/doc1.txt
touch Princip/Docs/doc2.txt
touch Princip/Apuntes/Sistemas/tema1.doc
```

## 4. Comprobar la estructura creada

Utilizamos `ls -R` para listar recursivamente los directorios:

```bash
ls -R Princip
```

Después instalamos la herramienta `tree`:

```bash
sudo apt install tree
```

Y visualizamos la estructura desde `/home/osmaily`:

```bash
tree Practica-Clase-09/
```

El resultado fue:

```text
Practica-Clase-09/
└── Princip
    ├── Apuntes
    │   └── Sistemas
    │       └── tema1.doc
    ├── Docs
    │   ├── doc1.txt
    │   ├── doc2.txt
    │   ├── Excel
    │   └── Word
    ├── fichero2.txt
    ├── fichero.txt
    └── Programa

7 directories, 5 files
```

**Resultado:** la estructura inicial se creó correctamente y coincide con el ejercicio del profesor.

## 5. Navegación por los directorios

Practicamos el desplazamiento utilizando rutas relativas y absolutas.

| Comando | Función |
|---|---|
| `cd ~` | Accede al directorio personal `/home/osmaily`. |
| `cd Practica-Clase-09/Princip/Apuntes/Sistemas/` | Accede a `Sistemas` desde el directorio personal mediante una ruta relativa. |
| `cd ../..` | Sube dos niveles, desde `Sistemas` hasta `Princip`. |
| `cd Docs/Excel/` | Entra en `Excel` desde `Princip`. |
| `cd ..` | Sube desde `Excel` hasta `Docs`. |
| `cd ../Apuntes/` | Desde `Docs`, sube a `Princip` y entra en `Apuntes`. |
| `cd ./Sistemas/` | Accede a `Sistemas` desde `Apuntes`. |
| `cd ../../Docs/` | Desde `Sistemas`, sube dos niveles hasta `Princip` y entra en `Docs`. |
| `ls` | Comprueba el contenido de los directorios. |
| `cd ../` | Regresa al directorio padre. |

### 5.1. Comprobación de rutas

Durante la práctica verificamos que:

- `.` representa el directorio actual.
- `..` representa el directorio padre.
- `../..` permite subir dos niveles.
- `~` representa el directorio personal del usuario.
- Las rutas relativas dependen de la ubicación actual.
- Las rutas absolutas comienzan desde el directorio raíz `/`.

## 6. Práctica de caracteres comodines

Para practicar los comodines utilizamos los archivos originales y creamos otros archivos de prueba dentro de:

```text
/home/osmaily/Practica-Clase-09/Princip/
```

### 6.1. Buscar archivos por extensión

**Buscar archivos terminados en `.txt`:**

```bash
ls *.txt
```

Desde `/home/osmaily`, encontramos:

```text
prueba.txt
```

Desde `Princip`, encontramos:

```text
fichero2.txt  fichero.txt
```

Esto demuestra que el resultado depende del directorio donde se ejecuta el comando.

**Buscar archivos terminados en `.jpg`:**

Creamos un archivo de prueba:

```bash
touch archivo-jpg.jpg
ls *.jpg
```

Resultado:

```text
archivo-jpg.jpg
```

### 6.2. Buscar archivos que comienzan por determinados caracteres

**Archivos que comienzan por `f`:**

```bash
ls f*
```

Resultado inicial:

```text
fichero2.txt  fichero.txt
```

**Archivos que comienzan por `a`:**

```bash
touch a-fichero-comienza-con-a.txt
ls a*
```

Resultado:

```text
a-fichero-comienza-con-a.txt
```

**Archivos que comienzan por `e` o `d`:**

Creamos los archivos:

```bash
touch e-fichero-comienza-con-e.txt
touch d-fichero-comienza-con-d.txt
```

Después ejecutamos:

```bash
ls [ed]*
```

Resultado:

```text
dataABC.csv
d-fichero-comienza-con-d.txt
e-fichero-comienza-con-e.txt
```

El patrón `[ed]` representa un único carácter que puede ser `e` o `d`, mientras que `*` representa cero o más caracteres adicionales.

### 6.3. Buscar archivos con un carácter y un número

Creamos un archivo de prueba:

```bash
touch o4.txt
```

Ejecutamos:

```bash
ls ?[0-9].txt
```

Resultado:

```text
o4.txt
```

**Explicación:**

- `?` representa un carácter cualquiera.
- `[0-9]` representa un dígito.
- `.txt` es la extensión requerida.

### 6.4. Buscar archivos dentro de otro directorio

Creamos un directorio y varios archivos de prueba:

```bash
mkdir Fotos
touch foto1.jpg
touch foto2.jpg
cd Fotos/
touch foto3.png
touch foto4.png
cd ..
```

Después ejecutamos:

```bash
ls Fotos/*.png
```

Resultado:

```text
Fotos/foto3.png  Fotos/foto4.png
```

Esto demuestra que podemos combinar una ruta relativa con comodines para buscar archivos dentro de otra carpeta.

### 6.5. Buscar nombres con exactamente tres caracteres

Creamos los archivos:

```bash
touch abc
touch abc.txt
```

Ejecutamos:

```bash
ls ???
```

Resultado:

```text
abc
```

Después:

```bash
ls ???.txt
```

Resultado:

```text
abc.txt
```

**Explicación:**

- `???` representa exactamente tres caracteres en el nombre completo.
- `???.txt` exige exactamente tres caracteres antes de la extensión `.txt`.

### 6.6. Buscar archivos con `report` seguido de un carácter

Creamos:

```bash
touch reporte.pdf
```

Después ejecutamos:

```bash
ls report?.pdf
```

Resultado:

```text
reporte.pdf
```

La letra `e` después de `report` corresponde al carácter representado por `?`.

### 6.7. Buscar archivos con tres caracteres después de `data`

Creamos:

```bash
touch dataABC.csv
```

Ejecutamos:

```bash
ls data???.csv
```

Resultado:

```text
dataABC.csv
```

El patrón `???` acepta tres caracteres cualesquiera.

**Importante:** si necesitamos que sean exactamente tres números, debemos utilizar:

```bash
ls data[0-9][0-9][0-9].csv
```

### 6.8. Excluir archivos por extensión

Creamos un archivo HTML:

```bash
touch fichero.html
```

Ejecutamos:

```bash
ls !(*.html)
```

**Resultado:** se mostraron los archivos que no terminaban en `.html` y el contenido de los directorios que también coincidían con el patrón.

Después probamos la exclusión de dos extensiones:

```bash
ls !(*.jpg|*.png)
```

Este patrón excluye los nombres terminados en `.jpg` y `.png`.

La sintaxis `!(...)` corresponde a los patrones extendidos de Bash (*extglob*).

### 6.9. Buscar archivos que comienzan por `file`

Creamos:

```bash
touch filePrueba123
```

Ejecutamos:

```bash
ls file*
```

Resultado:

```text
filePrueba123
```

El carácter `*` representa cualquier cantidad de caracteres, incluidos cero caracteres.

### 6.10. Buscar archivos con un número después de `foto`

Creamos:

```bash
touch foto4abc.png
```

Ejecutamos:

```bash
ls foto[0-9]*.png
```

Resultado:

```text
foto4abc.png
```

**Explicación:**

- `foto` es el texto fijo.
- `[0-9]` exige un número.
- `*` permite cualquier cantidad de caracteres adicionales.
- `.png` es la extensión requerida.

Por tanto, el patrón también puede coincidir con nombres que contienen letras después del número.

## 7. Observación importante sobre `ls` y los directorios

Durante la práctica comprobamos que, cuando un comodín encuentra un directorio, `ls` puede mostrar su contenido en lugar del nombre del directorio.

Por ejemplo:

```bash
ls A*
```

El patrón encuentra el directorio `Apuntes`, pero `ls` muestra su contenido:

```text
Sistemas
```

Para visualizar el nombre del directorio encontrado podemos utilizar:

```bash
ls -d A*
```

Resultado esperado:

```text
Apuntes
```

La opción `-d` permite mostrar el directorio como una entrada, en lugar de listar su contenido.

**Aprendizaje:** el comodín selecciona los elementos que cumplen el patrón, pero el resultado mostrado también depende del comportamiento del comando utilizado.

## 8. Tabla resumen de comandos estudiados en la práctica

| N.º | Comando o patrón | Función |
|---:|---|---|
| 1 | `cd ~` | Accede al directorio personal. |
| 2 | `mkdir` | Crea directorios. |
| 3 | `mkdir -p` | Crea directorios intermedios cuando sea necesario. |
| 4 | `touch` | Crea archivos vacíos o actualiza su marca de tiempo. |
| 5 | `ls -R` | Lista recursivamente archivos y directorios. |
| 6 | `sudo apt install tree` | Instala la herramienta `tree`. |
| 7 | `tree` | Muestra gráficamente la estructura de directorios. |
| 8 | `cd ../..` | Sube dos niveles. |
| 9 | `cd ..` | Sube un nivel. |
| 10 | `cd ./Sistemas/` | Entra en `Sistemas` desde `Apuntes`. |
| 11 | `ls *.txt` | Lista nombres terminados en `.txt`. |
| 12 | `ls *.jpg` | Lista nombres terminados en `.jpg`. |
| 13 | `ls a*` | Selecciona nombres que comienzan por `a`. |
| 14 | `ls f*` | Selecciona nombres que comienzan por `f`. |
| 15 | `ls ?[0-9].txt` | Selecciona un carácter seguido de un dígito y `.txt`. |
| 16 | `ls Fotos/*.png` | Lista archivos `.png` dentro de `Fotos`. |
| 17 | `ls ???` | Selecciona nombres de exactamente tres caracteres. |
| 18 | `ls ???.txt` | Selecciona tres caracteres seguidos de `.txt`. |
| 19 | `ls report?.pdf` | Selecciona `report` más un carácter y `.pdf`. |
| 20 | `ls data???.csv` | Selecciona `data` más tres caracteres y `.csv`. |
| 21 | `ls [ed]*` | Selecciona nombres que comienzan por `e` o `d`. |
| 22 | `ls !(*.html)` | Excluye nombres terminados en `.html`. |
| 23 | `ls file*` | Selecciona nombres que comienzan por `file`. |
| 24 | `ls foto[0-9]*.png` | Selecciona nombres con `foto`, un dígito y otros caracteres antes de `.png`. |
| 25 | `ls !(*.jpg\|*.png)` | Excluye nombres terminados en `.jpg` o `.png`. |
| 26 | `ls -d A*` | Muestra el nombre de los elementos coincidentes, incluidos directorios, sin listar su contenido. |

Los comandos `mkdir`, `touch`, `cd` y `ls` se utilizaron varias veces con diferentes argumentos. La tabla resume las funciones y patrones estudiados, sin repetir cada archivo creado.

## 9. Conclusión

En esta práctica recreamos correctamente la estructura inicial de directorios del ejercicio del profesor, con **7 directorios y 5 archivos**.

Aprendimos a crear carpetas y archivos desde la terminal, comprobar su organización mediante `tree` y desplazarnos utilizando rutas relativas y absolutas.

Posteriormente, ampliamos la estructura con archivos de prueba y practicamos los caracteres comodines `*`, `?`, `[ ]` y los patrones de exclusión `!(...)`.

Comprobamos cómo buscar archivos por extensión, por caracteres iniciales, por cantidad de caracteres y dentro de otros directorios. También aprendimos que `ls` puede mostrar el contenido de los directorios encontrados mediante comodines.

Esta actividad complementa la teoría de la Clase 09 y permite aplicar los conocimientos sobre navegación y búsqueda de archivos en un entorno real de Ubuntu.

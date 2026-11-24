## Práctica adicional — Creación y navegación de una estructura de directorios

### 1. Objetivo

Recrear en Ubuntu la estructura de archivos y directorios del ejercicio de la Clase 09 para practicar los comandos `mkdir`, `touch`, `tree`, `cd`, `ls` y el uso de rutas relativas y absolutas.

### 2. Crear la estructura de directorios

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

### 3. Crear los archivos

Utilizamos `touch` para crear cinco archivos vacíos:

```bash
touch Princip/fichero.txt
touch Princip/fichero2.txt
touch Princip/Docs/doc1.txt
touch Princip/Docs/doc2.txt
touch Princip/Apuntes/Sistemas/tema1.doc
```

### 4. Comprobar la estructura creada

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

**Resultado:** la estructura se creó correctamente y coincide con el ejercicio del profesor.

### 5. Navegación por los directorios

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

### 6. Comandos nuevos estudiados

| N.º | Comando | Función |
|---:|---|---|
| 1 | `mkdir` | Crea directorios. |
| 2 | `mkdir -p` | Crea directorios y sus carpetas intermedias. |
| 3 | `touch` | Crea archivos vacíos o actualiza sus marcas de tiempo si existen. |
| 4 | `ls -R` | Muestra recursivamente el contenido de los directorios. |
| 5 | `sudo apt install tree` | Instala la herramienta `tree`. |
| 6 | `tree` | Muestra gráficamente la estructura de archivos y carpetas. |
| 7 | `cd ~` | Regresa al directorio personal. |
| 8 | `cd ../..` | Sube dos niveles en la estructura. |

### 7. Conclusión

En esta práctica recreamos correctamente la estructura de directorios del ejercicio del profesor, con **7 directorios y 5 archivos**.

Aprendimos a crear carpetas y archivos desde la terminal, comprobar su organización mediante `tree` y desplazarnos utilizando rutas relativas y absolutas.

Esta actividad complementa la teoría de la Clase 09 y permite practicar sobre una estructura real de archivos en Ubuntu.

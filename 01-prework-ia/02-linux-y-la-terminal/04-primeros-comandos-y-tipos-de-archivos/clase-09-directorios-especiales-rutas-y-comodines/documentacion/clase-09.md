# Clase 09 — Directorios especiales, rutas y comodines

## 1. Objetivo de la clase

Aprender a navegar por los directorios de Linux utilizando el comando `cd`, comprender la diferencia entre las **rutas absolutas y relativas** y utilizar los **caracteres comodines** para seleccionar archivos y directorios mediante patrones.

## 2. Material de referencia

- **Curso:** Máster en Desarrollo Full Stack.
- **Módulo:** Linux y la Terminal.
- **Repositorio:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Diapositivas:** `LyT-Clase-09-Directorios-especiales-rutas-y-comodines_7d4f9a51.pdf`

## 3. Directorios especiales en Linux

Linux organiza sus archivos y carpetas mediante una estructura jerárquica que comienza en el directorio raíz `/`.

Existen varios símbolos especiales que facilitan la navegación.

| Símbolo | Significado | Ejemplo |
|---|---|---|
| `/` | Directorio raíz del sistema. | `cd /` |
| `.` | Directorio actual. | `cd .` |
| `..` | Directorio padre o superior. | `cd ..` |
| `~` | Directorio personal del usuario. | `cd ~` |

### 3.1. Directorio actual: `.`

El punto representa el directorio en el que estamos trabajando.

Ejemplo:

```bash
cd .
```

Este comando mantiene la ubicación actual.

Si estamos en `/home/osmaily`, continuaremos en ese mismo directorio.

### 3.2. Directorio padre: `..`

Los dos puntos representan el directorio inmediatamente superior.

Ejemplo:

```bash
cd ..
```

Si estamos en:

```text
/home/osmaily
```

Pasaremos a:

```text
/home
```

También podemos utilizar:

```bash
cd ../
```

Ambos comandos tienen el mismo resultado.

Para subir dos niveles:

```bash
cd ../..
```

### 3.3. Comando `cd`

`cd` significa *Change Directory* y permite cambiar el directorio de trabajo actual.

| Comando | Función |
|---|---|
| `cd /` | Accede al directorio raíz. |
| `cd /home/osmaily/` | Accede mediante una ruta absoluta. |
| `cd .` | Permanece en el directorio actual. |
| `cd ..` | Sube un nivel. |
| `cd ../` | También sube un nivel. |
| `cd ./osmaily/` | Accede a `osmaily` desde el directorio actual. |
| `cd osmaily/` | Accede a `osmaily` utilizando una ruta relativa. |
| `cd ~` | Accede al directorio personal del usuario. |

**Importante:** el resultado de una ruta relativa depende del directorio desde el que se ejecuta.

## 4. Rutas absolutas y rutas relativas

Una **ruta** indica dónde se encuentra un archivo o directorio dentro del sistema de archivos.

### 4.1. Ruta absoluta

Una ruta absoluta comienza desde el directorio raíz `/`.

Ejemplos:

```text
/media/datos/pelicula.mpg
/home/pepe/archivo.txt
/home/osmaily/Documentos
```

**Características:**

- Siempre comienza con `/`.
- Indica la ubicación completa.
- No depende del directorio de trabajo actual.

Ejemplo práctico:

```bash
cd /home/osmaily/
```

Permite acceder al directorio personal desde cualquier ubicación, siempre que la ruta exista.

### 4.2. Ruta relativa

Una ruta relativa indica una ubicación tomando como referencia el directorio actual.

Ejemplos:

```text
pepe/archivo.txt
./pepe/archivo.txt
../Documentos
```

**Características:**

- Generalmente no comienza con `/`.
- Depende del directorio actual.
- Puede utilizar `.` y `..`.
- Permite acceder a archivos sin escribir la ruta completa.

### 4.3. Comparación

| Característica | Ruta absoluta | Ruta relativa |
|---|---|---|
| Punto de partida | Directorio raíz `/` | Directorio actual |
| Comienza con `/` | Sí | No |
| Depende de dónde estamos | No | Sí |
| Puede utilizar `..` | Puede contenerlo, aunque no suele ser necesario | Sí, frecuentemente |
| Ejemplo | `/home/osmaily/Documentos` | `./Documentos` |

## 5. Ejercicio del PDF — Rutas absolutas y relativas

Las diapositivas presentan un árbol de directorios y solicitan identificar diferentes rutas.

### 5.1. Estructura de directorios del ejercicio

```text
/
└── Princip/
    ├── Docs/
    │   ├── Word/
    │   ├── doc1.txt
    │   ├── doc2.txt
    │   └── Excel/
    ├── Programa/
    ├── fichero.txt
    ├── fichero2.txt
    └── Apuntes/
        └── Sistemas/
            └── tema1.doc
```

### 5.2. Rutas absolutas

| N.º | Elemento solicitado | Ruta |
|---:|---|---|
| 1 | Fichero `tema1.doc` | `/Princip/Apuntes/Sistemas/tema1.doc` |
| 2 | Fichero `fichero2.txt` | `/Princip/fichero2.txt` |
| 3 | Directorio `Excel` | `/Princip/Docs/Excel` |
| 4 | Fichero `doc2.txt` | `/Princip/Docs/doc2.txt` |

Todas las rutas comienzan desde `/`.

### 5.3. Rutas relativas partiendo de `Apuntes`

Directorio de partida:

```text
/Princip/Apuntes
```

| N.º | Destino | Ruta relativa |
|---:|---|---|
| 5 | Directorio `Sistemas` | `./Sistemas` o `Sistemas` |
| 6 | Fichero `doc1.txt` | `../Docs/doc1.txt` |
| 7 | Directorio `Docs` | `../Docs` |
| 8 | Directorio `Princip` | `../` |

**Explicación:**

- Para entrar en `Sistemas`, no necesitamos subir ningún nivel porque está dentro de `Apuntes`.
- Para llegar a `Docs`, primero subimos a `Princip` mediante `..`.
- Para llegar a `doc1.txt`, subimos a `Princip`, entramos en `Docs` y accedemos al fichero.

### 5.4. Rutas relativas partiendo de `Excel`

Directorio de partida:

```text
/Princip/Docs/Excel
```

| N.º | Destino | Ruta relativa |
|---:|---|---|
| 9 | Fichero `fichero2.txt` | `../../fichero2.txt` |
| 10 | Directorio `Sistemas` | `../../Apuntes/Sistemas` |
| 11 | Directorio `Word` | `../Word` |

**Explicación:**

- `../` permite subir desde `Excel` hasta `Docs`.
- `../../` permite subir desde `Excel` hasta `Princip`.
- Para acceder a `Word`, basta con subir a `Docs` y entrar en `Word`.

**Resultado del ejercicio realizado: 11 de 11 respuestas correctas.**

## 6. Caracteres comodines en Linux

Los **caracteres comodines** permiten seleccionar varios archivos o directorios que cumplen un patrón.

Son útiles cuando no conocemos el nombre completo de un fichero o cuando queremos trabajar con varios archivos a la vez.

En Bash, estos patrones se utilizan habitualmente con comandos como `ls`.

### 6.1. Tabla completa de caracteres comodines

| Carácter | Función | Ejemplos y explicación |
|---|---|---|
| `*` | Hace referencia a una cadena de cero o más caracteres, de cualquier longitud. | `hola*`: nombres que empiezan por `hola`. `*hola`: nombres que terminan en `hola`. `*hola*`: nombres que contienen `hola`. |
| `?` | Hace referencia exactamente a un carácter cualquiera. | `?hola`: un carácter antes de `hola`. `hola?`: un carácter después de `hola`. |
| `[ ]` | Hace referencia a un único carácter incluido en un conjunto o rango. | `f[0-9].txt`: un dígito. `f[a-z].txt`: una letra minúscula. `f[A-Z].txt`: una letra mayúscula. `f[13].txt`: un `1` o un `3`. |
| `[! ]` | Hace referencia a un único carácter que no pertenezca al conjunto indicado. | `hola[!0-9].txt`: un carácter que no sea un número. `hola[!2].*`: un carácter distinto de `2`. |
| `{ }` | Genera varias alternativas separadas por comas. | `hola?.{txt,bak}`: busca archivos terminados en `.txt` o `.bak` con un carácter después de `hola`. `*.{txt,bak}`: archivos con cualquiera de esas extensiones. |

### 6.2. El asterisco `*`

Representa **cero o más caracteres**.

Ejemplo:

```bash
ls hola*
```

Puede coincidir con:

```text
hola
hola1
hola.txt
holamundo
```

Otros ejemplos:

```bash
ls *hola
ls *hola*
```

| Patrón | Significado |
|---|---|
| `hola*` | Empieza por `hola`. |
| `*hola` | Termina en `hola`. |
| `*hola*` | Contiene `hola` en cualquier posición. |

### 6.3. El interrogante `?`

Representa **exactamente un carácter**.

Ejemplo:

```bash
ls hola?
```

Puede coincidir con:

```text
hola1
holaa
holaB
```

No coincide con `hola`, porque falta un carácter, ni con `hola12`, porque sobran caracteres.

### 6.4. Los corchetes `[ ]`

Permiten indicar un conjunto o rango del que se seleccionará **un único carácter**.

Ejemplos:

```bash
ls f[0-9].txt
ls f[a-z].txt
ls f[A-Z].txt
```

| Patrón | Significado |
|---|---|
| `[0-9]` | Un dígito entre 0 y 9. |
| `[a-z]` | Una letra minúscula del rango indicado. |
| `[A-Z]` | Una letra mayúscula del rango indicado. |
| `[13]` | El carácter `1` o el carácter `3`. |

### 6.5. Los corchetes de exclusión `[! ]`

Seleccionan un carácter que **no esté incluido** en el conjunto.

Ejemplo:

```bash
ls hola[!0-9].txt
```

Puede coincidir con:

```text
holaa.txt
holaB.txt
```

No coincide con:

```text
hola1.txt
```

Porque `1` pertenece al rango excluido.

### 6.6. Las llaves `{ }`

Permiten generar varias alternativas separadas por comas.

Ejemplo:

```bash
ls *.{txt,bak}
```

Bash genera dos patrones:

```text
*.txt
*.bak
```

Esto permite listar ambos tipos de archivos en un mismo comando.

**Diferencia importante:** las llaves realizan una expansión de alternativas; los caracteres `*`, `?` y `[ ]` realizan coincidencias de patrones sobre nombres existentes.

### 6.7. Resumen de las diferencias

| Patrón | Cantidad de caracteres que representa |
|---|---|
| `*` | Cero o más |
| `?` | Exactamente uno |
| `[abc]` | Exactamente uno entre `a`, `b` o `c` |
| `[!abc]` | Exactamente uno que no sea `a`, `b` ni `c` |
| `{txt,bak}` | Genera las alternativas `txt` y `bak` |

## 7. Ejercicios del PDF — Caracteres comodines

Las diapositivas incluyen 13 ejemplos para practicar la selección de archivos mediante patrones.

### 7.1. Tabla de los 13 ejercicios

| N.º | Ejercicio | Comando o patrón |
|---:|---|---|
| 1 | Listar todos los archivos `.txt`. | `ls *.txt` |
| 2 | Listar los archivos que empiezan por `a`. | `ls a*` |
| 3 | Listar los archivos que terminan en `.jpg`. | `ls *.jpg` |
| 4 | Listar archivos con una letra, seguida de un número y `.txt`. | `ls ?[0-9].txt` |
| 5 | Listar los archivos `.png` del directorio `fotos`, ubicado en el directorio actual. | `ls fotos/*.png` |
| 6 | Listar archivos cuyo nombre tenga exactamente tres caracteres. | `ls ???` |
| 7 | Listar archivos con `report`, seguido de un carácter y `.pdf`. | `ls report?.pdf` |
| 8 | Listar archivos con `data`, seguido de tres dígitos y `.csv`. | `ls data[0-9][0-9][0-9].csv` |
| 9 | Listar archivos que empiezan por `e` o `d`. | `ls [ed]*` |
| 10 | Listar archivos que no terminan en `.html`. | `ls !(*.html)` |
| 11 | Listar archivos que comienzan por `file`, seguido de cualquier número de caracteres. | `ls file*` |
| 12 | Listar archivos que comienzan por `foto`, seguido de un dígito y otros caracteres, y terminan en `.png`. | `ls foto[0-9]*.png` |
| 13 | Listar archivos que no terminan en `.jpeg` ni `.png`. | `ls !(*.jpeg\|*.png)` |

### 7.2. Aclaraciones importantes sobre los ejemplos

**Ejercicio 6 — Exactamente tres caracteres**

```bash
ls ???
```

Cada `?` representa exactamente un carácter.

Por eso se utilizan tres interrogaciones.

**Ejercicio 8 — Uno a tres dígitos**

La consigna solicita entre uno y tres dígitos, pero el patrón de las diapositivas:

```bash
ls data[0-9][0-9][0-9].csv
```

Coincide únicamente con **tres dígitos**.

Para admitir uno, dos o tres dígitos en Bash, podemos utilizar:

```bash
ls data[0-9].csv data[0-9][0-9].csv data[0-9][0-9][0-9].csv
```

Este ejemplo puede producir avisos si alguno de los patrones no encuentra archivos.

**Ejercicio 12 — Solo números después de `foto`**

El patrón del material:

```bash
ls foto[0-9]*.png
```

Exige que el primer carácter después de `foto` sea un dígito, pero el `*` también puede representar letras u otros caracteres.

Por eso, no garantiza que todos los caracteres posteriores sean números.

**Ejercicios 10 y 13 — Exclusión de extensiones**

Los patrones:

```bash
ls !(*.html)
ls !(*.jpeg|*.png)
```

Utilizan los patrones extendidos de Bash (*extglob*).

Si no están habilitados, puede ser necesario activar la opción:

```bash
shopt -s extglob
```

La sintaxis debe ser interpretada por Bash con esa opción habilitada.

**Nota:** estos 13 ejemplos pertenecen a las diapositivas del profesor. No se registraron como comandos ejecutados personalmente durante la práctica compartida.

## 8. Práctica realizada en Ubuntu

Durante la clase se trabajó en el equipo `pc-ubuntu-osmaily`, principalmente desde:

```text
/home/osmaily
```

### 8.1. Comprobación del directorio actual

Se ejecutó:

```bash
pwd
```

Resultado:

```text
/home/osmaily
```

### 8.2. Navegación hasta la raíz

Se ejecutó:

```bash
cd /
pwd
```

Resultado:

```text
/
```

Esto permitió comprobar que `/` representa el directorio raíz.

### 8.3. Regreso al directorio personal

Se ejecutó:

```bash
cd /home/osmaily/
pwd
```

Resultado:

```text
/home/osmaily
```

Aquí se utilizó una ruta absoluta.

### 8.4. Comprobación del directorio `.`

Se ejecutó:

```bash
cd .
pwd
```

Resultado:

```text
/home/osmaily
```

El directorio no cambió.

### 8.5. Comprobación del directorio `..`

Se ejecutó:

```bash
cd ..
pwd
```

Resultado:

```text
/home
```

Se confirmó que `..` permite subir un nivel.

### 8.6. Acceso mediante rutas relativas

Desde `/home` se ejecutaron:

```bash
cd ./osmaily/
```

Y también:

```bash
cd osmaily/
```

Ambos comandos permitieron regresar a:

```text
/home/osmaily
```

Esto demostró que la referencia `./` puede omitirse cuando se accede a un subdirectorio por su nombre.

### 8.7. Comparación de listados

Se utilizaron:

```bash
ls
ls -l
ls -a
ls -la
ls -li
ls -lai
```

| Comando | Resultado |
|---|---|
| `ls` | Archivos y directorios visibles. |
| `ls -l` | Listado detallado. |
| `ls -a` | Incluye archivos ocultos y las entradas `.` y `..`. |
| `ls -la` | Combina listado detallado y archivos ocultos. |
| `ls -li` | Incluye números de inodo en el listado detallado. |
| `ls -lai` | Combina listado detallado, archivos ocultos e inodos. |

### 8.8. Comprobación de los inodos de `.` y `..`

Mediante `ls -lai` se obtuvieron estos valores desde `/home/osmaily`:

| Entrada | Inodo | Directorio |
|---|---:|---|
| `.` | 850309 | `/home/osmaily` |
| `..` | 656641 | `/home` |

Después, al ejecutar `ls -lai` desde `/home`, se comprobó que la entrada `osmaily` también tenía el inodo `850309`.

Esto confirmó que `.` identifica el directorio actual y que `..` identifica el directorio padre.

### 8.9. Relación con la Clase 08

En la práctica también se observaron:

| Archivo | Inodo |
|---|---:|
| `prueba.txt` | 805965 |
| `.duro.txt` | 805965 |

Ambos seguían compartiendo el mismo inodo, debido a que `.duro.txt` era un enlace duro creado en la clase anterior.

Además, `.duro.txt` aparecía en los listados con `-a`, porque su nombre comienza con un punto.

## 9. Tabla de comandos practicados

Durante la Clase 09 se registraron **14 formas diferentes de comandos**.

| N.º | Comando | Función |
|---:|---|---|
| 1 | `pwd` | Muestra la ruta absoluta del directorio actual. |
| 2 | `cd /` | Cambia al directorio raíz. |
| 3 | `cd /home/osmaily/` | Accede al directorio personal mediante una ruta absoluta. |
| 4 | `ls` | Lista archivos y directorios visibles. |
| 5 | `ls -l` | Muestra información detallada. |
| 6 | `ls -a` | Muestra también los archivos ocultos. |
| 7 | `ls -la` | Muestra información detallada e incluye archivos ocultos. |
| 8 | `cd .` | Permanece en el directorio actual. |
| 9 | `cd ..` | Accede al directorio padre. |
| 10 | `ls -li` | Muestra detalles e inodos. |
| 11 | `ls -lai` | Muestra detalles, archivos ocultos e inodos. |
| 12 | `cd ./osmaily/` | Accede al subdirectorio mediante una ruta relativa explícita. |
| 13 | `cd osmaily/` | Accede al subdirectorio mediante una ruta relativa. |
| 14 | `cd ../` | Accede al directorio padre; equivale a `cd ..`. |

Las repeticiones de comandos durante la práctica se cuentan una sola vez.

## 10. Conceptos clave

| Concepto | Significado |
|---|---|
| Directorio raíz | Punto inicial de la jerarquía Linux: `/`. |
| Directorio actual | Directorio en el que estamos trabajando: `.`. |
| Directorio padre | Directorio inmediatamente superior: `..`. |
| Directorio personal | Directorio del usuario, representado habitualmente por `~`. |
| `cd` | Comando para cambiar de directorio. |
| `pwd` | Comando para consultar el directorio actual. |
| Ruta absoluta | Ruta completa desde `/`. |
| Ruta relativa | Ruta definida desde el directorio actual. |
| Comodín | Carácter utilizado para construir patrones de selección de nombres. |
| `*` | Cero o más caracteres. |
| `?` | Exactamente un carácter. |
| `[ ]` | Un carácter dentro de un conjunto. |
| `[! ]` | Un carácter fuera de un conjunto. |
| `{ }` | Expansión de varias alternativas. |
| `extglob` | Funcionalidad de Bash para patrones extendidos. |

## 11. Conclusión

En esta clase aprendimos a navegar por Linux utilizando los directorios especiales `.`, `..` y `/`, y a distinguir entre **rutas absolutas y rutas relativas**.

Durante la práctica comprobamos cómo cambiar de directorio, consultar la ubicación actual y combinar opciones del comando `ls` para visualizar archivos ocultos, permisos e inodos.

También resolvimos correctamente los **11 ejercicios de rutas** propuestos a partir del árbol de directorios del profesor.

Finalmente, estudiamos los **caracteres comodines** y sus diferentes formas de seleccionar archivos mediante patrones, incluyendo los 13 ejercicios de las diapositivas.

**Resumen de la clase:**

- 14 formas de comandos registradas en la práctica.
- 11 rutas absolutas y relativas resueltas correctamente.
- 5 grupos de caracteres y expansiones estudiados: `*`, `?`, `[ ]`, `[! ]` y `{ }`.
- 13 ejercicios de selección de archivos mediante patrones.

Estos conocimientos permiten desplazarse con mayor facilidad por el sistema de archivos y preparar operaciones más avanzadas desde la terminal de Linux.

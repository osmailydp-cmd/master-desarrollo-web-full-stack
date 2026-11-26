# Guía de ejercicios — Clase 11: Comandos útiles I

## 1. Objetivo

Practicar los comandos estudiados en la Clase 11 utilizando la estructura de archivos y directorios creada anteriormente en Ubuntu.

**Comandos principales:** `man`, `ls`, `cd`, `mkdir`, `rmdir`, `cp`, `rm` y `mv`.

**Comandos complementarios:** `touch`, `pwd` y `tree`.

También practicaremos las opciones `-l`, `-a`, `-p`, `-r` y los caracteres comodines.

## 2. Preparar el entorno

Crearemos una carpeta nueva llamada `Practica-Clase-11` dentro de nuestro directorio personal de Ubuntu.

El objetivo es reproducir la estructura original del profesor, **sin modificar la práctica de la Clase 09**.

### 2.1. Crear la carpeta de trabajo

```bash
cd ~
mkdir Practica-Clase-11
cd Practica-Clase-11
```

### 2.2. Crear los directorios

```bash
mkdir -p Princip/Apuntes/Sistemas
mkdir -p Princip/Docs/Word
mkdir -p Princip/Docs/Excel
mkdir -p Princip/Programa
```

La opción `-p` crea los directorios intermedios que sean necesarios.

### 2.3. Crear los archivos

```bash
touch Princip/fichero.txt
touch Princip/fichero2.txt
touch Princip/Docs/doc1.txt
touch Princip/Docs/doc2.txt
touch Princip/Apuntes/Sistemas/tema1.doc
```

### 2.4. Comprobar la estructura inicial

Desde `Practica-Clase-11`, ejecutar:

```bash
tree
```

**Resultado esperado:**

```text
.
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

### 2.5. Objetivo final de la práctica

Durante los siguientes ejercicios crearemos, copiaremos, moveremos, renombraremos y eliminaremos archivos y directorios.

**Al terminar todos los ejercicios, debemos recuperar exactamente esta estructura inicial**, utilizando los comandos aprendidos, sin eliminar y recrear toda la carpeta.

De esta manera comprobaremos que dominamos las operaciones de gestión de archivos estudiadas en la Clase 11.
## 3. Ejercicio 1 — Consultar manuales con `man`

**Objetivo:** aprender a buscar información sobre los comandos.

- [ ] Consultar el manual de `ls`.
- [ ] Localizar las opciones `-l`, `-a` y `-i`.
- [ ] Consultar el manual de `mkdir` y localizar la opción `-p`.
- [ ] Consultar el manual de `cp` y localizar la opción `-r`.
- [ ] Consultar el manual de `rm` e identificar la opción recursiva.
- [ ] Salir del manual mediante la tecla `q`.
- [ ] Consultar la ayuda de `cd` mediante `help cd`.

**Pregunta:** ¿Por qué `help cd` puede resultar más útil que `man cd`?

## 4. Ejercicio 2 — Listar archivos con `ls`

**Objetivo:** practicar diferentes opciones de visualización.

- [ ] Mostrar el contenido de `Princip`.
- [ ] Mostrar el listado detallado de sus archivos.
- [ ] Visualizar también los archivos ocultos.
- [ ] Mostrar los números de inodo.
- [ ] Listar únicamente los archivos `.txt` de `Princip`.
- [ ] Listar los archivos `.png` que se encuentran dentro de `Fotos`.

**Comprobación:** utilizar `ls` y sus opciones para comparar los resultados.

## 5. Ejercicio 3 — Navegar con `cd`

**Objetivo:** utilizar rutas absolutas y relativas.

Partiendo de `Practica-Clase-11`:

- [ ] Entrar en `Princip/Docs/Excel` utilizando una ruta relativa.
- [ ] Regresar a `Docs` subiendo un nivel.
- [ ] Acceder a `Apuntes/Sistemas` desde `Docs` sin utilizar una ruta absoluta.
- [ ] Regresar a `Princip` subiendo dos niveles.
- [ ] Acceder a `Fotos`.
- [ ] Regresar al directorio personal mediante `cd`.
- [ ] Volver a `Practica-Clase-11/Princip` mediante una ruta absoluta.

**Comprobación:** utilizar `pwd` después de cada desplazamiento.

## 6. Ejercicio 4 — Crear directorios con `mkdir`

**Objetivo:** crear carpetas individuales y estructuras de varios niveles.

Desde `Princip`:

- [ ] Crear un directorio llamado `Practicas`.
- [ ] Dentro de `Practicas`, crear `Linux`.
- [ ] Crear la estructura `Practicas/Python/Ejercicios` utilizando un único comando.
- [ ] Crear otro directorio llamado `Temporal`.
- [ ] Visualizar el resultado utilizando `tree`.

**Resultado esperado:**

```text
Princip/
├── Practicas/
│   ├── Linux/
│   └── Python/
│       └── Ejercicios/
└── Temporal/
```

*Se muestran únicamente los directorios nuevos.*

## 7. Ejercicio 5 — Crear archivos con `touch`

**Objetivo:** crear archivos en diferentes ubicaciones.

- [ ] Crear `ejercicio1.txt` dentro de `Practicas/Linux`.
- [ ] Crear `ejercicio2.txt` dentro de `Practicas/Linux`.
- [ ] Crear `script.py` dentro de `Practicas/Python/Ejercicios`.
- [ ] Crear `temporal.txt` dentro de `Temporal`.
- [ ] Crear `prueba11.txt` directamente en `Princip`.

**Comprobación:** utilizar `tree` y verificar dónde aparece cada fichero.

## 8. Ejercicio 6 — Eliminar directorios vacíos con `rmdir`

**Objetivo:** comprender las restricciones de `rmdir`.

- [ ] Crear un directorio vacío llamado `CarpetaVacia` dentro de `Princip`.
- [ ] Eliminarlo utilizando `rmdir`.
- [ ] Comprobar que ya no existe.
- [ ] Eliminar el archivo `temporal.txt` dentro de `Temporal` utilizando `rm`.
- [ ] Eliminar el directorio `Temporal` utilizando `rmdir`.

**Pregunta:** ¿Por qué debemos eliminar primero el archivo antes de borrar `Temporal` con `rmdir`?

## 9. Ejercicio 7 — Copiar archivos con `cp`

**Objetivo:** practicar las diferentes formas de copiar archivos.

Trabajando desde `Princip`:

- [ ] Copiar `fichero.txt` en el mismo directorio con el nombre `copia-fichero.txt`.
- [ ] Copiar `fichero2.txt` dentro de `Programa`, conservando su nombre.
- [ ] Copiar `reporte.pdf` dentro de `Programa`, cambiando su nombre a `informe.pdf`.
- [ ] Copiar `Apuntes/Sistemas/tema1.doc` dentro de `Docs`.
- [ ] Copiar todos los archivos `.jpg` situados directamente en `Princip` hacia `Fotos`.

**Comprobación:** utilizar `tree` para verificar que los originales continúan existiendo.

## 10. Ejercicio 8 — Copiar directorios completos

**Objetivo:** utilizar la opción recursiva de `cp`.

- [ ] Crear una copia completa de `Apuntes` con el nombre `CopiaApuntes` dentro de `Princip`.
- [ ] Verificar que se copiaron también el subdirectorio `Sistemas` y su archivo `tema1.doc`.
- [ ] Copiar el directorio `Practicas` completo con el nombre `RespaldoPracticas`.
- [ ] Comparar las estructuras originales con sus copias mediante `tree`.

**Pregunta:** ¿Qué opción de `cp` necesitamos para copiar todos los archivos y subdirectorios?

## 11. Ejercicio 9 — Eliminar archivos con `rm`

**Objetivo:** practicar eliminaciones individuales y mediante comodines.

- [ ] Eliminar `copia-fichero.txt`.
- [ ] Eliminar `prueba11.txt`.
- [ ] Eliminar todos los archivos `.jpg` que estén directamente dentro de `Princip`, sin borrar los de `Fotos`.
- [ ] Comprobar que `Fotos` conserva sus imágenes.
- [ ] Eliminar `CopiaApuntes` y todo su contenido utilizando la opción recursiva.
- [ ] Verificar que el directorio original `Apuntes` sigue existiendo.

**Precaución:** antes de utilizar `rm` con comodines, comprobar los nombres seleccionados mediante `ls`. No ejecutar eliminaciones recursivas fuera de nuestra carpeta de práctica.

## 12. Ejercicio 10 — Mover archivos con `mv`

**Objetivo:** trasladar archivos sin crear copias adicionales.

- [ ] Mover `Docs/doc1.txt` hacia `Programa`.
- [ ] Comprobar que ya no aparece en `Docs`.
- [ ] Mover `Programa/doc1.txt` nuevamente hacia `Docs`.
- [ ] Mover `Apuntes/Sistemas/tema1.doc` hacia `Programa`.
- [ ] Devolver `tema1.doc` a `Apuntes/Sistemas`, utilizando el comodín `*.doc`.
- [ ] Verificar la estructura con `tree`.

**Pregunta:** ¿Cuál es la diferencia entre utilizar `cp` y `mv` para trasladar un archivo?

## 13. Ejercicio 11 — Renombrar archivos y directorios

**Objetivo:** utilizar `mv` para cambiar nombres.

- [ ] Renombrar `ejercicio1.txt` como `practica-linux.txt`.
- [ ] Renombrar `ejercicio2.txt` como `comandos-linux.txt`.
- [ ] Cambiar el nombre del directorio `Linux` por `Terminal`.
- [ ] Renombrar `informe.pdf` dentro de `Programa` como `reporte-final.pdf`.
- [ ] Verificar que los archivos conservan su contenido y ubicación correspondiente.

## 14. Ejercicio 12 — Desafío final integrado

**Objetivo:** combinar varios comandos sin recibir instrucciones paso a paso.

Desde `Princip`, realizar las siguientes operaciones:

- [ ] Crear una carpeta `ProyectoFinal`.
- [ ] Crear dentro de ella los directorios `Documentos`, `Imagenes` y `Backup`.
- [ ] Copiar los archivos `.txt` que estén directamente en `Princip` hacia `ProyectoFinal/Documentos`.
- [ ] Copiar las imágenes `.png` de `Fotos` hacia `ProyectoFinal/Imagenes`.
- [ ] Crear una copia completa de `ProyectoFinal/Documentos` dentro de `ProyectoFinal/Backup`.
- [ ] Renombrar `ProyectoFinal/Backup` como `ProyectoFinal/Respaldo`.
- [ ] Crear un fichero `README.txt` en `ProyectoFinal`.
- [ ] Mostrar toda la estructura final mediante `tree`.
- [ ] Comprobar que los archivos originales no fueron eliminados.

## 15. Tabla de comandos que debemos dominar

| N.º | Comando | Función |
|---:|---|---|
| 1 | `man` | Consultar documentación de comandos. |
| 2 | `ls` | Listar archivos y directorios. |
| 3 | `ls -l` | Mostrar información detallada. |
| 4 | `ls -a` | Mostrar archivos ocultos. |
| 5 | `ls -i` | Mostrar números de inodo. |
| 6 | `cd` | Cambiar de directorio. |
| 7 | `pwd` | Consultar la ruta actual. |
| 8 | `mkdir` | Crear directorios. |
| 9 | `mkdir -p` | Crear directorios intermedios. |
| 10 | `rmdir` | Eliminar directorios vacíos. |
| 11 | `touch` | Crear archivos vacíos o actualizar sus marcas de tiempo. |
| 12 | `cp` | Copiar archivos. |
| 13 | `cp -r` | Copiar directorios recursivamente. |
| 14 | `rm` | Eliminar archivos. |
| 15 | `rm -r` | Eliminar directorios y su contenido. |
| 16 | `mv` | Mover o renombrar archivos y directorios. |
| 17 | `tree` | Visualizar la estructura de directorios. |

## 16. Resultado esperado

Al finalizar esta guía debemos ser capaces de:

- Consultar manuales y opciones de comandos.
- Navegar por el sistema utilizando rutas relativas y absolutas.
- Crear y eliminar archivos y directorios.
- Copiar archivos individualmente y mediante comodines.
- Copiar carpetas completas con `cp -r`.
- Eliminar archivos y directorios de forma controlada.
- Mover y renombrar archivos y directorios.
- Comprobar los resultados utilizando `ls`, `pwd` y `tree`.

Esta práctica consolida los conocimientos de la Clase 11 y aprovecha la estructura de directorios creada durante la Clase 09.

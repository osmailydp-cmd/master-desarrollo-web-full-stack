# Día 15 — Listas y arrays bidimensionales

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Listas y arrays bidimensionales  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué son los arrays bidimensionales o matrices, cómo almacenar información organizada en filas y columnas, y cómo acceder a sus elementos utilizando dos índices.

Aprender a declarar, dimensionar, rellenar y recorrer matrices en PSeInt utilizando bucles anidados.

## 2. ¿Por qué necesitamos arrays bidimensionales?

En la clase anterior aprendimos a utilizar arrays unidimensionales para almacenar varios valores bajo un mismo nombre.

Por ejemplo:

```pseudocode
Definir notas Como Real
Dimension notas[5]
```

Esta estructura permite almacenar cinco notas.

Pero ¿qué ocurre si necesitamos guardar varias notas de diferentes alumnos?

Podríamos crear una lista para cada examen, aunque esa solución resulta menos cómoda a medida que aumenta la información.

### Solución: matrices

Una matriz permite organizar los datos utilizando dos dimensiones:

- **Filas:** representan un primer grupo de elementos.
- **Columnas:** representan los valores asociados a cada elemento.

### Ejemplo — Notas de alumnos

| Alumno | Examen 1 | Examen 2 | Examen 3 |
|---|---:|---:|---:|
| Ana | 7 | 8 | 9 |
| Luis | 5 | 6 | 4 |
| Marta | 9 | 10 | 8 |

Esta información puede representarse mediante una matriz de tres filas y tres columnas.

## 3. ¿Qué es un array bidimensional?

Un **array bidimensional** es una estructura de datos que almacena valores del mismo tipo organizados en filas y columnas.

También se conoce como **matriz**.

### Ejemplo

```pseudocode
Dimension notas[3,3]
```

La matriz contiene:

- 3 filas.
- 3 columnas.
- 9 elementos en total.

### Diferencia entre array unidimensional y bidimensional

| Característica | Unidimensional | Bidimensional |
|---|---|---|
| Organización | Lista | Tabla |
| Índices | Uno | Dos |
| Declaración | `notas[5]` | `notas[3,3]` |
| Acceso | `notas[0]` | `notas[0,0]` |
| Recorrido habitual | Un bucle | Dos bucles anidados |

**Concepto fundamental:** un array bidimensional permite representar información organizada en dos dimensiones.

## 4. Filas, columnas e índices

Cada elemento de una matriz se identifica mediante dos índices:

```pseudocode
notas[fila,columna]
```

- El primer índice identifica la **fila**.
- El segundo índice identifica la **columna**.

En la configuración de PSeInt utilizada durante el curso, los índices comienzan en cero.

### Representación visual de una matriz 3×3

| Fila / Columna | 0 | 1 | 2 |
|---|---:|---:|---:|
| **0** | 7 | 8 | 9 |
| **1** | 5 | 6 | 4 |
| **2** | 9 | 10 | 8 |

### Ejemplos de acceso

```pseudocode
notas[0,0] // Valor 7
notas[0,2] // Valor 9
notas[1,1] // Valor 6
notas[2,2] // Valor 8
```

### Regla importante

En una matriz de `F` filas y `C` columnas, con índices desde cero:

- Las filas van desde `0` hasta `F - 1`.
- Las columnas van desde `0` hasta `C - 1`.

Por ejemplo, para `notas[3,3]`, los índices válidos son del 0 al 2 en ambas dimensiones.

## 5. Declaración y dimensionamiento de matrices

En PSeInt se utilizan las instrucciones `Definir` y `Dimension`.

### Definir

Establece el tipo de dato que almacenará la matriz.

```pseudocode
Definir notas Como Real
```

### Dimension

Establece la cantidad de filas y columnas.

```pseudocode
Dimension notas[3,3]
```

### Ejemplo completo

```pseudocode
Algoritmo ejemploMatriz
    Definir notas Como Real
    Dimension notas[3,3]

    notas[0,0] <- 7
    notas[0,1] <- 8
    notas[0,2] <- 9

    Escribir notas[0,2]
FinAlgoritmo
```

**Resultado en pantalla:**

```text
9
```

**Concepto aprendido:** para utilizar matrices debemos definir el tipo de dato y establecer las dos dimensiones.

## 6. Crear y utilizar una matriz 2×2

Una matriz 2×2 contiene cuatro posiciones.

### Ejemplo

```pseudocode
Algoritmo matrizDosPorDos
    Definir numeros Como Entero
    Dimension numeros[2,2]

    numeros[0,0] <- 10
    numeros[0,1] <- 20
    numeros[1,0] <- 30
    numeros[1,1] <- 40

    Escribir numeros[0,0]
    Escribir numeros[1,1]
FinAlgoritmo
```

### Representación

| Fila / Columna | 0 | 1 |
|---|---:|---:|
| **0** | 10 | 20 |
| **1** | 30 | 40 |

**Resultado:**

```text
10
40
```

Cada elemento se identifica mediante la combinación de sus índices de fila y columna.

## 7. ¿Qué son los bucles anidados?

Los **bucles anidados** son estructuras repetitivas en las que un bucle se encuentra dentro de otro.

Permiten recorrer las filas y columnas de una matriz.

### Funcionamiento

- El bucle exterior controla las filas.
- El bucle interior controla las columnas.
- Por cada fila, el bucle interior recorre todas sus columnas.
- Cuando termina una fila, se avanza a la siguiente.

### Ejemplo conceptual

```pseudocode
Para fila <- 0 Hasta 2 Hacer
    Para columna <- 0 Hasta 2 Hacer
        Escribir notas[fila,columna]
    FinPara
FinPara
```

**Concepto importante:** el recorrido se realiza fila por fila cuando el bucle exterior controla las filas.

## 8. Recorrer una matriz 3×3

### Ejemplo — Mostrar los valores

```pseudocode
Algoritmo recorrerMatriz
    Definir numeros, fila, columna Como Entero
    Dimension numeros[3,3]

    numeros[0,0] <- 1
    numeros[0,1] <- 2
    numeros[0,2] <- 3

    numeros[1,0] <- 4
    numeros[1,1] <- 5
    numeros[1,2] <- 6

    numeros[2,0] <- 7
    numeros[2,1] <- 8
    numeros[2,2] <- 9

    Para fila <- 0 Hasta 2 Hacer
        Para columna <- 0 Hasta 2 Hacer
            Escribir Sin Saltar numeros[fila,columna], " "
        FinPara
        Escribir ""
    FinPara
FinAlgoritmo
```

### Resultado

```text
1 2 3
4 5 6
7 8 9
```

### Orden del recorrido

| Iteración | Fila | Columna | Valor |
|---|---:|---:|---:|
| 1 | 0 | 0 | 1 |
| 2 | 0 | 1 | 2 |
| 3 | 0 | 2 | 3 |
| 4 | 1 | 0 | 4 |
| 5 | 1 | 1 | 5 |
| 6 | 1 | 2 | 6 |
| 7 | 2 | 0 | 7 |
| 8 | 2 | 1 | 8 |
| 9 | 2 | 2 | 9 |

El recorrido completo de una matriz de 3×3 implica acceder a sus nueve elementos.

## 9. Rellenar una matriz mediante bucles anidados

Podemos solicitar al usuario los valores de una matriz utilizando dos bucles.

### Ejemplo

```pseudocode
Algoritmo rellenarMatriz
    Definir notas Como Real
    Definir fila, columna Como Entero
    Dimension notas[3,3]

    fila <- 0

    Mientras fila < 3 Hacer
        columna <- 0

        Mientras columna < 3 Hacer
            Escribir "Nota de fila ", fila, " columna ", columna
            Leer notas[fila,columna]

            columna <- columna + 1
        FinMientras

        fila <- fila + 1
    FinMientras
FinAlgoritmo
```

### Explicación

1. Se comienza por la fila cero.
2. Se inicializa la columna en cero.
3. Se solicitan los tres valores de la fila.
4. Se incrementa la fila.
5. Se reinicia la columna en cero.
6. Se repite hasta completar todas las filas.

**Regla importante:** cuando utilizamos `Mientras`, debemos reiniciar la variable `columna` cada vez que comenzamos una nueva fila.

## 10. Acceder a una posición específica

No siempre es necesario recorrer una matriz completa.

Si conocemos los índices, podemos acceder directamente a un elemento.

### Ejemplo

| Fila / Columna | 0 | 1 | 2 |
|---|---:|---:|---:|
| **0** | 7 | 8 | 9 |
| **1** | 5 | 6 | 4 |
| **2** | 9 | **10** | 8 |

Para mostrar el número 10:

```pseudocode
Escribir notas[2,1]
```

### Explicación

- `2` corresponde a la tercera fila.
- `1` corresponde a la segunda columna.

Por tanto, `notas[2,1]` representa la segunda nota del tercer alumno cuando cada fila corresponde a un alumno.

## 11. Interpretación de una matriz

La clase incluye un ejercicio teórico que solicita explicar:

```pseudocode
notas[2,3]
```

### ¿Qué representa?

Con índices desde cero:

- `2`: tercera fila.
- `3`: cuarta columna.

Por tanto, representa el elemento ubicado en la **tercera fila y cuarta columna**.

### Observación importante

Para acceder a esa posición, la matriz debe tener como mínimo tres filas y cuatro columnas.

Por ejemplo:

```pseudocode
Dimension notas[3,4]
```

Si la matriz estuviera dimensionada como `notas[3,3]`, la columna con índice 3 quedaría fuera de los límites permitidos.

**Concepto aprendido:** la interpretación de los índices debe distinguirse de la validación de los límites de la matriz.

## 12. Errores habituales con matrices

La clase identifica cinco errores principales.

### 12.1. Olvidar la segunda dimensión

**Incorrecto para representar una matriz:**

```pseudocode
Dimension notas[3]
```

**Correcto:**

```pseudocode
Dimension notas[3,3]
```

El primer caso representa un array unidimensional y el segundo, una matriz.

### 12.2. No inicializar los contadores

Al utilizar `Mientras`, las variables de control deben inicializarse.

```pseudocode
fila <- 0
columna <- 0
```

También debemos reiniciar la columna cada vez que comienza una nueva fila.

### 12.3. Establecer incorrectamente los límites

Para una matriz 3×3 cuyos índices empiezan en cero:

```pseudocode
Mientras fila < 3 Hacer
```

Y:

```pseudocode
Mientras columna < 3 Hacer
```

Los valores válidos son 0, 1 y 2.

### 12.4. Anidar incorrectamente los bucles

**Estructura correcta:**

```pseudocode
Mientras fila < 3 Hacer
    columna <- 0

    Mientras columna < 3 Hacer
        // Procesar elemento
        columna <- columna + 1
    FinMientras

    fila <- fila + 1
FinMientras
```

El bucle interior debe terminar antes de avanzar a la siguiente fila.

### 12.5. Intercambiar filas y columnas

**Acceso esperado:**

```pseudocode
notas[fila,columna]
```

Si intercambiamos los índices:

```pseudocode
notas[columna,fila]
```

Podemos acceder a un elemento diferente o incluso producir un error de límites en matrices no cuadradas.

## 13. Ejercicios propuestos

La clase incluye seis ejercicios.

### Ejercicio 01 — Crear una matriz 2×2

**Enunciado:** crear una matriz de dos filas y dos columnas y mostrar sus valores.

**Conceptos:** declaración, dimensionamiento y acceso a elementos.

### Ejercicio 02 — Leer una matriz 2×2

**Enunciado:** solicitar los valores de una matriz 2×2 y mostrarlos.

**Conceptos:** entrada y salida de datos, índices y bucles anidados.

### Ejercicio 03 — Notas de alumnos

**Enunciado:** almacenar las notas de tres alumnos, con dos exámenes por alumno.

**Conceptos:** matrices de 3×2, filas y columnas.

### Ejercicio 04 — Consultar una nota

**Enunciado:** mostrar la segunda nota del tercer alumno.

**Conceptos:** acceso a una posición específica mediante dos índices.

### Ejercicio 05 — Interpretar índices

**Enunciado:** explicar qué representa `notas[2,3]`.

**Conceptos:** correspondencia entre índices, filas y columnas.

### Ejercicio 06 — Matriz 3×3

**Enunciado:** crear una matriz de tres filas y tres columnas y rellenarla.

**Conceptos:** declaración, dimensionamiento y asignación de valores.

## 14. Buenas prácticas

Al desarrollar algoritmos con matrices conviene:

- Definir correctamente el tipo de dato.
- Dimensionar ambas dimensiones.
- Recordar que el primer índice representa la fila y el segundo la columna.
- Utilizar índices desde cero según la configuración del curso.
- Respetar los límites de filas y columnas.
- Utilizar nombres descriptivos.
- Inicializar correctamente los contadores.
- Reiniciar el contador de columnas en cada nueva fila cuando se utilizan bucles `Mientras`.
- Mantener una indentación clara para identificar los bucles anidados.
- Probar matrices pequeñas antes de trabajar con tamaños mayores.
- Mostrar los valores organizados en filas para facilitar su comprobación.

## 15. Principales aprendizajes

- Un array bidimensional organiza información en filas y columnas.
- Las matrices permiten almacenar datos relacionados en forma de tabla.
- Se utilizan dos índices para acceder a cada elemento.
- El primer índice identifica la fila.
- El segundo índice identifica la columna.
- `Definir` establece el tipo de dato.
- `Dimension` establece la cantidad de filas y columnas.
- Los índices comienzan en cero según la configuración del curso.
- Los bucles anidados permiten recorrer matrices completas.
- El bucle exterior puede controlar las filas y el interior las columnas.
- Los índices deben permanecer dentro de los límites establecidos.
- Cada posición puede consultarse o modificarse individualmente.
- Una correcta inicialización evita errores en los recorridos.

## 16. Conclusión

La clase introduce los arrays bidimensionales como estructuras que permiten almacenar y organizar datos en tablas.

Se aprende a declarar matrices, acceder a sus posiciones mediante dos índices y recorrerlas utilizando bucles anidados.

También se estudian los errores frecuentes relacionados con las dimensiones, los límites y el control de filas y columnas.

**Aprendizaje principal:** las matrices permiten procesar información organizada en dos dimensiones, combinando los conocimientos adquiridos sobre arrays, índices y estructuras repetitivas.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos de repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

# Día 20 — Relación de ejercicios 3

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Relación de ejercicios 3  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Consolidar los conocimientos adquiridos sobre funciones, procedimientos, arrays y matrices mediante la resolución de cinco ejercicios prácticos.

Esta clase permite aplicar los conceptos de programación modular, reutilización de código, parámetros, valores de retorno y procesamiento de estructuras de datos.

## 2. Importancia de la programación modular

La programación modular consiste en dividir un algoritmo en bloques más pequeños, cada uno encargado de realizar una tarea específica.

En PSeInt podemos utilizar:

- **Procedimientos:** ejecutan instrucciones sin devolver directamente un valor.
- **Funciones:** procesan información y devuelven un resultado.
- **Parámetros:** permiten enviar información a estos bloques.

### Ventajas

- Evitar duplicar instrucciones.
- Organizar mejor los algoritmos.
- Facilitar la comprensión del código.
- Reutilizar operaciones.
- Simplificar las modificaciones.
- Separar responsabilidades.

**Concepto fundamental:** un algoritmo complejo puede organizarse en diferentes funciones y procedimientos que colaboran para resolver un problema.

## 3. Relación de ejercicios desarrollados

La clase incluye cinco ejercicios prácticos de programación modular, utilizando funciones, procedimientos, arrays y matrices.

| Nº | Ejercicio | Requisitos principales |
|---|---|---|
| 01 | Múltiplos de 2 y de 3 | Procedimiento que recibe un entero e identifica sus múltiplos |
| 02 | Tabla de multiplicar | Procedimiento que recibe un entero y muestra su tabla del 1 al 10 |
| 03 | Número más alto de un array | Función que recibe un array de 10 números aleatorios (1–50) y devuelve el máximo |
| 04 | Posición del número más alto | Función que recibe una matriz 5×7 con valores aleatorios (10–50) y devuelve la primera posición del máximo como texto |
| 05 | Suma de los valores de cada fila | Función que recibe una matriz 5×7 con valores aleatorios (10–50) y devuelve las sumas de las filas como texto |

### Indicaciones de la actividad

Antes de implementar los algoritmos, se recomienda describir los pasos de la solución mediante comentarios en lenguaje natural.

Los ejercicios permiten aplicar los conocimientos adquiridos durante las clases anteriores y desarrollar mayor autonomía para resolver problemas.

### Implementaciones del portafolio

Los cinco ejercicios fueron desarrollados en PSeInt, utilizando procedimientos y funciones según los requisitos de cada enunciado.

Las soluciones completas se encuentran en la carpeta `ejercicios`, junto con su documentación correspondiente.

## 4. Ejercicio 01 — Múltiplos de 2 y 3

### Objetivo

Solicitar un número entero y utilizar un procedimiento para determinar si es múltiplo de 2, de 3, de ambos o de ninguno.

### Conceptos aplicados

- Procedimientos.
- Paso de parámetros.
- Operador `MOD`.
- Condicionales múltiples.
- Operadores lógicos.

### Comprobación de divisibilidad

```pseudocode
numero MOD 2 = 0
```

La expresión será verdadera cuando el número sea múltiplo de 2.

```pseudocode
numero MOD 3 = 0
```

La expresión será verdadera cuando el número sea múltiplo de 3.

### Comprobación simultánea

```pseudocode
Si numero MOD 2 = 0 Y numero MOD 3 = 0 Entonces
    Escribir "Es múltiplo de 2 y de 3"
FinSi
```

### Aprendizaje principal

Un procedimiento puede recibir un número y analizarlo mediante condiciones sin necesidad de devolver un resultado.

## 5. Ejercicio 02 — Tabla de multiplicar

### Objetivo

Solicitar un número entero y utilizar un procedimiento para mostrar su tabla de multiplicar del 1 al 10.

### Conceptos aplicados

- Procedimientos con parámetros.
- Bucles `Para`.
- Operaciones aritméticas.
- Reutilización de código.

### Ejemplo de procedimiento

```pseudocode
SubProceso TablaMultiplicar(numero)
    Definir i Como Entero

    Para i <- 1 Hasta 10 Hacer
        Escribir numero, " x ", i, " = ", numero * i
    FinPara
FinSubProceso
```

### Ejemplo de llamada

```pseudocode
TablaMultiplicar(7)
```

El procedimiento recibe el número y muestra las diez multiplicaciones correspondientes.

### Aprendizaje principal

La misma estructura repetitiva puede reutilizarse para generar diferentes tablas simplemente cambiando el argumento.

## 6. Ejercicio 03 — Número máximo de un array

### Objetivo

Crear un array de diez números aleatorios comprendidos entre 1 y 50.

Después, utilizar una función para recorrerlo y devolver el valor máximo.

### Conceptos aplicados

- Arrays unidimensionales.
- Números aleatorios.
- Procedimientos para rellenar arrays.
- Funciones con retorno.
- Comparaciones.
- Recorridos mediante bucles.

### Inicialización del máximo

```pseudocode
mayor <- numeros[0]
```

Es recomendable utilizar el primer elemento como referencia inicial.

### Búsqueda del máximo

```pseudocode
Para i <- 1 Hasta 9 Hacer
    Si numeros[i] > mayor Entonces
        mayor <- numeros[i]
    FinSi
FinPara
```

### Ejemplo

| Índice | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| Valor | 12 | 35 | 8 | 47 | 20 |

En este ejemplo reducido, el máximo es 47.

### Aprendizaje principal

Una función puede recibir un array completo, recorrer sus elementos y devolver el valor más alto.

## 7. Ejercicio 04 — Posición del número máximo en una matriz

### Objetivo

Crear una matriz de cinco filas y siete columnas con números aleatorios comprendidos entre 10 y 50.

Utilizar una función para encontrar el número máximo y devolver su posición en formato de texto.

Si el máximo aparece varias veces, se debe conservar la primera posición encontrada.

### Conceptos aplicados

- Matrices bidimensionales.
- Bucles anidados.
- Funciones con retorno textual.
- Comparaciones.
- Posiciones de filas y columnas.
- Conversión de números a cadenas.

### Ejemplo de matriz

| Fila / Columna | 0 | 1 | 2 | 3 |
|---|---:|---:|---:|---:|
| 0 | 12 | 30 | 45 | 18 |
| 1 | 25 | 40 | 50 | 35 |
| 2 | 10 | 50 | 28 | 15 |

**Número máximo:** 50.

**Primera posición:** `[1,2]`.

Aunque el valor aparece dos veces, se conserva la primera posición según el orden del recorrido.

### Comparación importante

```pseudocode
Si numeros[fila,columna] > numeroMaximo Entonces
```

El operador `>` permite actualizar la posición únicamente cuando encontramos un número estrictamente mayor.

Si utilizáramos `>=`, también actualizaríamos la posición cuando encontráramos otro valor igual.

### Construir el resultado textual

```pseudocode
resultado <- "El número más alto es: " + ConvertirATexto(numeroMaximo)
resultado <- resultado + " y su posición es: ["
resultado <- resultado + ConvertirATexto(posicionFila)
resultado <- resultado + "," + ConvertirATexto(posicionColumna) + "]"
```

### Aprendizaje principal

Una función puede recorrer una matriz, identificar valores y posiciones, y devolver un mensaje textual que combine toda esa información.

## 8. Ejercicio 05 — Suma de los valores de cada fila

### Objetivo

Crear una matriz de cinco filas y siete columnas con números aleatorios comprendidos entre 10 y 50.

Utilizar una función que recorra la matriz y devuelva, en formato de texto, la suma de los valores de cada fila.

### Conceptos aplicados

- Matrices bidimensionales.
- Funciones con retorno.
- Bucles anidados.
- Acumuladores.
- Conversión numérica a texto.
- Concatenación de cadenas.

### Ejemplo visual

| Fila | Columna 0 | Columna 1 | Columna 2 | Suma |
|---|---:|---:|---:|---:|
| 0 | 10 | 20 | 30 | 60 |
| 1 | 15 | 25 | 35 | 75 |
| 2 | 12 | 18 | 40 | 70 |

*Este ejemplo reducido de tres filas y tres columnas se utiliza para explicar el cálculo.*

### Recorrido por filas

```pseudocode
Para i <- 0 Hasta fila - 1 Hacer
    suma <- 0

    Para j <- 0 Hasta columna - 1 Hacer
        suma <- suma + numeros[i,j]
    FinPara

    resultado <- resultado + ConvertirATexto(suma) + " "
FinPara
```

### ¿Por qué reiniciar el acumulador?

La instrucción:

```pseudocode
suma <- 0
```

debe ejecutarse al comienzo de cada nueva fila.

De esta forma, cada suma corresponde únicamente a los elementos de esa fila.

Si no reiniciamos el acumulador, sumaríamos progresivamente los valores de todas las filas.

### Resultado esperado

```text
La suma de los valores de cada fila: [ 60 75 70 ]
```

### Aprendizaje principal

Para sumar los elementos de cada fila de forma independiente, el bucle exterior controla las filas, el interior recorre las columnas y el acumulador se reinicia al comenzar cada fila.

## 9. Diferencia entre los ejercicios 3, 4 y 5

Los tres ejercicios utilizan funciones, pero realizan operaciones diferentes.

| Ejercicio | Estructura | Resultado devuelto |
|---|---|---|
| 03 | Array unidimensional | Número máximo |
| 04 | Matriz bidimensional | Número máximo y posición en texto |
| 05 | Matriz bidimensional | Sumas por fila en texto |

Esta comparación demuestra que una función puede devolver distintos tipos de datos según el problema.

## 10. Uso de parámetros en funciones y procedimientos

Los parámetros permiten transmitir información entre el algoritmo principal y sus bloques reutilizables.

### Ejemplo de procedimiento

```pseudocode
LlenarArrayBidimensionalConNumerosAleatorios(numeros, fila, columna)
```

El procedimiento recibe:

- `numeros`: matriz que debe rellenar.
- `fila`: cantidad de filas.
- `columna`: cantidad de columnas.

### Ejemplo de función

```pseudocode
resultado <- SumaDeLosValoresDeCadaFila(numeros, fila, columna)
```

La función recibe la matriz y sus dimensiones para calcular los resultados.

### Diferencia importante

Los parámetros `fila` y `columna` representan las dimensiones de la matriz.

Para recorrerla internamente es conveniente utilizar otras variables, como `i` y `j`.

Así evitamos modificar accidentalmente los parámetros que determinan los límites de los recorridos.

## 11. Variables locales y organización del código

Las funciones y procedimientos permiten separar las operaciones del algoritmo principal.

### Ejemplo de organización

```text
Algoritmo principal
    |
    |-- Declarar matriz
    |
    |-- Rellenar matriz
    |       |
    |       +-- Procedimiento
    |
    |-- Mostrar matriz
    |
    |-- Calcular resultado
            |
            +-- Función
```

### Ventajas

- Mayor claridad.
- Menos repetición.
- Mejor separación de responsabilidades.
- Mayor facilidad para comprobar errores.
- Posibilidad de reutilizar los bloques en otros algoritmos.

## 12. Errores habituales

### 12.1. Confundir función con procedimiento

Un procedimiento ejecuta una tarea sin devolver directamente un valor.

Una función devuelve un resultado que puede almacenarse, mostrarse o utilizarse en otros cálculos.

### 12.2. Utilizar incorrectamente los índices

Para una matriz de 5×7 con índices desde cero:

- Filas válidas: 0 a 4.
- Columnas válidas: 0 a 6.

### 12.3. Modificar los parámetros de las dimensiones

Si `fila = 5` y `columna = 7`, debemos evitar utilizarlos como contadores que cambien durante los recorridos.

Es preferible utilizar `i` y `j`.

### 12.4. No inicializar acumuladores

```pseudocode
suma <- 0
```

Esta inicialización debe realizarse antes de comenzar a acumular los valores correspondientes.

### 12.5. Utilizar comparaciones incorrectas

Cuando necesitamos conservar la primera aparición del máximo, utilizamos:

```pseudocode
Si numeroActual > numeroMaximo Entonces
```

No `>=`, porque actualizaría también las coincidencias posteriores.

### 12.6. Confundir números con cadenas

Para construir un resultado textual a partir de valores numéricos podemos utilizar:

```pseudocode
ConvertirATexto(numero)
```

Esto permite concatenar números dentro de una variable de texto.

## 13. Buenas prácticas

Durante la resolución de los ejercicios se reforzaron las siguientes recomendaciones:

- Leer cuidadosamente los enunciados.
- Separar cada responsabilidad en funciones o procedimientos.
- Utilizar nombres descriptivos.
- Declarar correctamente los parámetros.
- Evitar modificar los parámetros que representan dimensiones.
- Inicializar las variables antes de utilizarlas.
- Respetar los límites de arrays y matrices.
- Utilizar bucles anidados cuando corresponda.
- Reiniciar los acumuladores al comenzar cada fila.
- Comprobar los resultados de las funciones.
- Probar casos con valores máximos repetidos.
- Mantener una indentación clara.

## 14. Principales aprendizajes

- Los procedimientos permiten realizar tareas reutilizables.
- Las funciones permiten calcular y devolver resultados.
- Los parámetros permiten transmitir información entre bloques.
- El operador `MOD` permite comprobar divisibilidad.
- Los bucles permiten generar tablas de multiplicar.
- Las funciones pueden procesar arrays completos.
- Los bucles anidados permiten recorrer matrices.
- Es posible identificar la posición de un valor máximo.
- Las comparaciones estrictas permiten conservar la primera aparición.
- Los acumuladores permiten calcular sumas por filas.
- `ConvertirATexto()` permite construir resultados textuales.
- La programación modular facilita la organización y reutilización del código.

## 15. Conclusión

El Día 20 está dedicado a consolidar los conocimientos de funciones, procedimientos, arrays y matrices mediante cinco ejercicios prácticos.

Las actividades permiten comprobar la capacidad para crear bloques reutilizables, transmitir parámetros, calcular resultados y procesar estructuras de datos de diferentes dimensiones.

**Aprendizaje principal:** la programación modular permite resolver problemas complejos mediante funciones y procedimientos especializados, facilitando la comprensión, reutilización y mantenimiento de los algoritmos.

---

**Apuntes de estudio basados en la presentación del Día 20, el documento oficial «Relación de ejercicios 3 — Pseudocódigo» y las cinco soluciones desarrolladas para el portafolio.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

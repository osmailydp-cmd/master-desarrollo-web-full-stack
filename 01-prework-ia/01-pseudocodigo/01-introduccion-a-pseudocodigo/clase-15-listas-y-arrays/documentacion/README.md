# Día 14 — Listas y arrays

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Listas y arrays  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué son las listas o arrays unidimensionales, por qué se utilizan y cómo permiten almacenar varios valores del mismo tipo bajo un único nombre.

Aprender a declarar, dimensionar, modificar y recorrer arrays en PSeInt mediante índices y estructuras repetitivas.

## 2. ¿Por qué necesitamos listas?

Hasta ahora hemos utilizado variables individuales para almacenar información.

Por ejemplo, si necesitamos guardar cinco notas, podríamos crear cinco variables:

```pseudocode
Definir nota1, nota2, nota3, nota4, nota5 Como Real
```

Sin embargo, si necesitamos almacenar las notas de muchos alumnos, utilizar una variable distinta para cada dato resulta poco práctico.

### Solución: utilizar arrays

Un array permite agrupar varios valores bajo un mismo identificador.

```pseudocode
Definir notas Como Real
Dimension notas[5]
```

Ahora disponemos de cinco posiciones para almacenar las notas.

### Ventajas

- Organizar datos relacionados.
- Evitar declarar muchas variables individuales.
- Acceder a cada elemento mediante su posición.
- Recorrer los valores mediante bucles.
- Facilitar cálculos y búsquedas.

## 3. ¿Qué es una lista o array?

Un **array** es una estructura de datos que permite almacenar varios valores ordenados del mismo tipo bajo un único nombre.

Cada elemento ocupa una posición identificada mediante un índice.

### Ejemplo

Supongamos que tenemos cinco notas:

| Índice | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| Valor | 8 | 7 | 9 | 6 | 10 |

El array se llama `notas` y contiene cinco elementos.

### Acceso a los valores

```pseudocode
notas[0]  // 8
notas[1]  // 7
notas[2]  // 9
notas[3]  // 6
notas[4]  // 10
```

**Concepto fundamental:** todos los elementos pertenecen al mismo array, pero cada uno se identifica por su índice.

## 4. ¿Cómo funcionan los índices?

Los índices permiten identificar y acceder a las diferentes posiciones de un array.

En la configuración de PSeInt utilizada durante el curso, **los índices comienzan en cero**.

Por ejemplo:

```pseudocode
Dimension notas[5]
```

El array tendrá cinco posiciones válidas:

```text
[0] [1] [2] [3] [4]
```

### Regla importante

Para un array de tamaño `N`, con índices desde cero:

- Primera posición: `0`.
- Última posición: `N - 1`.
- Cantidad de posiciones: `N`.

### Ejemplos

| Tamaño del array | Primer índice | Último índice |
|---|---|---|
| 3 | 0 | 2 |
| 5 | 0 | 4 |
| 8 | 0 | 7 |
| 10 | 0 | 9 |

**Importante:** el tamaño de un array no coincide con su último índice cuando se comienza desde cero.

## 5. Declaración y dimensionamiento

En PSeInt debemos distinguir dos instrucciones.

### Definir

Establece el tipo de dato que almacenará el array.

```pseudocode
Definir numeros Como Entero
```

### Dimension

Indica cuántas posiciones tendrá.

```pseudocode
Dimension numeros[5]
```

### Ejemplo completo

```pseudocode
Algoritmo ejemploArray
    Definir numeros Como Entero
    Dimension numeros[3]

    numeros[0] <- 10
    numeros[1] <- 20
    numeros[2] <- 30

    Escribir numeros[0]
    Escribir numeros[1]
    Escribir numeros[2]
FinAlgoritmo
```

**Resultado:**

```text
10
20
30
```

La instrucción `Dimension` permite utilizar `numeros` como un array de tres elementos.

## 6. Acceso y modificación de elementos

Cada posición de un array funciona como una variable individual.

Podemos leer, mostrar o modificar su contenido.

### Asignar valores

```pseudocode
numeros[0] <- 10
numeros[1] <- 20
numeros[2] <- 30
```

### Mostrar un elemento

```pseudocode
Escribir numeros[1]
```

**Resultado:** `20`.

### Modificar un elemento

```pseudocode
numeros[1] <- 50
```

El contenido de la posición 1 cambia de 20 a 50.

### Representación

**Antes:**

| Índice | 0 | 1 | 2 |
|---|---|---|---|
| Valor | 10 | 20 | 30 |

**Después:**

| Índice | 0 | 1 | 2 |
|---|---|---|---|
| Valor | 10 | **50** | 30 |

**Concepto aprendido:** modificar una posición no altera necesariamente las demás posiciones del array.

## 7. Recorrer arrays mediante bucles

Los bucles permiten acceder a todos los elementos de un array sin repetir manualmente las instrucciones.

### Ejemplo — Mostrar cinco números

```pseudocode
Algoritmo recorrerArray
    Definir numeros, i Como Entero
    Dimension numeros[5]

    numeros[0] <- 10
    numeros[1] <- 20
    numeros[2] <- 30
    numeros[3] <- 40
    numeros[4] <- 50

    i <- 0

    Mientras i < 5 Hacer
        Escribir numeros[i]
        i <- i + 1
    FinMientras
FinAlgoritmo
```

### ¿Qué significa `numeros[i]`?

La variable `i` representa la posición que queremos consultar.

Durante las iteraciones:

| Iteración | Valor de `i` | Elemento |
|---|---|---|
| 1 | 0 | `numeros[0]` |
| 2 | 1 | `numeros[1]` |
| 3 | 2 | `numeros[2]` |
| 4 | 3 | `numeros[3]` |
| 5 | 4 | `numeros[4]` |

Cuando `i` alcanza el valor 5, el bucle termina.

### Regla importante

Para recorrer un array de cinco elementos comenzando desde cero:

```pseudocode
Mientras i < 5 Hacer
```

No debemos intentar acceder a la posición `numeros[5]`, porque queda fuera del array.

## 8. Guardar datos introducidos por el usuario

Podemos combinar `Leer`, arrays y bucles para almacenar información.

### Ejemplo — Leer cinco notas

```pseudocode
Algoritmo leerNotas
    Definir notas Como Real
    Definir i Como Entero
    Dimension notas[5]

    i <- 0

    Mientras i < 5 Hacer
        Escribir "Introduce la nota ", i + 1, ": "
        Leer notas[i]
        i <- i + 1
    FinMientras
FinAlgoritmo
```

### Explicación

1. Se declara el array.
2. Se dimensiona con cinco posiciones.
3. El índice comienza en cero.
4. En cada iteración se solicita una nota.
5. La nota se almacena en `notas[i]`.
6. El índice aumenta hasta completar las cinco posiciones.

Este patrón permite guardar valores directamente en las diferentes posiciones del array.

## 9. Mostrar los elementos de un array

Una vez almacenados los datos, podemos recorrer nuevamente el array para mostrarlos.

### Ejemplo

```pseudocode
i <- 0

Mientras i < 5 Hacer
    Escribir "Nota ", i + 1, ": ", notas[i]
    i <- i + 1
FinMientras
```

### Importante

El índice debe reiniciarse antes de recorrer nuevamente el array.

```pseudocode
i <- 0
```

De lo contrario, si después del primer recorrido `i` vale 5, la condición `i < 5` será falsa y el segundo bucle no se ejecutará.

## 10. Arrays, contadores y acumuladores

Una aplicación importante consiste en combinar arrays, bucles y acumuladores para procesar conjuntos de datos.

### Ejemplo — Calcular la media de cinco notas

```pseudocode
Algoritmo mediaNotas
    Definir notas, suma, media Como Real
    Definir i Como Entero

    Dimension notas[5]

    suma <- 0
    i <- 0

    Mientras i < 5 Hacer
        Escribir "Introduce una nota: "
        Leer notas[i]

        suma <- suma + notas[i]
        i <- i + 1
    FinMientras

    media <- suma / 5

    Escribir "La media es: ", media
FinAlgoritmo
```

### Conceptos utilizados

- **Array:** almacena las cinco notas.
- **Índice:** identifica cada posición.
- **Bucle:** recorre las posiciones.
- **Acumulador:** suma los valores.
- **Media:** divide la suma entre la cantidad de notas.

Este ejemplo combina los conocimientos de listas, bucles y acumuladores estudiados durante las clases anteriores.

## 11. Errores habituales con arrays

La clase presenta cinco errores importantes.

### 11.1. Olvidar dimensionar el array

**Incorrecto:**

```pseudocode
Definir notas Como Real
notas[0] <- 8
```

**Correcto:**

```pseudocode
Definir notas Como Real
Dimension notas[5]
notas[0] <- 8
```

La instrucción `Dimension` establece las posiciones disponibles.

### 11.2. Empezar el recorrido en 1

Con la configuración del curso, las posiciones comienzan en cero.

**Incorrecto para recorrer las cinco posiciones:**

```pseudocode
Para i <- 1 Hasta 5 Hacer
    Escribir notas[i]
FinPara
```

**Correcto:**

```pseudocode
Para i <- 0 Hasta 4 Hacer
    Escribir notas[i]
FinPara
```

El recorrido debe incluir los índices 0, 1, 2, 3 y 4.

### 11.3. Acceder fuera de los límites

Si declaramos:

```pseudocode
Dimension notas[5]
```

No podemos acceder a:

```pseudocode
notas[5]
```

El último índice válido es `4`.

### 11.4. Olvidar indicar el índice

**Incorrecto para mostrar un elemento:**

```pseudocode
Escribir notas
```

**Correcto:**

```pseudocode
Escribir notas[0]
```

Para mostrar todos los elementos, debemos recorrer las posiciones.

### 11.5. Olvidar incrementar el índice

**Incorrecto:**

```pseudocode
i <- 0

Mientras i < 5 Hacer
    Escribir notas[i]
FinMientras
```

El valor de `i` nunca cambia y el bucle puede repetirse indefinidamente.

**Correcto:**

```pseudocode
i <- 0

Mientras i < 5 Hacer
    Escribir notas[i]
    i <- i + 1
FinMientras
```

El incremento permite avanzar entre las posiciones y finalizar el recorrido.

## 12. Ejercicios propuestos

La clase incluye seis ejercicios prácticos.

### Ejercicio 01 — Array de tres números

**Enunciado:** crear un array de tres números y mostrarlos.

**Conceptos:** declaración, dimensionamiento y acceso a posiciones.

### Ejercicio 02 — Array de cinco edades

**Enunciado:** leer cinco edades y mostrarlas.

**Conceptos:** entrada de datos, arrays y recorridos.

### Ejercicio 03 — Sumar cinco números de una lista

**Enunciado:** leer cinco números y calcular su suma total.

**Conceptos:** arrays, bucles y acumuladores.

### Ejercicio 04 — Mostrar el mayor de cinco números

**Enunciado:** leer cinco números y mostrar el mayor.

**Conceptos:** recorridos, comparaciones y búsqueda del máximo.

### Ejercicio 05 — Contar aprobados

**Enunciado:** leer cinco notas y contar cuántas están aprobadas.

**Conceptos:** arrays, condiciones y contadores.

### Ejercicio 06 — Tabla de multiplicar

**Enunciado:** solicitar un número y mostrar su tabla de multiplicar del 1 al 10.

**Conceptos:** bucles, contadores y multiplicación.

## 13. Buenas prácticas

Al utilizar arrays en PSeInt conviene:

- Declarar correctamente el tipo de dato.
- Dimensionar el array antes de utilizarlo.
- Recordar que los índices comienzan en cero en la configuración del curso.
- Respetar los límites de las posiciones.
- Inicializar los índices antes de recorrer un array.
- Incrementar correctamente los contadores.
- Reiniciar los índices cuando sea necesario realizar otro recorrido.
- Utilizar nombres descriptivos.
- Inicializar los elementos antes de consultar sus valores.
- Combinar arrays y bucles para evitar instrucciones repetidas.

## 14. Principales aprendizajes

- Un array permite almacenar varios valores del mismo tipo.
- Los elementos se organizan bajo un único identificador.
- Cada posición tiene un índice.
- `Definir` establece el tipo de dato.
- `Dimension` establece el tamaño del array.
- En el perfil del curso, los índices comienzan en cero.
- Un array de tamaño `N` utiliza índices de `0` a `N - 1`.
- Los elementos pueden consultarse y modificarse individualmente.
- Los bucles permiten recorrer arrays.
- Los acumuladores permiten sumar sus elementos.
- Los contadores permiten analizar los valores.
- Respetar los límites evita errores de acceso.
- Los arrays facilitan el procesamiento de conjuntos de datos.

## 15. Conclusión

La clase introduce los arrays unidimensionales como estructuras fundamentales para almacenar y organizar conjuntos de datos.

Se aprende a declarar y dimensionar listas, acceder a sus elementos mediante índices y recorrerlos utilizando bucles.

También se refuerza la combinación de arrays con contadores y acumuladores para realizar cálculos y analizar información.

**Aprendizaje principal:** los arrays permiten trabajar con múltiples valores de manera organizada y eficiente, utilizando índices para acceder a cada elemento y bucles para procesar el conjunto.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos de repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

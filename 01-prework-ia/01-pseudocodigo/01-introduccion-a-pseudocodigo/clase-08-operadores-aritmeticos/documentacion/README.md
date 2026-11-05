# Día 7 — Operadores aritméticos

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Aprender a realizar operaciones matemáticas en PSeInt utilizando operadores aritméticos, variables y valores numéricos.

Comprender la prioridad de las operaciones, el uso de paréntesis y los errores más frecuentes al realizar cálculos.

## 2. ¿Qué son los operadores?

Los operadores son símbolos o instrucciones que permiten realizar operaciones entre valores.

Estos valores pueden ser:

- **Constantes:** números escritos directamente, como `5` o `10`.
- **Variables:** valores almacenados en identificadores, como `edad`, `precio` o `cantidad`.

### Ejemplos con valores fijos

```pseudocode
5 + 3
10 - 2
4 * 6
20 / 5
```

### Ejemplos con variables

```pseudocode
edad1 + edad2
precioB - precioA
unidades * precio
notas / 6
```

Los operadores permiten procesar información y obtener nuevos resultados.

## 3. Operadores aritméticos en PSeInt

Los operadores aritméticos permiten realizar cálculos matemáticos.

| Operador | Operación | Ejemplo | Resultado |
|---|---|---|---|
| `+` | Suma | `5 + 2` | 7 |
| `-` | Resta | `5 - 2` | 3 |
| `*` | Multiplicación | `5 * 2` | 10 |
| `/` | División | `10 / 2` | 5 |
| `^` | Potencia | `2 ^ 3` | 8 |
| `MOD` | Resto de división | `10 MOD 3` | 1 |

### ¿Para qué sirven?

- Calcular totales.
- Obtener diferencias.
- Multiplicar precios por cantidades.
- Calcular promedios.
- Realizar operaciones con potencias.
- Obtener el resto de una división.

## 4. Operador de suma (+)

Permite sumar dos o más valores.

### Ejemplo — Sumar edades

```pseudocode
Algoritmo sumaEdades
    Definir edad1, edad2, sumaEdades Como Entero

    edad1 = 25
    edad2 = 30

    sumaEdades = edad1 + edad2

    Escribir "La suma de las edades es: ", sumaEdades
FinAlgoritmo
```

**Resultado:**

```text
La suma de las edades es: 55
```

**Concepto aprendido:** almacenar el resultado de una operación matemática en una variable.

## 5. Operador de resta (-)

Permite calcular la diferencia entre dos valores.

### Ejemplo — Aplicar un descuento fijo

```pseudocode
Algoritmo calcularDescuento
    Definir precio, descuento, precioTotal Como Real

    precio = 50
    descuento = 5.5

    precioTotal = precio - descuento

    Escribir "El precio total es: ", precioTotal
FinAlgoritmo
```

**Resultado:** `44.5`

**Concepto aprendido:** utilizar la resta para obtener un valor después de descontar una cantidad.

## 6. Operador de multiplicación (*)

Permite multiplicar dos valores.

### Ejemplo — Calcular el precio total

```pseudocode
Algoritmo calcularPrecioTotal
    Definir precioUnidad, unidades, precioTotal Como Real

    precioUnidad = 5
    unidades = 10

    precioTotal = precioUnidad * unidades

    Escribir "El precio total es: ", precioTotal
FinAlgoritmo
```

**Resultado:** `50`

**Concepto aprendido:** calcular importes utilizando cantidades y precios unitarios.

## 7. Operador de división (/)

Permite dividir un valor entre otro.

### Ejemplo — Calcular la media de tres notas

```pseudocode
Algoritmo calcularMedia
    Definir nota1, nota2, nota3, media Como Real

    nota1 = 8
    nota2 = 9
    nota3 = 6.5

    media = (nota1 + nota2 + nota3) / 3

    Escribir "La nota media es: ", media
FinAlgoritmo
```

**Resultado:** aproximadamente `7.83`.

### Importancia de los paréntesis

Los paréntesis permiten establecer qué operaciones deben realizarse primero.

**Incorrecto para calcular una media:**

```pseudocode
media = nota1 + nota2 + nota3 / 3
```

**Correcto:**

```pseudocode
media = (nota1 + nota2 + nota3) / 3
```

En la segunda expresión, primero se suman las tres notas y después se divide el resultado entre tres.

## 8. Operador de potencia (^)

Permite elevar un número a una potencia.

### Ejemplo

```pseudocode
Algoritmo calcularPotencia
    Definir resultado Como Entero

    resultado = 2 ^ 3

    Escribir resultado
FinAlgoritmo
```

**Resultado:** `8`

**Explicación:** elevar 2 al cubo equivale a multiplicar `2 * 2 * 2`.

## 9. Operador MOD — Resto de una división

El operador `MOD` permite obtener el resto de una división entera.

Es especialmente útil para comprobar divisibilidad.

### Ejemplo — División de 134 entre 13

```pseudocode
Algoritmo calcularResto
    Definir resto Como Entero

    resto = 134 MOD 13

    Escribir "El resto es: ", resto
FinAlgoritmo
```

**Resultado:**

```text
El resto es: 4
```

### Explicación

Al dividir 134 entre 13:

- Cociente entero: 10.
- Producto: `13 * 10 = 130`.
- Resto: `134 - 130 = 4`.

Por tanto:

```pseudocode
134 MOD 13 = 4
```

### Aplicación práctica

Si un número es divisible exactamente entre otro, el resto es cero.

Por ejemplo:

```pseudocode
10 MOD 2 = 0
```

Esta propiedad se utiliza para identificar números pares, impares y múltiplos.

## 10. Prioridad de las operaciones

Cuando una expresión contiene varios operadores, debemos respetar su orden de ejecución.

### Orden general

1. Paréntesis.
2. Potencias.
3. Multiplicaciones, divisiones y operaciones de resto.
4. Sumas y restas.

Las operaciones de igual prioridad se evalúan según las reglas de precedencia y asociatividad del lenguaje.

### Ejemplo

```pseudocode
resultado = 2 + 3 * 4
```

**Resultado:** `14`

Primero se multiplica `3 * 4 = 12` y después se suma `2`.

### Modificar el orden

```pseudocode
resultado = (2 + 3) * 4
```

**Resultado:** `20`

Los paréntesis obligan a realizar primero la suma.

**Concepto importante:** utilizar paréntesis permite expresar con claridad el orden deseado de las operaciones.

## 11. Errores habituales

La clase presenta diferentes errores que debemos evitar al realizar operaciones aritméticas.

### 11.1. No almacenar el resultado

**Incorrecto:**

```pseudocode
num1 + num2
```

**Correcto:**

```pseudocode
suma = num1 + num2
```

Si queremos utilizar posteriormente el resultado, debemos almacenarlo en una variable.

### 11.2. Olvidar los paréntesis

**Incorrecto para calcular una media:**

```pseudocode
media = nota1 + nota2 + nota3 / 3
```

**Correcto:**

```pseudocode
media = (nota1 + nota2 + nota3) / 3
```

Los paréntesis evitan resultados inesperados.

### 11.3. Mezclar texto y números incorrectamente

**Ejemplo de error:**

```pseudocode
nombre = "Ana" + 5
```

No debemos confundir las operaciones numéricas con la manipulación de cadenas de texto.

### 11.4. Utilizar variables antes de inicializarlas

**Incorrecto:**

```pseudocode
resultado = num1 + num2

Leer num1
Leer num2
```

**Correcto:**

```pseudocode
Leer num1
Leer num2

resultado = num1 + num2
```

Antes de realizar una operación debemos disponer de los valores necesarios.

### 11.5. Confundir los resultados de una división

Una división puede producir decimales.

```pseudocode
5 / 2 = 2.5
```

Debemos tener en cuenta el tipo de dato utilizado para almacenar el resultado.

### 11.6. No respetar la prioridad de operaciones

```pseudocode
resultado = 2 + 3 * 4
```

El resultado es `14`, no `20`.

Es importante recordar que la multiplicación tiene mayor prioridad que la suma.

### 11.7. Escribir números entre comillas

**Incorrecto para una variable numérica:**

```pseudocode
edad = "20"
```

**Correcto:**

```pseudocode
edad = 20
```

Las comillas representan cadenas de texto.

### 11.8. Confundir asignación y comparación

La asignación permite guardar un valor en una variable.

La comparación permite comprobar si dos valores son iguales.

En PSeInt puede utilizarse `<-` para expresar claramente una asignación:

```pseudocode
edad <- 20
```

## 12. Ejercicios propuestos

La clase incluye tres ejercicios para practicar operaciones aritméticas.

### Ejercicio 01 — Suma y multiplicación

**Objetivo:**

Solicitar dos números al usuario, calcular su suma y multiplicación, y mostrar ambos resultados.

**Conceptos:** variables numéricas, suma, multiplicación y salida de resultados.

### Ejercicio 02 — Media de tres números

**Objetivo:**

Solicitar tres números, calcular su media aritmética y mostrar el resultado.

**Fórmula:**

```pseudocode
media = (numero1 + numero2 + numero3) / 3
```

**Conceptos:** suma, división, paréntesis y prioridad de operaciones.

### Ejercicio 03 — Precio con descuento

**Objetivo:**

Solicitar el precio de un producto y la cantidad comprada.

Calcular el total sin descuento, aplicar un descuento fijo de cinco unidades y mostrar el precio final.

**Fórmulas:**

```pseudocode
totalSinDescuento = precio * cantidad
totalFinal = totalSinDescuento - 5
```

**Conceptos:** multiplicación, resta y cálculo de importes.

## 13. Principales aprendizajes

- Los operadores aritméticos permiten realizar cálculos con constantes y variables.
- La suma se representa mediante `+`.
- La resta se representa mediante `-`.
- La multiplicación se representa mediante `*`.
- La división se representa mediante `/`.
- La potencia se representa mediante `^`.
- El operador `MOD` permite obtener el resto de una división.
- Los paréntesis permiten controlar el orden de las operaciones.
- Debemos conocer la prioridad de los operadores.
- Es importante utilizar correctamente los tipos de datos.
- Los resultados pueden almacenarse en variables.
- Las variables deben tener valores antes de participar en operaciones.
- Los cálculos deben comprobarse para detectar errores.

## 14. Conclusión

La clase introduce los operadores aritméticos como herramientas fundamentales para procesar información numérica.

Se estudian las operaciones de suma, resta, multiplicación, división, potencia y resto, junto con ejemplos prácticos desarrollados en PSeInt.

También se explica la importancia de los paréntesis, el orden de las operaciones y los errores frecuentes que pueden producir resultados incorrectos.

**Aprendizaje principal:** los operadores aritméticos permiten transformar los datos almacenados en variables y realizar cálculos que hacen posible resolver problemas mediante algoritmos.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

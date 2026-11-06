# Día 13 — Contadores y acumuladores

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Contadores y acumuladores  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender cómo utilizar contadores y acumuladores dentro de estructuras repetitivas para procesar información.

Aprender a contar elementos que cumplen condiciones, sumar valores, calcular medias y combinar diferentes variables dentro de un mismo bucle.

## 2. ¿Qué es un contador?

Un **contador** es una variable que aumenta o disminuye su valor durante las repeticiones de un bucle.

Se utiliza para registrar cuántas veces ocurre determinada acción o se cumple una condición.

### Operación básica

```pseudocode
contador <- contador + 1
```

La instrucción significa:

1. Obtener el valor actual del contador.
2. Sumar una unidad.
3. Guardar el nuevo resultado en la misma variable.

### Aplicaciones

- Contar personas.
- Contar alumnos aprobados.
- Contar números positivos.
- Contar intentos de acceso.
- Registrar las iteraciones de un bucle.

### Ejemplo de contador

```pseudocode
Algoritmo contarNumerosPositivos
    Definir numero, i, positivos Como Entero

    positivos <- 0

    Para i <- 1 Hasta 5 Hacer
        Escribir "Introduce un número: "
        Leer numero

        Si numero > 0 Entonces
            positivos <- positivos + 1
        FinSi
    FinPara

    Escribir "Números positivos: ", positivos
FinAlgoritmo
```

**Concepto aprendido:** el contador aumenta solamente cuando se cumple la condición `numero > 0`.

## 3. Diferencia entre contador del bucle y contador condicional

En un mismo algoritmo pueden existir dos contadores con funciones diferentes.

| Variable | Función |
|---|---|
| `i` | Controlar cuántas veces se ejecuta el bucle |
| `positivos` | Contar únicamente los números mayores que cero |

### Ejemplo

Supongamos que introducimos cinco números:

```text
5, -2, 8, 0, 3
```

El bucle realiza cinco iteraciones, pero solamente tres números son positivos.

Por tanto:

```text
Iteraciones: 5
Números positivos: 3
```

**Importante:** recorrer cinco elementos no significa necesariamente que los cinco cumplan la condición que queremos contar.

## 4. ¿Qué es un acumulador?

Un **acumulador** es una variable que guarda el resultado progresivo de sumar varios valores.

A diferencia del contador, que normalmente aumenta en una cantidad fija, el acumulador incorpora el valor de los datos procesados.

### Operación básica

```pseudocode
suma <- suma + numero
```

### Aplicaciones

- Sumar notas.
- Sumar edades.
- Calcular importes.
- Obtener totales.
- Calcular medias.
- Acumular resultados parciales.

### Ejemplo — Sumar tres números

```pseudocode
Algoritmo sumarTresNumeros
    Definir numero, suma, contador Como Entero

    suma <- 0
    contador <- 1

    Mientras contador <= 3 Hacer
        Escribir "Introduce un número: "
        Leer numero

        suma <- suma + numero
        contador <- contador + 1
    FinMientras

    Escribir "La suma total es: ", suma
FinAlgoritmo
```

### Seguimiento

Supongamos que introducimos los números 5, 10 y 8.

| Iteración | Número | Suma anterior | Nueva suma |
|---|---|---|---|
| 1 | 5 | 0 | 5 |
| 2 | 10 | 5 | 15 |
| 3 | 8 | 15 | 23 |

**Resultado final:** 23.

## 5. Diferencia entre contador y acumulador

Aunque ambos utilizan variables que modifican su valor, cumplen funciones diferentes.

| Característica | Contador | Acumulador |
|---|---|---|
| Objetivo | Contar ocurrencias | Sumar cantidades |
| Operación habitual | `contador + 1` | `suma + numero` |
| Valor inicial habitual | 0 o 1 | 0 |
| Incremento | Generalmente fijo | Depende del valor procesado |
| Ejemplo | Número de aprobados | Suma de las notas |

### Regla para recordar

**El contador cuenta cuántos. El acumulador calcula cuánto.**

## 6. Patrones básicos de programación

La clase presenta tres patrones importantes para trabajar con datos dentro de un bucle.

### 6.1. Contar elementos que cumplen una condición

Ejemplo: contar los alumnos aprobados.

```pseudocode
Si nota >= 5 Entonces
    aprobados <- aprobados + 1
FinSi
```

Solo se incrementa el contador cuando la nota es mayor o igual que 5.

### 6.2. Acumular valores

Ejemplo: sumar notas.

```pseudocode
suma <- suma + nota
```

Cada nota se incorpora al total acumulado.

### 6.3. Utilizar contador y acumulador juntos

Un mismo bucle puede contar elementos y acumular valores simultáneamente.

```pseudocode
Si numero > 0 Entonces
    positivos <- positivos + 1
    sumaPositivos <- sumaPositivos + numero
FinSi
```

Este ejemplo permite conocer:

- Cuántos números positivos se introdujeron.
- Cuál es la suma de esos números.

También es posible utilizar varios acumuladores dentro de un mismo bucle.

## 7. Calcular la media aritmética

Una aplicación importante de los acumuladores es el cálculo de promedios.

### Fórmula

\[
\text{Media} = \frac{\text{Suma de los valores}}{\text{Cantidad de valores}}
\]

### Ejemplo — Media de cinco notas

```pseudocode
Algoritmo calcularMedia
    Definir nota, suma, media Como Real
    Definir contador Como Entero

    suma <- 0
    contador <- 1

    Mientras contador <= 5 Hacer
        Escribir "Introduce una nota: "
        Leer nota

        suma <- suma + nota
        contador <- contador + 1
    FinMientras

    media <- suma / 5

    Escribir "La media es: ", media
FinAlgoritmo
```

### Ejemplo numérico

Supongamos las notas:

```text
8, 7, 9, 6, 10
```

La suma es:

```text
8 + 7 + 9 + 6 + 10 = 40
```

La media es:

```text
40 / 5 = 8
```

**Resultado:** 8.

### Concepto importante

Primero se acumulan todos los valores y después se calcula la media.

En el ejemplo se divide entre 5 porque conocemos de antemano la cantidad de notas procesadas.

## 8. Combinación de contadores y acumuladores

Podemos utilizar varias variables para realizar diferentes análisis en una sola ejecución.

### Ejemplo — Contar y sumar números positivos

```pseudocode
Algoritmo analizarPositivos
    Definir numero, contador, positivos, suma Como Entero

    contador <- 1
    positivos <- 0
    suma <- 0

    Mientras contador <= 5 Hacer
        Escribir "Introduce un número: "
        Leer numero

        Si numero > 0 Entonces
            positivos <- positivos + 1
            suma <- suma + numero
        FinSi

        contador <- contador + 1
    FinMientras

    Escribir "Cantidad de positivos: ", positivos
    Escribir "Suma de positivos: ", suma
FinAlgoritmo
```

### Ejemplo de ejecución

Datos introducidos:

```text
4, -3, 7, 0, 2
```

Resultados:

```text
Cantidad de positivos: 3
Suma de positivos: 13
```

### Explicación

- `contador`: controla las cinco iteraciones.
- `positivos`: cuenta cuántos números son mayores que cero.
- `suma`: acumula exclusivamente los números positivos.

Cada variable tiene una responsabilidad diferente.

## 9. Errores habituales

La clase presenta cinco errores fundamentales.

### 9.1. Olvidar inicializar el acumulador

**Incorrecto:**

```pseudocode
suma <- suma + numero
```

Si `suma` no tiene un valor inicial definido, el cálculo puede fallar o producir un resultado incorrecto.

**Correcto:**

```pseudocode
suma <- 0
suma <- suma + numero
```

### 9.2. Olvidar inicializar el contador

Los contadores deben comenzar con un valor conocido.

```pseudocode
contador <- 0
```

O, según el algoritmo:

```pseudocode
contador <- 1
```

La elección depende del recorrido que necesitemos realizar.

### 9.3. Actualizar la variable fuera del bucle

**Incorrecto:**

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
FinMientras

contador <- contador + 1
```

El contador no cambia mientras el bucle se ejecuta.

**Correcto:**

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador + 1
FinMientras
```

La variable debe actualizarse dentro del bucle para controlar adecuadamente la repetición.

### 9.4. Dividir dentro del bucle al calcular una media

En el patrón de media aritmética de esta clase, dividir el total acumulado antes de terminar de procesar los datos puede producir resultados incorrectos.

**Forma recomendada:**

```pseudocode
suma <- 0

// Dentro del bucle:
suma <- suma + nota

// Después del bucle:
media <- suma / cantidadNotas
```

El cálculo final se realiza cuando ya conocemos la suma completa y la cantidad de valores.

### 9.5. Confundir contador con acumulador

**Contador:**

```pseudocode
contador <- contador + 1
```

**Acumulador:**

```pseudocode
suma <- suma + numero
```

Si queremos conocer la cantidad de números, utilizamos un contador.

Si queremos obtener la suma de sus valores, utilizamos un acumulador.

## 10. Ejemplos y demostraciones de la clase

El material presenta demostraciones prácticas para visualizar cómo funcionan contadores y acumuladores.

| Demostración | Concepto aplicado |
|---|---|
| Contador de intentos de contraseña | Incrementar un contador por cada intento |
| Contador de números positivos | Contar únicamente valores que cumplen una condición |
| Suma de tres números | Acumular valores dentro de un bucle |
| Contador de aprobados | Combinar una condición con un contador |
| Media de cinco notas | Sumar valores y dividir entre la cantidad |
| Contar y sumar positivos | Utilizar contador y acumulador simultáneamente |

Los ejemplos incluyen diagramas de flujo para representar visualmente las operaciones y las condiciones.

## 11. Ejercicios propuestos

La clase incluye cinco ejercicios prácticos.

### Ejercicio 01 — Suma total de cinco números

**Enunciado:** leer cinco números y mostrar su suma total.

**Conceptos:** bucle y acumulador.

### Ejercicio 02 — Contar números positivos

**Enunciado:** leer cinco números y contar cuántos son positivos.

**Conceptos:** contador, operador relacional y condicional.

### Ejercicio 03 — Calcular la media

**Enunciado:** leer cinco números y mostrar su media.

**Conceptos:** acumulador, suma y división.

### Ejercicio 04 — Contar mayores de edad

**Enunciado:** leer cinco edades y contar cuántas corresponden a personas mayores de edad.

**Conceptos:** contador condicional y comparación `edad >= 18`.

### Ejercicio 05 — Sumar números negativos

**Enunciado:** leer cinco números y mostrar la suma únicamente de los negativos.

**Conceptos:** acumulador condicional y comparación `numero < 0`.

## 12. Buenas prácticas

Al trabajar con contadores y acumuladores conviene:

- Inicializar todas las variables antes de utilizarlas.
- Asignar nombres claros a los contadores.
- Diferenciar las variables de control de las variables que analizan datos.
- Incrementar los contadores únicamente cuando corresponda.
- Acumular solamente los valores solicitados.
- Actualizar correctamente las variables dentro de los bucles.
- Comprobar los valores límite.
- Calcular las medias después de finalizar la acumulación.
- Utilizar tipos numéricos adecuados.
- Probar los algoritmos con valores positivos, negativos y cero.

## 13. Principales aprendizajes

- Los contadores permiten registrar ocurrencias.
- Los acumuladores permiten sumar valores progresivamente.
- Un contador suele comenzar en 0 o en 1.
- Un acumulador de suma normalmente comienza en 0.
- Los contadores pueden funcionar dentro de estructuras condicionales.
- Los acumuladores permiten calcular medias.
- Un mismo bucle puede contener varios contadores y acumuladores.
- Las variables deben actualizarse correctamente.
- Los datos pueden analizarse mediante condiciones.
- La inicialización es fundamental para evitar errores.
- Contar y acumular son operaciones diferentes que pueden complementarse.

## 14. Conclusión

La clase introduce los contadores y acumuladores como herramientas fundamentales para procesar datos dentro de estructuras repetitivas.

Se aprende a contar ocurrencias, sumar cantidades, calcular medias y combinar diferentes operaciones dentro de un mismo bucle.

También se identifican errores habituales relacionados con la inicialización y la actualización de variables.

**Aprendizaje principal:** los contadores permiten conocer cuántas veces ocurre algo, mientras que los acumuladores permiten calcular el total de los valores procesados.

Estos conceptos preparan el aprendizaje de listas y arrays, que permitirán almacenar y analizar conjuntos de datos.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos de repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

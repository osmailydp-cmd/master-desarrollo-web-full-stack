# Día 16 — Operaciones con listas

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Operaciones con listas  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Aprender a realizar operaciones sobre los datos almacenados en arrays utilizando bucles, contadores, acumuladores y condiciones.

Los principales conocimientos son:

- Sumar los elementos de una lista.
- Calcular la media aritmética.
- Identificar el valor máximo y mínimo.
- Buscar un valor determinado.
- Contar elementos que cumplen una condición.

## 2. ¿Qué significa operar con listas?

En las clases anteriores aprendimos a declarar arrays, almacenar información y recorrer sus posiciones.

Ahora utilizaremos esos conocimientos para **analizar los datos**.

Por ejemplo, si tenemos una lista de notas, podemos responder:

- ¿Cuál es la nota más alta?
- ¿Cuál es la nota más baja?
- ¿Cuál es la media?
- ¿Cuántos alumnos aprobaron?
- ¿Existe una nota determinada?

### Ejemplo de lista

| Índice | 0 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|---|
| Nota | 7 | 9 | 4 | 8 | 6 |

A partir de estos valores podemos calcular resultados sin modificar necesariamente el contenido original del array.

**Concepto fundamental:** almacenar datos es importante, pero también debemos aprender a procesarlos.

## 3. Sumar elementos de un array

Para sumar todos los valores de una lista necesitamos:

1. Un acumulador inicializado en cero.
2. Un bucle que recorra las posiciones.
3. Una instrucción que incorpore cada valor a la suma.

### Ejemplo en PSeInt

```pseudocode
Algoritmo sumarLista
    Definir numeros, i, suma Como Entero
    Dimension numeros[5]

    numeros[0] <- 4
    numeros[1] <- 6
    numeros[2] <- 8
    numeros[3] <- 2
    numeros[4] <- 10

    suma <- 0

    Para i <- 0 Hasta 4 Hacer
        suma <- suma + numeros[i]
    FinPara

    Escribir "La suma es: ", suma
FinAlgoritmo
```

**Resultado:**

```text
La suma es: 30
```

### Funcionamiento del acumulador

| Iteración | Valor | Suma acumulada |
|---|---|---|
| 1 | 4 | 4 |
| 2 | 6 | 10 |
| 3 | 8 | 18 |
| 4 | 2 | 20 |
| 5 | 10 | 30 |

**Concepto aprendido:** el acumulador conserva la suma parcial de todos los elementos procesados.

## 4. Calcular la media de los elementos

La media aritmética se obtiene dividiendo la suma de todos los valores entre la cantidad de elementos.

### Fórmula

```text
media = suma / cantidadElementos
```

### Ejemplo

```pseudocode
Algoritmo calcularMediaLista
    Definir notas, suma, media Como Real
    Definir i Como Entero
    Dimension notas[5]

    notas[0] <- 7
    notas[1] <- 9
    notas[2] <- 4
    notas[3] <- 8
    notas[4] <- 6

    suma <- 0

    Para i <- 0 Hasta 4 Hacer
        suma <- suma + notas[i]
    FinPara

    media <- suma / 5

    Escribir "La media es: ", media
FinAlgoritmo
```

### Cálculo

```text
Suma: 7 + 9 + 4 + 8 + 6 = 34
Media: 34 / 5 = 6.8
```

**Resultado:** 6.8.

### Importante

La media debe calcularse después de acumular todos los valores, utilizando la cantidad correcta de elementos.

Si el número de elementos puede ser cero, debemos comprobarlo antes de realizar la división.

## 5. Buscar el valor máximo

Buscar el máximo significa identificar el número más alto almacenado en una lista.

### Procedimiento

1. Tomar el primer elemento como máximo provisional.
2. Recorrer los elementos restantes.
3. Comparar cada valor con el máximo actual.
4. Actualizarlo cuando aparezca uno mayor.
5. Mostrar el resultado.

### Ejemplo

```pseudocode
Algoritmo buscarMaximo
    Definir numeros, mayor, i Como Entero
    Dimension numeros[5]

    numeros[0] <- 12
    numeros[1] <- 45
    numeros[2] <- 8
    numeros[3] <- 30
    numeros[4] <- 19

    mayor <- numeros[0]

    Para i <- 1 Hasta 4 Hacer
        Si numeros[i] > mayor Entonces
            mayor <- numeros[i]
        FinSi
    FinPara

    Escribir "El número mayor es: ", mayor
FinAlgoritmo
```

**Resultado:** 45.

### ¿Por qué comenzar con el primer elemento?

Porque no conocemos anticipadamente los valores de la lista.

Si inicializamos `mayor <- 0` y todos los elementos son negativos, podríamos obtener un resultado incorrecto.

**Regla importante:**

```pseudocode
mayor <- numeros[0]
```

Esta inicialización funciona para valores positivos, negativos y cero, siempre que el array contenga al menos un elemento.

## 6. Buscar el valor mínimo

La búsqueda del mínimo utiliza el mismo procedimiento que la búsqueda del máximo, pero invierte la comparación.

### Ejemplo

```pseudocode
Algoritmo buscarMinimo
    Definir numeros, menor, i Como Entero
    Dimension numeros[5]

    numeros[0] <- 12
    numeros[1] <- 45
    numeros[2] <- 8
    numeros[3] <- 30
    numeros[4] <- 19

    menor <- numeros[0]

    Para i <- 1 Hasta 4 Hacer
        Si numeros[i] < menor Entonces
            menor <- numeros[i]
        FinSi
    FinPara

    Escribir "El número menor es: ", menor
FinAlgoritmo
```

**Resultado:** 8.

### Comparación de operaciones

| Operación | Inicialización | Condición |
|---|---|---|
| Máximo | `mayor <- numeros[0]` | `numeros[i] > mayor` |
| Mínimo | `menor <- numeros[0]` | `numeros[i] < menor` |

Ambas operaciones requieren recorrer los elementos del array.

## 7. Buscar un valor determinado

La búsqueda consiste en comprobar si un elemento concreto existe dentro de una lista.

### Procedimiento

1. Disponer de un array con valores.
2. Solicitar o establecer el valor buscado.
3. Recorrer las posiciones.
4. Comparar cada elemento con el valor buscado.
5. Detener la búsqueda cuando se encuentre o cuando termine el recorrido.

### Bandera lógica

Una **bandera lógica** es una variable que almacena `Verdadero` o `Falso` para representar si ocurrió determinada situación.

```pseudocode
Definir encontrado Como Logico
encontrado <- Falso
```

### Ejemplo de búsqueda

```pseudocode
Algoritmo buscarNumero
    Definir numeros, buscado, i Como Entero
    Definir encontrado Como Logico
    Dimension numeros[5]

    numeros[0] <- 10
    numeros[1] <- 25
    numeros[2] <- 40
    numeros[3] <- 15
    numeros[4] <- 30

    Escribir "Introduce el número que deseas buscar: "
    Leer buscado

    encontrado <- Falso
    i <- 0

    Mientras i < 5 Y encontrado = Falso Hacer
        Si numeros[i] = buscado Entonces
            encontrado <- Verdadero
        SiNo
            i <- i + 1
        FinSi
    FinMientras

    Si encontrado Entonces
        Escribir "Número encontrado en la posición ", i
    SiNo
        Escribir "El número no existe en la lista"
    FinSi
FinAlgoritmo
```

### Explicación

El programa utiliza dos condiciones para continuar:

```pseudocode
i < 5 Y encontrado = Falso
```

Esto significa que la búsqueda continúa mientras:

- Queden posiciones por revisar.
- No se haya encontrado el valor.

**Concepto aprendido:** es posible finalizar un recorrido antes de llegar al último elemento cuando ya se ha cumplido el objetivo de la búsqueda.

## 8. Contar elementos que cumplen una condición

No siempre necesitamos sumar todos los valores.

En ocasiones queremos contar únicamente los elementos que cumplen un requisito.

### Ejemplo — Contar aprobados

```pseudocode
Algoritmo contarAprobados
    Definir notas Como Real
    Definir i, aprobados Como Entero
    Dimension notas[5]

    notas[0] <- 8
    notas[1] <- 3
    notas[2] <- 7
    notas[3] <- 4
    notas[4] <- 9

    aprobados <- 0

    Para i <- 0 Hasta 4 Hacer
        Si notas[i] >= 5 Entonces
            aprobados <- aprobados + 1
        FinSi
    FinPara

    Escribir "Alumnos aprobados: ", aprobados
FinAlgoritmo
```

**Resultado:**

```text
Alumnos aprobados: 3
```

### Explicación

El contador se incrementa únicamente cuando una nota es mayor o igual que 5.

Este patrón combina tres elementos fundamentales:

**Recorrido + condición + contador.**

## 9. Comparación de operaciones con listas

| Operación | Herramienta principal | Resultado |
|---|---|---|
| Sumar | Acumulador | Total de valores |
| Calcular media | Acumulador y división | Promedio |
| Buscar máximo | Comparación `>` | Valor más alto |
| Buscar mínimo | Comparación `<` | Valor más bajo |
| Buscar un elemento | Comparación y bandera lógica | Encontrado o no encontrado |
| Contar coincidencias | Condición y contador | Cantidad de elementos |

Estas operaciones pueden combinarse dentro de algoritmos más complejos.

## 10. Errores habituales

El material presenta cuatro errores identificados como números 1, 2, 3 y 5.

### 10.1. Recorrer incorrectamente los índices

**Incorrecto para un array de cinco elementos:**

```pseudocode
i <- 0

Mientras i <= 5 Hacer
    Escribir numeros[i]
    i <- i + 1
FinMientras
```

**Problema:** intenta acceder al índice 5, que no existe con la configuración del curso.

**Correcto:**

```pseudocode
Mientras i < 5 Hacer
```

Los índices válidos son 0, 1, 2, 3 y 4.

### 10.2. No inicializar el acumulador

**Incorrecto:**

```pseudocode
suma <- suma + numeros[i]
```

Si `suma` no tiene un valor inicial definido, el resultado puede ser incorrecto.

**Correcto:**

```pseudocode
suma <- 0
```

Después, dentro del bucle:

```pseudocode
suma <- suma + numeros[i]
```

### 10.3. Inicializar incorrectamente el máximo

**Incorrecto:**

```pseudocode
mayor <- 0
```

Si todos los elementos son negativos, el resultado podría ser cero aunque ese valor no exista en la lista.

**Correcto:**

```pseudocode
mayor <- numeros[0]
```

De esta forma, la búsqueda comienza utilizando un valor real del array.

### 10.4. Olvidar la bandera lógica

Cuando buscamos un elemento, necesitamos una manera de conocer si apareció durante el recorrido.

```pseudocode
encontrado <- Falso
```

Al encontrarlo:

```pseudocode
encontrado <- Verdadero
```

La bandera permite distinguir entre una búsqueda exitosa y una búsqueda sin coincidencias.

## 11. Ejemplos prácticos de la clase

La presentación incluye ejemplos de PSeInt acompañados de diagramas de flujo.

| Ejemplo | Concepto aplicado |
|---|---|
| Sumar cinco números | Arrays, bucles y acumuladores |
| Calcular media | Suma de elementos y división |
| Buscar máximo | Comparaciones y actualización del mayor |
| Buscar un número | Búsqueda secuencial y bandera lógica |
| Contar aprobados | Recorrido, condición y contador |

Los diagramas de flujo permiten observar cómo se repiten las instrucciones y cómo cambian los valores de las variables.

## 12. Reto práctico de la clase

Durante la clase se planteó un reto práctico relacionado con la búsqueda de valores dentro de un array.

Aunque el material PDF no incluye un enunciado específico del reto, se realizó una implementación en PSeInt como parte de las actividades de aprendizaje.

### Reto — Buscar la posición de un valor

**Objetivo:** recorrer un array, buscar un valor determinado e identificar la posición donde aparece.

### Conceptos aplicados

- Declaración y dimensionamiento de arrays.
- Recorrido de listas mediante bucles.
- Comparación de valores.
- Identificación de posiciones.
- Control de la búsqueda.

**Archivo desarrollado:**

`dia16_ejercicio_reto_posicion_de_valor_buscado.psc`

La solución se encuentra documentada en la carpeta `ejercicios`.

*Nota: el reto se trabajó durante la clase; su enunciado no aparece explícitamente en la presentación PDF.*

## 13. Buenas prácticas

Al realizar operaciones con arrays conviene:

- Dimensionar correctamente la lista.
- Respetar los límites de sus índices.
- Inicializar contadores y acumuladores.
- Utilizar el primer elemento como referencia para máximos y mínimos.
- Comprobar las condiciones correctamente.
- Utilizar banderas lógicas cuando sea necesario.
- Evitar recorrer posiciones innecesarias.
- Mantener un código ordenado y legible.
- Utilizar nombres descriptivos para las variables.
- Comprobar el funcionamiento con diferentes conjuntos de datos.

## 14. Principales aprendizajes

- Los arrays permiten almacenar conjuntos de datos.
- Operar con listas significa procesar y analizar esos valores.
- Un acumulador permite calcular sumas.
- La media se obtiene dividiendo la suma entre la cantidad de elementos.
- Las comparaciones permiten encontrar máximos y mínimos.
- Una búsqueda secuencial revisa las posiciones hasta encontrar un valor o terminar el recorrido.
- Las banderas lógicas permiten registrar si ocurrió una coincidencia.
- Los contadores permiten identificar cuántos elementos cumplen una condición.
- Es importante inicializar correctamente las variables.
- Debemos respetar los límites de los índices.
- Las diferentes operaciones pueden combinarse en un mismo algoritmo.

## 15. Conclusión

Esta clase introduce las principales operaciones que permiten analizar los datos almacenados en arrays.

Se estudian la suma de elementos, el cálculo de medias, la identificación de máximos y mínimos, la búsqueda de valores y el conteo condicionado.

Los ejemplos permiten combinar los conocimientos previamente adquiridos sobre arrays, bucles, contadores, acumuladores y estructuras condicionales.

**Aprendizaje principal:** los arrays no solamente permiten almacenar datos, sino también analizarlos para obtener información útil mediante operaciones y recorridos.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos propios de repaso y una referencia al reto práctico del portafolio.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

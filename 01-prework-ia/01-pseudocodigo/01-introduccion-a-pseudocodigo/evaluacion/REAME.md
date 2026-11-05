# Evaluación — Introducción a Pseudocódigo

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Tipo de evaluación:** Cuestionario teórico-práctico  
**Duración máxima:** 60 minutos

## Resultado de la evaluación

| Indicador | Resultado |
|---|---|
| Preguntas | 17 |
| Respuestas correctas | 17 |
| Porcentaje de aciertos | 100 % |
| Estado | Evaluación completada |

## Objetivo

Recopilar los principales conceptos evaluados durante el módulo de Introducción a Pseudocódigo, con sus respuestas correctas y explicaciones resumidas, como material de estudio y consulta.

---

## Preguntas y respuestas correctas

### 01. ¿Qué es una variable?

**Respuesta correcta:** Un espacio reservado en memoria que permite almacenar datos de diferentes tipos.

**Explicación:** Una variable permite guardar un valor asociado a un identificador. Cada variable tiene un tipo de dato definido.

### 02. ¿Qué debemos considerar al recorrer un array mediante PARA?

**Respuesta correcta:** Cuando los índices comienzan en cero, el último índice es igual a la dimensión menos uno.

**Ejemplo:**

```pseudocode
Dimension numeros[5]

Para i = 0 Hasta 4 Hacer
    Escribir numeros[i]
FinPara
```

**Explicación:** Un array de cinco elementos tiene posiciones desde 0 hasta 4.

### 03. ¿Qué devolvería por pantalla la instrucción `Escribir letrero`?

**Código del ejercicio:**

```pseudocode
Algoritmo ejemplo
    Definir letrero Como Texto
    letrero = 'Bienvenido!'
    CrearLetrero(letrero)
    Escribir letrero
FinAlgoritmo

Funcion CrearLetrero(letrero)
    letrero = 'Vamos!'
FinFuncion
```

**Respuesta correcta:**

```text
Bienvenido!
```

**Explicación:**

La variable `letrero` se inicializa con el valor `"Bienvenido!"`.

Al llamar a `CrearLetrero(letrero)`, se pasa el parámetro **por valor**, por lo que la modificación realizada dentro de la función no afecta a la variable original.

Por eso, al ejecutar `Escribir letrero`, se muestra `Bienvenido!`.

**Concepto aprendido:** Paso de parámetros por valor y alcance de variables.

---

### 04. ¿Qué es un entorno de desarrollo?

**Respuesta correcta:** Un software que permite desarrollar, ejecutar y verificar algoritmos.

**Explicación:** PSeInt es un ejemplo de entorno para escribir, ejecutar y comprobar algoritmos en pseudocódigo.

### 05. ¿Qué es un array unidimensional?

**Respuesta correcta:** Una estructura de datos de tamaño fijo y de un tipo de dato determinado, según el modelo utilizado en el curso.

**Explicación:** Permite almacenar múltiples elementos del mismo tipo y acceder a ellos mediante un índice.

### 06. ¿Las funciones sin parámetros pueden devolver valores?

**Respuesta correcta:** Sí.

**Explicación:** Una función puede devolver un resultado independientemente de que reciba o no parámetros. Los parámetros son datos de entrada y el retorno es el resultado que entrega la función.

### 07. ¿Todos los bucles se ejecutan al menos una vez?

**Respuesta correcta:** No.

**Explicación:**
- `Mientras`: comprueba la condición antes de ejecutar las instrucciones.
- `Repetir - Hasta Que`: ejecuta las instrucciones al menos una vez.
- `Para`: realiza un recorrido controlado mediante una variable.

### 08. ¿Qué instrucción permite obtener «progresando» de una cadena?

**Respuesta correcta:**

```pseudocode
Subcadena("Estoy progresando adecuadamente", 6, 16)
```

**Explicación:** `Subcadena()` permite extraer caracteres entre dos posiciones. En este ejemplo se utiliza indexación desde cero.

### 09. ¿Cuántas veces se ejecuta el bucle?

**Código del ejercicio:**

```pseudocode
Algoritmo ejemplo
    Definir x Como Entero
    x = 0

    Repetir
        x = x + 2
    Hasta Que x >= 10
FinAlgoritmo
```

**Respuesta correcta:** 5 veces.

**Explicación:**

La variable `x` comienza en 0 y aumenta de 2 en 2 en cada iteración.

| Iteración | Valor inicial | Valor final |
|---|---|---|
| 1 | 0 | 2 |
| 2 | 2 | 4 |
| 3 | 4 | 6 |
| 4 | 6 | 8 |
| 5 | 8 | 10 |

Cuando `x` alcanza el valor 10, se cumple la condición `x >= 10` y termina el bucle.

**Concepto aprendido:** El bucle `Repetir...Hasta Que` ejecuta las instrucciones al menos una vez y comprueba la condición de finalización después de cada iteración.

---

### 10. ¿Qué código se ejecuta cuando la variable X vale 10?

**Código del ejercicio (reconstruido):**

```pseudocode
Algoritmo ejemplo
    Definir x Como Entero
    x = 10

    Si x < 5 O x <= 10 Entonces
        Escribir "Código A"
    SiNo
        Si x < 100 Entonces
            Escribir "Código B"
        FinSi
    FinSi
FinAlgoritmo
```

**Respuesta correcta:** Código A.

**Explicación:**

La variable `x` tiene el valor 10.

La primera condición utiliza el operador lógico `O`, que requiere que al menos una de las condiciones sea verdadera.

| Condición | Evaluación | Resultado |
|---|---|---|
| `x < 5` | `10 < 5` | Falso |
| `x <= 10` | `10 <= 10` | Verdadero |
| `Falso O Verdadero` | | Verdadero |

Como la condición compuesta es verdadera, se ejecuta:

```text
Código A
```

El bloque `SiNo` no se ejecuta, por lo que no se evalúa la condición `x < 100`.

**Concepto aprendido:** Condicionales anidados, operadores lógicos `O` y evaluación de condiciones compuestas.

---

### 11. ¿Qué es un algoritmo?

**Respuesta correcta:** Una secuencia de acciones que resuelve un problema.

**Explicación:** Un algoritmo describe los pasos ordenados y necesarios para obtener un resultado.

### 12. ¿Qué función matemática transforma -4.9 en -4?

**Respuesta correcta:**

```pseudocode
Trunc(-4.9)
```

**Explicación:** `Trunc()` elimina la parte decimal sin redondear, acercando el valor a cero.

### 13. ¿Para qué sirve la estructura SI-ENTONCES?

**Respuesta correcta:** Permite ejecutar instrucciones dependiendo del resultado de una expresión lógica.

**Explicación:** Si la condición es verdadera, se ejecuta el bloque correspondiente. Puede utilizarse `SiNo` para definir instrucciones alternativas.

### 14. Acceso a una posición de una matriz bidimensional

**Pregunta de repaso:** ¿Cómo mostrar el valor almacenado en la segunda fila y cuarta columna de una matriz cuyos índices comienzan en cero?

**Matriz de ejemplo:**

| Fila / Columna | 0 | 1 | 2 | 3 |
|---|---|---|---|---|
| **0** | 12 | 25 | 38 | 14 |
| **1** | 45 | 17 | 32 | **90** |
| **2** | 21 | 56 | 43 | 67 |

**Respuesta correcta:**

```pseudocode
Escribir array[1,3]
```

**Resultado en pantalla:**

```text
90
```

**Explicación:**

En una matriz bidimensional, el primer índice representa la fila y el segundo la columna.

Como los índices comienzan en cero:

- `1` corresponde a la segunda fila.
- `3` corresponde a la cuarta columna.

Por tanto, `array[1,3]` contiene el valor **90**.

**Concepto aprendido:** Acceso a elementos de matrices bidimensionales mediante índices de fila y columna.

---

### 15. ¿Qué tipo de función se utiliza para calcular y mostrar el área de un círculo?

**Respuesta correcta de la evaluación:** Función con parámetros y sin variable de retorno.

**Explicación:** El radio se recibe como parámetro y el resultado se muestra directamente. En PSeInt, este comportamiento corresponde a un procedimiento o `SubProceso`, ya que no necesita devolver un valor.

Si necesitamos utilizar posteriormente el área calculada, podemos implementar una función con retorno.

### 16. ¿Cuál es la afirmación incorrecta sobre las variables?

**Respuesta correcta:** Una variable puede almacenar datos de diferentes tipos.

**Explicación:** En el pseudocódigo tipado utilizado en el curso, cada variable se declara con un tipo determinado.

**Ejemplo:**

```pseudocode
Definir edad Como Entero
Definir nombre Como Caracter
```

### 17. ¿Cuáles son las fases generales en el desarrollo de un algoritmo?

**Respuesta correcta:**

1. Definición del problema.
2. Descripción de la secuencia de acciones.
3. Codificación en pseudocódigo.
4. Codificación en un lenguaje de programación.
5. Comprobación del algoritmo desarrollado.

**Explicación:** Estas fases permiten transformar un problema en una solución programada y verificada.

---

## Conceptos estudiados

- Variables y tipos de datos.
- Algoritmos y fases de desarrollo.
- Entornos de programación.
- Arrays unidimensionales y bidimensionales.
- Bucles y estructuras iterativas.
- Estructuras condicionales.
- Funciones y procedimientos.
- Parámetros y valores de retorno.
- Cadenas de caracteres.
- Operaciones y funciones matemáticas.

## Conclusión

La evaluación permitió consolidar los conocimientos adquiridos durante el módulo de Introducción a Pseudocódigo.

**Resultado final del segundo intento: 17 respuestas correctas de 17 preguntas (100 %).**

Este documento reúne las respuestas correctas y los principales conceptos teóricos para facilitar futuras consultas y continuar desarrollando habilidades de programación.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

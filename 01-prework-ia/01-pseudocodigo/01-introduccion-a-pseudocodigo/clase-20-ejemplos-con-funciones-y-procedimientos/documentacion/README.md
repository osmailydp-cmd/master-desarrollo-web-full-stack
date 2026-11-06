# Día 19 — Ejemplos típicos con funciones y procedimientos

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Ejemplos típicos con funciones y procedimientos  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Reforzar los conocimientos sobre funciones y procedimientos mediante siete tipos de ejemplos prácticos.

El objetivo es comprender cuándo utilizar cada estructura, cómo transmitir información mediante parámetros y cómo organizar algoritmos en bloques reutilizables.

## 2. Repaso: funciones y procedimientos

Las funciones y los procedimientos permiten dividir un programa en bloques de instrucciones con responsabilidades específicas.

| Característica | Procedimiento | Función |
|---|---|---|
| Finalidad | Realizar una tarea | Calcular y devolver un resultado |
| Valor de retorno | No devuelve directamente un valor | Devuelve un valor |
| Declaración en PSeInt | `SubProceso` | `Funcion` |
| Puede recibir parámetros | Sí | Sí |
| Puede trabajar con arrays | Sí | Sí |

**Concepto fundamental:** los bloques reutilizables facilitan la organización del código y evitan repetir instrucciones.

## 3. Ejemplo 1 — Procedimiento sin parámetros

Un procedimiento sin parámetros ejecuta instrucciones sin necesidad de recibir argumentos en su llamada.

### Ejemplo propio de repaso

```pseudocode
Algoritmo ejemploProcedimiento
    mostrarBienvenida()
FinAlgoritmo

SubProceso mostrarBienvenida()
    Escribir "Bienvenido al programa"
FinSubProceso
```

### Funcionamiento

1. El algoritmo principal llama a `mostrarBienvenida()`.
2. El procedimiento ejecuta la instrucción `Escribir`.
3. Finaliza y devuelve el control al algoritmo principal.

### ¿Cuándo utilizarlo?

Cuando necesitamos ejecutar una tarea que no requiere información adicional, como mostrar un encabezado o un separador.

## 4. Ejemplo 2 — Procedimiento con parámetros

Un procedimiento con parámetros recibe información que utiliza durante su ejecución.

### Ejemplo propio de repaso

```pseudocode
Algoritmo ejemploSaludo
    saludar("Ana")
    saludar("Carlos")
FinAlgoritmo

SubProceso saludar(nombre)
    Escribir "Hola ", nombre
FinSubProceso
```

### Resultado

```text
Hola Ana
Hola Carlos
```

### Explicación

- `nombre` es el parámetro del procedimiento.
- `"Ana"` y `"Carlos"` son los argumentos enviados.
- El procedimiento ejecuta la misma tarea con distintos valores.

**Aprendizaje:** los parámetros permiten personalizar un procedimiento sin modificar su código.

## 5. Ejemplo 3 — Función que devuelve un valor

Una función permite realizar una operación y entregar el resultado al bloque que la llamó.

### Ejemplo propio de repaso

```pseudocode
Algoritmo ejemploFuncion
    Definir total Como Entero

    total <- sumar(5, 8)

    Escribir "La suma es: ", total
FinAlgoritmo

Funcion resultado <- sumar(a, b)
    Definir resultado Como Entero

    resultado <- a + b
FinFuncion
```

### Resultado

```text
La suma es: 13
```

### Explicación

1. Se llama a `sumar(5, 8)`.
2. La función recibe dos argumentos.
3. Calcula la suma.
4. Asigna el resultado a su variable de retorno.
5. El algoritmo principal almacena y muestra el valor devuelto.

**Aprendizaje:** las funciones permiten reutilizar cálculos y utilizar sus resultados en otras instrucciones.

## 6. Ejemplo 4 — Función booleana: ¿es par?

Una función booleana devuelve un valor lógico: `Verdadero` o `Falso`.

En el material, este ejemplo se identifica mediante la pregunta **«¿es par?»**.

### Ejemplo propio de repaso

```pseudocode
Algoritmo comprobarNumero
    Definir numero Como Entero

    Escribir "Ingrese un número: "
    Leer numero

    Si esPar(numero) Entonces
        Escribir "El número es par"
    SiNo
        Escribir "El número es impar"
    FinSi
FinAlgoritmo

Funcion resultado <- esPar(numero)
    Definir resultado Como Logico

    resultado <- numero MOD 2 = 0
FinFuncion
```

### Explicación

La función utiliza el operador `MOD` para comprobar el resto de dividir el número entre 2.

- Si el resto es cero, devuelve `Verdadero`.
- En caso contrario, devuelve `Falso`.

### Ejemplos

| Número | Resultado |
|---|---|
| 4 | Verdadero |
| 7 | Falso |
| 10 | Verdadero |
| 13 | Falso |

**Aprendizaje:** una función puede devolver el resultado de una condición, no solamente un número o una cadena de texto.

## 7. Ejemplo 5 — Función con varios parámetros

Las funciones pueden recibir varios parámetros cuando necesitan diferentes datos para realizar un cálculo.

### Ejemplo propio de repaso — Media de tres números

```pseudocode
Algoritmo calcularPromedio
    Definir promedio Como Real

    promedio <- calcularMedia(7, 8, 9)

    Escribir "La media es: ", promedio
FinAlgoritmo

Funcion resultado <- calcularMedia(a, b, c)
    Definir resultado Como Real

    resultado <- (a + b + c) / 3
FinFuncion
```

### Resultado

```text
La media es: 8
```

### Explicación

- `a`, `b` y `c` son los parámetros.
- La función recibe tres valores.
- Calcula su media aritmética.
- Devuelve el resultado.

**Aprendizaje:** una misma función puede combinar varios datos y devolver un único resultado.

## 8. Ejemplo 6 — Función que recorre un array

Una función también puede recibir un array y procesar sus elementos para obtener un resultado.

### Ejemplo propio de repaso — Sumar una lista

```pseudocode
Algoritmo sumarLista
    Definir numeros, i Como Entero
    Dimension numeros[5]

    Para i <- 0 Hasta 4 Hacer
        numeros[i] <- Aleatorio(1, 10)
    FinPara

    Escribir "Suma total: ", sumarElementos(numeros)
FinAlgoritmo

Funcion resultado <- sumarElementos(numeros)
    Definir resultado, i Como Entero

    resultado <- 0

    Para i <- 0 Hasta 4 Hacer
        resultado <- resultado + numeros[i]
    FinPara
FinFuncion
```

### Funcionamiento

1. Se crea un array de cinco números.
2. Se rellena con valores aleatorios.
3. Se envía el array a la función.
4. La función recorre todas las posiciones.
5. Acumula los valores.
6. Devuelve la suma total.

### Conceptos aplicados

- Arrays unidimensionales.
- Parámetros.
- Bucles.
- Acumuladores.
- Funciones con retorno.

**Aprendizaje:** una función puede procesar una colección completa de datos y devolver un resultado calculado.

## 9. Ejemplo 7 — Procedimiento que recibe un array

Un procedimiento también puede recibir un array para realizar una tarea con sus elementos.

La diferencia con el ejemplo anterior es que no necesita devolver el resultado de un cálculo.

### Ejemplo propio de repaso — Mostrar una lista

```pseudocode
Algoritmo mostrarLista
    Definir numeros, i Como Entero
    Dimension numeros[5]

    Para i <- 0 Hasta 4 Hacer
        numeros[i] <- Aleatorio(1, 20)
    FinPara

    mostrarNumeros(numeros)
FinAlgoritmo

SubProceso mostrarNumeros(numeros)
    Definir i Como Entero

    Para i <- 0 Hasta 4 Hacer
        Escribir "Posición ", i, ": ", numeros[i]
    FinPara
FinSubProceso
```

### Explicación

- El algoritmo crea un array.
- El procedimiento recibe ese array.
- Recorre sus posiciones.
- Muestra cada elemento.
- No devuelve un valor de retorno.

**Aprendizaje:** un procedimiento puede recibir estructuras de datos completas y ejecutar operaciones sobre ellas.

## 10. Comparación de los siete ejemplos

| Nº | Tipo | Parámetros | Retorno |
|---|---|---|---|
| 1 | Procedimiento sin parámetros | No | No |
| 2 | Procedimiento con parámetros | Sí | No |
| 3 | Función que devuelve un valor | Según implementación | Sí |
| 4 | Función booleana | Según implementación | Lógico |
| 5 | Función con varios parámetros | Sí, varios | Sí |
| 6 | Función que recorre un array | Array | Sí |
| 7 | Procedimiento que recibe un array | Array | No |

Estos siete casos corresponden a los tipos de ejemplos identificados en el PDF. Los códigos anteriores son ejemplos propios para facilitar el estudio.

## 11. Buenas prácticas

Al desarrollar funciones y procedimientos conviene:

- Utilizar nombres descriptivos.
- Mantener una responsabilidad específica por bloque.
- Evitar duplicar instrucciones.
- Diferenciar parámetros y argumentos.
- Definir correctamente la variable de retorno.
- Utilizar funciones cuando sea necesario devolver un valor.
- Utilizar procedimientos para ejecutar tareas sin retorno directo.
- Comprobar el tipo de dato devuelto.
- Respetar los límites de los arrays.
- Inicializar contadores y acumuladores.
- Mantener las variables de los bucles dentro de su bloque cuando corresponda.
- Probar los bloques con diferentes datos.

## 12. Principales aprendizajes

- Los procedimientos pueden ejecutarse sin parámetros.
- Los procedimientos también pueden recibir argumentos.
- Las funciones devuelven valores.
- El valor devuelto puede ser numérico, textual o lógico.
- Las funciones booleanas permiten encapsular condiciones.
- Las funciones pueden trabajar con múltiples parámetros.
- Los arrays pueden enviarse a funciones y procedimientos.
- Los bloques reutilizables permiten combinar variables, condicionales y bucles.
- La separación de tareas mejora la organización.
- La reutilización evita repetir código innecesariamente.

## 13. Conclusión

El Día 19 refuerza la utilización de funciones y procedimientos mediante siete tipos de ejemplos prácticos.

La clase permite repasar cómo crear procedimientos con y sin parámetros, desarrollar funciones que devuelven valores, utilizar resultados booleanos y procesar arrays desde bloques reutilizables.

**Aprendizaje principal:** las funciones y los procedimientos permiten organizar los algoritmos en unidades independientes y reutilizables, capaces de recibir datos, procesarlos y, cuando corresponda, devolver resultados.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, complementados con ejemplos propios de PSeInt.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

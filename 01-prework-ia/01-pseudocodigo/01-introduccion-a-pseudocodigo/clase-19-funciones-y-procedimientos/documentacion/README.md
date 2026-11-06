# Día 18 — Funciones y procedimientos

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Funciones y procedimientos  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué son las funciones y los procedimientos, cómo permiten reutilizar instrucciones y cuáles son sus diferencias.

Aprender a crear bloques de código independientes, pasarles parámetros y utilizarlos desde el algoritmo principal.

Los conceptos principales son:

- Reutilización de código.
- Procedimientos o subprocesos.
- Funciones con valores de retorno.
- Parámetros y argumentos.
- Organización de programas en bloques.
- Aplicaciones prácticas de funciones y procedimientos.

## 2. ¿Por qué necesitamos funciones y procedimientos?

Cuando desarrollamos algoritmos, podemos encontrarnos con instrucciones que necesitamos ejecutar varias veces.

Por ejemplo, mostrar un mensaje repetidamente o calcular las notas medias de diferentes alumnos.

Sin funciones ni procedimientos, podríamos terminar escribiendo el mismo bloque de instrucciones en diferentes partes del programa.

### Problemas de repetir código

- Aumenta la cantidad de instrucciones.
- Dificulta la lectura.
- Complica las correcciones.
- Favorece la aparición de errores.
- Hace más difícil mantener el programa.

### Solución: reutilizar código

Las funciones y los procedimientos permiten definir una tarea una sola vez y ejecutarla cuando sea necesario.

**Concepto fundamental:** si una operación se repite en diferentes partes de un algoritmo, conviene considerar la creación de una función o procedimiento reutilizable.

## 3. ¿Qué es un procedimiento?

Un **procedimiento** es un bloque de instrucciones reutilizable que realiza una tarea específica sin devolver directamente un valor de retorno.

En PSeInt se define mediante `SubProceso`.

### Estructura

```pseudocode
SubProceso nombreProcedimiento()
    // Instrucciones
FinSubProceso
```

### Ejemplo — Mostrar un saludo

```pseudocode
Algoritmo principal
    Escribir "Comienzo del programa"
    saludar()
FinAlgoritmo

SubProceso saludar()
    Escribir "Bienvenido al programa"
FinSubProceso
```

### Explicación

1. El algoritmo principal comienza su ejecución.
2. Se muestra el primer mensaje.
3. Se llama al procedimiento `saludar()`.
4. Se ejecutan sus instrucciones.
5. El programa continúa hasta finalizar.

### ¿Cuándo utilizar procedimientos?

- Mostrar mensajes.
- Imprimir separadores.
- Presentar menús.
- Mostrar tablas de multiplicar.
- Ejecutar tareas que no requieren devolver un resultado.

**Aprendizaje:** un procedimiento permite agrupar instrucciones para ejecutarlas desde diferentes partes del programa.

## 4. ¿Qué son los parámetros?

Un **parámetro** permite que una función o procedimiento reciba información para utilizarla durante su ejecución.

Los parámetros hacen que un mismo bloque pueda trabajar con diferentes valores.

### Ejemplo — Saludo personalizado

```pseudocode
Algoritmo principal
    saludar("Ana")
    saludar("Carlos")
FinAlgoritmo

SubProceso saludar(nombre)
    Escribir "Bienvenido al programa ", nombre
FinSubProceso
```

### Resultado

```text
Bienvenido al programa Ana
Bienvenido al programa Carlos
```

### Explicación

El procedimiento es el mismo, pero recibe valores diferentes en cada llamada.

- `nombre`: parámetro definido en el procedimiento.
- `"Ana"`: argumento enviado en la primera llamada.
- `"Carlos"`: argumento enviado en la segunda llamada.

### Diferencia entre parámetro y argumento

| Concepto | Descripción |
|---|---|
| Parámetro | Variable que recibe información dentro de la definición |
| Argumento | Valor enviado al llamar al bloque |

**Concepto importante:** los parámetros permiten reutilizar una misma solución con diferentes datos.

## 5. Procedimientos con varios parámetros

Un procedimiento puede recibir más de un parámetro.

### Ejemplo — Mostrar un texto varias veces

```pseudocode
Algoritmo principal
    imprimirVeces("Hola", 5)
FinAlgoritmo

SubProceso imprimirVeces(texto, veces)
    Definir contador Como Entero

    contador <- 0

    Mientras contador < veces Hacer
        Escribir texto
        contador <- contador + 1
    FinMientras
FinSubProceso
```

### Resultado

```text
Hola
Hola
Hola
Hola
Hola
```

### Explicación

- `texto`: contiene el mensaje que queremos mostrar.
- `veces`: indica cuántas repeticiones realizar.
- `contador`: controla el bucle.

Podemos reutilizar el procedimiento con otros valores:

```pseudocode
imprimirVeces("Bienvenido", 3)
```

**Aprendizaje:** los parámetros permiten personalizar el comportamiento de un procedimiento sin modificar sus instrucciones internas.

## 6. ¿Qué es una función?

Una **función** es un bloque de código reutilizable que ejecuta instrucciones y devuelve un valor.

Esta es la principal diferencia respecto a los procedimientos estudiados en la clase.

### Estructura

```pseudocode
Funcion resultado <- nombreFuncion(parametros)
    // Instrucciones
    resultado <- valorCalculado
FinFuncion
```

### Ejemplo — Sumar dos números

```pseudocode
Algoritmo principal
    Definir total Como Entero

    total <- sumar(5, 3)

    Escribir "El resultado es: ", total
FinAlgoritmo

Funcion resultado <- sumar(a, b)
    Definir resultado Como Entero

    resultado <- a + b
FinFuncion
```

### Resultado

```text
El resultado es: 8
```

### Funcionamiento

1. El algoritmo llama a `sumar(5, 3)`.
2. La función recibe los valores mediante `a` y `b`.
3. Realiza la operación `a + b`.
4. Asigna el resultado a su variable de retorno.
5. El algoritmo principal recibe el valor obtenido.

### Variable de retorno

En el ejemplo:

```pseudocode
Funcion resultado <- sumar(a, b)
```

`resultado` es la variable utilizada para devolver el valor calculado por la función.

**Concepto fundamental:** una función devuelve información que puede utilizarse posteriormente en otras instrucciones.

## 7. Diferencia entre función y procedimiento

| Característica | Procedimiento | Función |
|---|---|---|
| Objetivo principal | Ejecutar una tarea | Calcular y devolver un valor |
| Devuelve un valor de retorno | No | Sí |
| Sintaxis estudiada | `SubProceso` | `Funcion` |
| Puede recibir parámetros | Sí | Sí |
| Puede contener condiciones | Sí | Sí |
| Puede contener bucles | Sí | Sí |
| Ejemplo | Mostrar un menú | Calcular una media |

### Ejemplo comparativo

**Procedimiento:**

```pseudocode
SubProceso mostrarMensaje()
    Escribir "Hola"
FinSubProceso
```

Realiza una acción, pero no devuelve un resultado.

**Función:**

```pseudocode
Funcion resultado <- multiplicar(a, b)
    Definir resultado Como Entero
    resultado <- a * b
FinFuncion
```

Calcula y devuelve un valor numérico.

### Regla para recordar

**Procedimiento = realiza una tarea.**

**Función = calcula y devuelve un valor.**

*Esta distinción corresponde al enfoque introductorio utilizado en la clase.*

## 8. Ejemplo práctico — Procedimiento separador

El material presenta un procedimiento que permite imprimir una línea separadora.

```pseudocode
Algoritmo principal
    separador()
    Escribir "Menú principal"
    separador()
FinAlgoritmo

SubProceso separador()
    Escribir "--------------------"
FinSubProceso
```

### Resultado

```text
--------------------
Menú principal
--------------------
```

### Ventaja

Si queremos cambiar la apariencia del separador, solamente necesitamos modificar su procedimiento.

Todas las llamadas utilizarán automáticamente la nueva implementación.

## 9. Ejemplo práctico — Función para encontrar el mayor

Una función puede comparar dos números y devolver el mayor.

```pseudocode
Algoritmo principal
    Escribir "El mayor es: ", mayor(10, 7)
FinAlgoritmo

Funcion resultado <- mayor(a, b)
    Definir resultado Como Entero

    Si a > b Entonces
        resultado <- a
    SiNo
        resultado <- b
    FinSi
FinFuncion
```

### Resultado

```text
El mayor es: 10
```

### Explicación

La función recibe dos argumentos y utiliza una condición para decidir cuál devolver.

**Conceptos utilizados:**

- Parámetros.
- Condicionales.
- Comparaciones.
- Variables de retorno.

## 10. Ejemplo práctico — Función para calcular la media

Las funciones también permiten realizar operaciones aritméticas.

### Ejemplo

```pseudocode
Algoritmo principal
    Definir notaFinal Como Real

    notaFinal <- media(7, 8, 9)

    Escribir "La nota media es: ", notaFinal
FinAlgoritmo

Funcion resultado <- media(a, b, c)
    Definir resultado Como Real

    resultado <- (a + b + c) / 3
FinFuncion
```

### Resultado

```text
La nota media es: 8
```

### Explicación

La función recibe tres valores, los suma y divide el resultado entre tres.

El valor devuelto se almacena en la variable `notaFinal`.

**Aprendizaje:** una función permite encapsular un cálculo y reutilizarlo con diferentes datos.

## 11. Ejemplo práctico — Tabla de multiplicar

La clase incluye un procedimiento para mostrar la tabla de multiplicar de un número.

```pseudocode
Algoritmo principal
    imprimirTabla(5)
FinAlgoritmo

SubProceso imprimirTabla(numero)
    Definir i Como Entero

    Para i <- 1 Hasta 10 Hacer
        Escribir numero, " x ", i, " = ", numero * i
    FinPara
FinSubProceso
```

### Funcionamiento

El procedimiento recibe un número y utiliza un bucle para mostrar su tabla de multiplicar del 1 al 10.

Podemos utilizarlo con distintos argumentos:

```pseudocode
imprimirTabla(3)
imprimirTabla(7)
imprimirTabla(9)
```

No es necesario escribir nuevamente la lógica del bucle.

## 12. Organización del código mediante bloques reutilizables

Las funciones y procedimientos permiten dividir algoritmos grandes en partes más pequeñas.

### Ventajas

- **Modularidad:** cada bloque cumple una tarea específica.
- **Reutilización:** puede utilizarse varias veces.
- **Legibilidad:** el programa principal resulta más sencillo de entender.
- **Mantenimiento:** las modificaciones se concentran en el bloque correspondiente.
- **Organización:** facilita separar las responsabilidades.

### Ejemplo conceptual

```text
Algoritmo principal
    |
    +-- Mostrar bienvenida
    |
    +-- Solicitar información
    |
    +-- Calcular resultado
    |
    +-- Mostrar resultado
    |
FinAlgoritmo
```

Cada operación podría implementarse mediante funciones o procedimientos, según necesite devolver un valor o realizar una tarea.

*Este esquema es un ejemplo de repaso elaborado a partir de los conceptos de modularidad de la clase.*

## 13. Buenas prácticas

Al utilizar funciones y procedimientos conviene:

- Elegir nombres descriptivos.
- Definir una responsabilidad clara para cada bloque.
- Evitar repetir instrucciones.
- Utilizar parámetros cuando los datos puedan cambiar.
- Diferenciar las tareas de los cálculos que devuelven resultados.
- Declarar las variables necesarias.
- Utilizar correctamente los tipos de datos.
- Mantener una indentación adecuada.
- Comprobar los resultados de las funciones.
- Reutilizar los bloques siempre que resulte apropiado.

## 14. Ejercicios y actividades

La presentación finaliza con una sección titulada **«Ejercicios»**, pero no incluye enunciados específicos después de esa diapositiva.

Los ejemplos prácticos desarrollados en el material son:

| Ejemplo | Tipo | Concepto |
|---|---|---|
| Mostrar un saludo | Procedimiento | Reutilizar instrucciones |
| Saludo personalizado | Procedimiento | Parámetros |
| Imprimir un texto varias veces | Procedimiento | Parámetros y bucles |
| Sumar dos números | Función | Valor de retorno |
| Multiplicar dos números | Función | Operaciones aritméticas |
| Mostrar un separador | Procedimiento | Reutilización |
| Encontrar el mayor de dos números | Función | Condicionales |
| Calcular una media | Función | Cálculos |
| Mostrar una tabla de multiplicar | Procedimiento | Bucles y parámetros |

Los ejercicios que se hayan realizado durante la clase pueden documentarse separadamente en la carpeta `ejercicios`.

## 15. Principales aprendizajes

- Las funciones y procedimientos permiten reutilizar código.
- Un procedimiento realiza una tarea sin devolver un valor de retorno.
- Una función devuelve un valor.
- En PSeInt se utiliza `SubProceso` para definir procedimientos.
- Se utiliza `Funcion` para definir funciones con retorno.
- Los parámetros permiten recibir información.
- Los argumentos son los valores utilizados al llamar un bloque.
- Los procedimientos pueden recibir varios parámetros.
- Las funciones pueden utilizar operaciones, condiciones y bucles.
- La modularidad facilita la organización de los algoritmos.
- Reutilizar código reduce instrucciones repetidas.
- Los bloques independientes facilitan el mantenimiento.

## 16. Conclusión

Esta clase introduce las funciones y los procedimientos como herramientas fundamentales para organizar y reutilizar código.

Se aprende a crear procedimientos, utilizar parámetros, implementar funciones que devuelven resultados y comprender las diferencias entre ambas estructuras.

Los ejemplos muestran cómo combinar estos conocimientos con variables, operadores, condicionales y bucles.

**Aprendizaje principal:** las funciones y los procedimientos permiten dividir los algoritmos en bloques reutilizables, facilitando la comprensión, organización y mantenimiento del código.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos de PSeInt adaptados para el repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

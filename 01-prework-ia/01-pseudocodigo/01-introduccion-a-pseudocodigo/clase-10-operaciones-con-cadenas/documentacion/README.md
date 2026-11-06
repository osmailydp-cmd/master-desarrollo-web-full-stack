# Día 9 — Operadores con cadenas

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Aprender a trabajar con cadenas de caracteres en PSeInt, utilizando instrucciones de entrada y salida, concatenación, comparación de textos y funciones para manipular cadenas.

Comprender cómo los programas pueden interactuar con los usuarios mediante información textual.

## 2. Entrada y salida de datos

La entrada y salida permiten establecer una comunicación entre el programa y el usuario.

### Entrada de datos — LEER

La instrucción `Leer` permite recibir información introducida por el usuario y almacenarla en una variable.

```pseudocode
Definir nombre Como Caracter
Leer nombre
```

El valor introducido se guarda en la variable `nombre`.

### Salida de datos — ESCRIBIR

La instrucción `Escribir` permite mostrar información por pantalla.

Podemos mostrar:

- Textos literales.
- Valores almacenados en variables.
- Textos y variables combinados.

```pseudocode
Escribir "Hola"
Escribir nombre
Escribir "Hola ", nombre
```

**Concepto fundamental:** `Leer` recibe información y `Escribir` permite mostrarla.

## 3. ¿Qué es una cadena de caracteres?

Una cadena es una secuencia de caracteres que puede representar palabras, nombres, frases o mensajes.

### Ejemplos

```pseudocode
"Hola"
"Ana"
"Montevideo"
"Estoy aprendiendo programación"
```

En PSeInt, podemos utilizar variables de tipo `Caracter` para almacenar cadenas.

```pseudocode
Definir nombre Como Caracter

nombre = "Ana"
```

Las cadenas permiten trabajar con información que no representa necesariamente valores numéricos.

## 4. Concatenación de cadenas

Concatenar significa unir dos o más cadenas de caracteres para formar un texto.

### Mostrar textos y variables juntos

```pseudocode
Escribir "Hola ", nombre
```

La instrucción muestra el texto literal seguido del contenido de la variable.

### Guardar una concatenación en una variable

```pseudocode
mensaje <- "Hola " + nombre
```

En este caso, el resultado se almacena en `mensaje`.

### Ejemplo completo

```pseudocode
Algoritmo saludoPersonalizado
    Definir nombre, ciudad Como Caracter

    Escribir "Introduce tu nombre: "
    Leer nombre

    Escribir "Introduce tu ciudad: "
    Leer ciudad

    Escribir "Hola ", nombre, ", vives en ", ciudad
FinAlgoritmo
```

**Ejemplo de resultado:**

```text
Hola Ana, vives en Montevideo
```

### Diferencia importante

`Escribir "Hola ", nombre` muestra varios elementos juntos.

`mensaje <- "Hola " + nombre` construye una cadena y la almacena para utilizarla posteriormente.

## 5. Comparación de cadenas

Además de unir textos, podemos compararlos para determinar si son iguales o diferentes.

La clase presenta los siguientes operadores:

| Operador | Significado |
|---|---|
| `=` | Igualdad |
| `<>` | Desigualdad |
| `!=` | Desigualdad (alternativa según sintaxis admitida) |

### Ejemplo de igualdad

```pseudocode
respuesta = "si"
```

Esta expresión comprueba si el contenido de `respuesta` coincide con la cadena `"si"`.

### Ejemplo de desigualdad

```pseudocode
respuesta <> "no"
```

Esta expresión comprueba si la variable contiene un texto diferente de `"no"`.

**Importante:** las cadenas literales deben escribirse entre comillas.

## 6. Sensibilidad a mayúsculas y minúsculas

La clase explica que las diferencias entre letras mayúsculas y minúsculas pueden afectar a las comparaciones.

Por ejemplo:

```text
"Ana"
"ana"
```

No tienen exactamente la misma combinación de caracteres.

Para evitar problemas al comparar textos, podemos normalizar las cadenas.

### Función MAYUSCULAS

Transforma una cadena a letras mayúsculas.

```pseudocode
Mayusculas("Ana")
```

**Resultado:**

```text
ANA
```

### Función MINUSCULAS

Transforma una cadena a letras minúsculas.

```pseudocode
Minusculas("Ana")
```

**Resultado:**

```text
ana
```

### Ejemplo de comparación normalizada

```pseudocode
Algoritmo compararRespuesta
    Definir respuesta Como Caracter

    Escribir "¿Deseas continuar? "
    Leer respuesta

    Si Minusculas(respuesta) = "si" Entonces
        Escribir "Has respondido afirmativamente"
    FinSi
FinAlgoritmo
```

De esta manera, respuestas como `"SI"`, `"Si"` y `"si"` pueden tratarse de la misma forma.

**Concepto aprendido:** normalizar las cadenas antes de compararlas facilita el procesamiento del texto.

## 7. Función LONGITUD

La función `Longitud()` devuelve la cantidad de caracteres que contiene una cadena.

### Ejemplo

```pseudocode
Longitud("Ana")
```

**Resultado:** `3`.

### Ejemplo con una variable

```pseudocode
Algoritmo longitudNombre
    Definir nombre Como Caracter
    Definir cantidadCaracteres Como Entero

    Escribir "Introduce tu nombre: "
    Leer nombre

    cantidadCaracteres = Longitud(nombre)

    Escribir "Tu nombre tiene ", cantidadCaracteres, " caracteres"
FinAlgoritmo
```

### Explicación

La función permite conocer cuántos caracteres contiene el texto almacenado en una variable.

Los espacios también cuentan como caracteres.

Por ejemplo:

```pseudocode
Longitud("Ana Maria")
```

**Resultado:** `9`.

Esta función resulta útil para trabajar con nombres, mensajes y longitudes de cadenas.

## 8. Funciones principales de cadenas

| Función u operación | Utilidad | Ejemplo |
|---|---|---|
| Concatenación `+` | Unir cadenas | `"Hola " + nombre` |
| `Mayusculas()` | Convertir a mayúsculas | `Mayusculas("Ana")` |
| `Minusculas()` | Convertir a minúsculas | `Minusculas("Ana")` |
| `Longitud()` | Contar caracteres | `Longitud("Ana")` |
| `=` | Comparar igualdad | `respuesta = "si"` |
| `<>` | Comparar desigualdad | `respuesta <> "no"` |

Estas operaciones permiten manipular información textual y construir algoritmos más interactivos.

## 9. Errores habituales con cadenas

La clase presenta cuatro errores frecuentes que debemos evitar.

### 9.1. Olvidar las comillas

**Incorrecto:**

```pseudocode
Escribir Hola
```

**Correcto:**

```pseudocode
Escribir "Hola"
```

Cuando queremos mostrar un texto literal, debemos escribirlo entre comillas.

### 9.2. Comparar texto sin comillas

**Incorrecto:**

```pseudocode
respuesta = si
```

**Correcto:**

```pseudocode
respuesta = "si"
```

Sin comillas, `si` no representa una cadena literal.

### 9.3. Confundir una variable con un texto

```pseudocode
Escribir "nombre"
```

Muestra literalmente la palabra:

```text
nombre
```

En cambio:

```pseudocode
Escribir nombre
```

Muestra el contenido almacenado en la variable `nombre`.

**Concepto importante:** las comillas cambian cómo se interpreta el contenido.

### 9.4. Mezclar números y cadenas incorrectamente

**Ejemplo presentado en la clase:**

```pseudocode
nombre + 5
```

No debemos tratar una operación entre texto y números como si fuera una suma aritmética ordinaria.

Cuando necesitamos representar números dentro de una cadena, debemos utilizar una conversión adecuada o una instrucción de salida que admita ambos valores.

## 10. Ejemplo integrador

El siguiente ejemplo de repaso combina entrada de datos, cadenas, funciones y salida de información.

```pseudocode
Algoritmo datosPersonales
    Definir nombre, ciudad Como Caracter
    Definir cantidadCaracteres Como Entero

    Escribir "Introduce tu nombre: "
    Leer nombre

    Escribir "Introduce tu ciudad: "
    Leer ciudad

    cantidadCaracteres = Longitud(nombre)

    Escribir "Hola ", nombre, ", vives en ", ciudad
    Escribir "Tu nombre tiene ", cantidadCaracteres, " caracteres"
    Escribir "Nombre en mayúsculas: ", Mayusculas(nombre)
FinAlgoritmo
```

### Conceptos utilizados

- Declaración de variables.
- Entrada de datos con `Leer`.
- Salida de información con `Escribir`.
- Combinación de textos y variables.
- Función `Longitud()`.
- Función `Mayusculas()`.

*Este es un ejemplo de repaso elaborado a partir de los conceptos estudiados.*

## 11. Ejercicios propuestos

La clase incluye dos ejercicios prácticos.

### Ejercicio 01 — Longitud del nombre

**Objetivo:** solicitar el nombre del usuario y mostrar la cantidad de caracteres que contiene.

**Conceptos:** variables de texto, `Leer`, `Escribir` y `Longitud()`.

### Ejercicio 02 — Nombre y ciudad

**Objetivo:** solicitar el nombre y la ciudad del usuario y mostrar un mensaje personalizado.

**Ejemplo de resultado:**

```text
Hola Marta, vives en Valencia
```

**Conceptos:** lectura de cadenas, concatenación y presentación de información.

## 12. Principales aprendizajes

- Las cadenas permiten almacenar y manipular información textual.
- `Leer` permite recibir datos del usuario.
- `Escribir` permite mostrar textos y variables.
- La concatenación permite unir cadenas.
- Los operadores de igualdad y desigualdad permiten comparar textos.
- Las mayúsculas y minúsculas pueden afectar a las comparaciones.
- `Mayusculas()` transforma una cadena a mayúsculas.
- `Minusculas()` transforma una cadena a minúsculas.
- `Longitud()` permite contar los caracteres de una cadena.
- Los textos literales deben escribirse entre comillas.
- Las variables se utilizan mediante sus identificadores, sin comillas.
- Es importante diferenciar las operaciones numéricas de las operaciones con cadenas.

## 13. Conclusión

Esta clase introduce las principales operaciones con cadenas de caracteres en PSeInt y refuerza las instrucciones de entrada y salida de datos.

Se estudia cómo recibir información del usuario, mostrar mensajes, concatenar textos, comparar cadenas y utilizar funciones para trabajar con su contenido.

También se explican errores habituales relacionados con las comillas, los tipos de datos y la comparación de textos.

**Aprendizaje principal:** las operaciones con cadenas permiten que los algoritmos trabajen con información textual y se comuniquen de forma más clara y personalizada con los usuarios.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

# Día 11 — Relación de ejercicios 1

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Relación de ejercicios 1  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Consolidar los fundamentos de programación adquiridos durante las clases anteriores mediante la resolución de diez ejercicios prácticos.

Los ejercicios permiten aplicar variables, entrada y salida de datos, operadores relacionales, operadores lógicos, condicionales y operaciones aritméticas.

La finalidad es desarrollar mayor autonomía en el análisis y la resolución de problemas utilizando PSeInt.

## 2. Importancia de la práctica

Esta clase destaca la necesidad de aprender programación mediante la práctica.

Estudiar los conceptos teóricos es importante, pero también es necesario aplicarlos en situaciones concretas.

### Beneficios de resolver ejercicios

- Reforzar los conocimientos adquiridos.
- Desarrollar el pensamiento lógico.
- Identificar errores y corregirlos.
- Mejorar la comprensión de los condicionales.
- Aprender a organizar algoritmos.
- Adquirir mayor independencia para resolver problemas.

**Concepto fundamental:** los conocimientos de programación se consolidan cuando se aplican mediante ejercicios.

## 3. Conceptos utilizados en los ejercicios

Esta relación permite practicar los siguientes fundamentos:

| Concepto | Aplicación |
|---|---|
| Variables | Almacenar edades, notas, números y contraseñas |
| Entrada de datos | Solicitar información mediante `Leer` |
| Salida de datos | Mostrar resultados mediante `Escribir` |
| Operadores relacionales | Comparar valores |
| Operadores lógicos | Combinar condiciones |
| Condicionales simples | Ejecutar instrucciones según una condición |
| Condicionales dobles | Seleccionar entre dos alternativas |
| Condicionales múltiples | Clasificar valores en distintas categorías |
| Operador `MOD` | Comprobar la divisibilidad de números |

## 4. Relación de ejercicios

El material incluye diez ejercicios que permiten practicar diferentes situaciones de programación.

| Nº | Ejercicio | Objetivo |
|---|---|---|
| 01 | Mayor o menor de edad | Clasificar una persona según su edad |
| 02 | Número positivo o negativo | Determinar el signo de un número |
| 03 | Nota aprobada o suspensa | Comprobar si una nota alcanza el valor 5 |
| 04 | Comparación de dos números | Identificar el mayor o detectar igualdad |
| 05 | Clasificación de temperatura | Mostrar un mensaje según la temperatura |
| 06 | Clasificación por edad | Diferenciar menores, adultos y personas de 65 años o más |
| 07 | Clasificación de notas | Determinar la calificación según varios rangos |
| 08 | Número dentro de un intervalo | Comprobar si está entre 10 y 20 |
| 09 | Validación de contraseña | Permitir o denegar el acceso |
| 10 | Múltiplos de 2 y 3 | Comprobar la divisibilidad mediante `MOD` |

## 5. Comparaciones y operadores relacionales

Los operadores relacionales permiten comparar valores y obtener resultados lógicos.

### Operadores utilizados

| Operador | Significado |
|---|---|
| `=` | Igual |
| `<>` | Diferente |
| `<` | Menor |
| `<=` | Menor o igual |
| `>` | Mayor |
| `>=` | Mayor o igual |

### Ejemplo de repaso

```pseudocode
Si edad >= 18 Entonces
    Escribir "Mayor de edad"
SiNo
    Escribir "Menor de edad"
FinSi
```

Este ejemplo representa una decisión basada en la edad.

**Aplicación:** ejercicios 01, 02, 03 y 04.

## 6. Condicionales múltiples

Los condicionales múltiples permiten clasificar un valor en diferentes categorías.

Son especialmente útiles cuando existen más de dos resultados posibles.

### Ejemplo — Clasificación de notas

```pseudocode
Si nota >= 9 Entonces
    Escribir "Sobresaliente"
SiNo
    Si nota >= 7 Entonces
        Escribir "Notable"
    SiNo
        Si nota >= 5 Entonces
            Escribir "Aprobado"
        SiNo
            Escribir "Suspenso"
        FinSi
    FinSi
FinSi
```

### Importancia del orden

La condición más general no debe impedir que se evalúe una condición más específica.

Por ejemplo, una nota de 9 también es mayor o igual que 5. Si se comprueba primero `nota >= 5`, se obtendrá una clasificación incorrecta.

**Aplicación:** ejercicios 05, 06 y 07.

## 7. Operadores lógicos y validación de intervalos

Los operadores lógicos permiten combinar varias condiciones.

### Operador Y

Requiere que ambas condiciones sean verdaderas.

```pseudocode
numero >= 10 Y numero <= 20
```

Esta expresión comprueba que el número está comprendido entre 10 y 20, incluyendo ambos límites.

### Operador O

Devuelve verdadero cuando al menos una condición se cumple.

```pseudocode
numero MOD 2 = 0 O numero MOD 3 = 0
```

La expresión será verdadera cuando el número sea divisible entre 2, entre 3 o entre ambos.

**Aplicación:** ejercicios 08 y 10.

## 8. Comparación de cadenas

Los programas también pueden comparar textos.

En la relación de ejercicios se utiliza este concepto para comprobar una contraseña.

### Ejemplo — Control de acceso

```pseudocode
Si password = "admin" Entonces
    Escribir "Acceso permitido"
SiNo
    Escribir "Acceso denegado"
FinSi
```

### Conceptos aplicados

- Comparación de cadenas.
- Condicional doble.
- Validación de un valor introducido.
- Selección de un mensaje según el resultado.

**Aplicación:** ejercicio 09.

## 9. Operador MOD y divisibilidad

El operador `MOD` devuelve el resto de una división entera.

Es útil para comprobar si un número es múltiplo de otro.

### Ejemplos

```pseudocode
10 MOD 2 = 0
10 MOD 3 = 1
12 MOD 2 = 0
12 MOD 3 = 0
```

### Reglas fundamentales

- Un número es múltiplo de 2 cuando `numero MOD 2 = 0`.
- Un número es múltiplo de 3 cuando `numero MOD 3 = 0`.
- Un número puede ser múltiplo de ambos.
- Si ambos restos son distintos de cero, no es múltiplo de ninguno.

**Aplicación:** ejercicio 10.

## 10. Buenas prácticas para resolver ejercicios

Al desarrollar algoritmos conviene seguir un procedimiento ordenado.

### Comprender el problema

Identificar qué información solicita el ejercicio y qué resultado debe producir.

### Identificar los datos

Determinar qué variables necesitamos y cuáles son sus tipos.

### Diseñar la solución

Organizar las operaciones, comparaciones y decisiones necesarias.

### Implementar el algoritmo

Escribir el pseudocódigo utilizando una estructura clara y nombres descriptivos.

### Comprobar los resultados

Realizar pruebas con diferentes valores de entrada.

### Corregir los errores

Revisar las condiciones, operadores y resultados cuando el comportamiento no sea el esperado.

## 11. Errores que debemos evitar

### Confundir asignación y comparación

```pseudocode
edad <- 18
```

Asigna un valor.

```pseudocode
edad = 18
```

Compara valores cuando se utiliza dentro de una expresión lógica.

### No comprobar los límites

En un intervalo entre 10 y 20, deben probarse los valores 10 y 20 para verificar que están incluidos.

### Ordenar incorrectamente los condicionales

Las condiciones generales pueden impedir que se alcancen otras más específicas.

### Comparar cadenas sin comillas

Los textos literales deben escribirse entre comillas.

### Confundir divisibilidad con división

Para comprobar si existe un resto igual a cero se utiliza `MOD`, no una división ordinaria.

## 12. Organización de los ejercicios en el portafolio

La documentación de las soluciones se encuentra separada de los apuntes teóricos.

### Carpeta ejercicios

Contiene los algoritmos implementados en PSeInt y su correspondiente README.

### Carpeta documentación

Contiene este resumen de los conceptos aplicados durante la clase.

Esta separación permite consultar tanto los fundamentos teóricos como las implementaciones prácticas.

## 13. Principales aprendizajes

- Los ejercicios permiten consolidar los conocimientos de programación.
- Las variables permiten almacenar información.
- Los operadores relacionales permiten comparar valores.
- Los condicionales permiten seleccionar diferentes caminos de ejecución.
- Los condicionales múltiples requieren un orden correcto.
- Los operadores lógicos permiten combinar condiciones.
- Las cadenas pueden compararse mediante operadores de igualdad.
- El operador `MOD` permite comprobar la divisibilidad.
- Las pruebas con valores límite ayudan a detectar errores.
- La práctica fortalece la autonomía para resolver problemas.

## 14. Conclusión

El Día 11 está dedicado a poner en práctica los fundamentos de pseudocódigo adquiridos en las clases anteriores.

La relación de diez ejercicios refuerza el uso de variables, comparaciones, operadores lógicos, condicionales y operaciones de divisibilidad.

Esta clase representa una oportunidad para evaluar la comprensión de los conceptos y desarrollar mayor independencia en la resolución de problemas.

**Aprendizaje principal:** comprender la teoría es importante, pero aplicar los conocimientos mediante ejercicios es fundamental para desarrollar habilidades de programación.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos de repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

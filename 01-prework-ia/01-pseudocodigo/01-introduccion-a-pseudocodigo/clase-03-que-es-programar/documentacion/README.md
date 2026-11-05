# Día 2 — ¿Qué es programar?

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué significa programar, conocer los fundamentos de los algoritmos y aprender a representar soluciones mediante pseudocódigo.

La clase introduce los primeros programas en PSeInt y explica la importancia de desarrollar el pensamiento lógico antes de escribir código.

## 2. ¿Qué es programar?

Programar consiste en diseñar una solución para un problema y expresarla mediante instrucciones que una computadora pueda ejecutar.

El proceso se divide en cuatro pasos:

1. Comprender el problema.
2. Dividirlo en pasos más pequeños.
3. Organizar esos pasos en un orden lógico.
4. Expresarlos mediante instrucciones ejecutables.

**Concepto fundamental:** programar no significa únicamente escribir código, sino diseñar soluciones.

Las instrucciones deben ser claras, precisas y estar correctamente ordenadas.

## 3. Diferencia entre programar y escribir código

Aunque son conceptos relacionados, no significan exactamente lo mismo.

| Programar | Escribir código |
|---|---|
| Analizar el problema | Utilizar un lenguaje de programación |
| Diseñar una solución | Aplicar las reglas de sintaxis |
| Organizar los pasos | Traducir la solución a instrucciones |
| Desarrollar la lógica | Implementar el algoritmo |

### ¿Por qué es importante esta diferencia?

Uno de los errores habituales al comenzar es intentar escribir código sin comprender previamente cómo resolver el problema.

La metodología recomendada consiste en analizar primero la situación, definir la solución y después implementarla.

**Ejemplo:** antes de construir un edificio se necesita un diseño. En programación, el algoritmo representa ese diseño y el código permite implementarlo.

## 4. ¿Qué es un algoritmo?

Un algoritmo es un conjunto de instrucciones ordenadas y definidas que permiten resolver un problema o realizar una tarea.

### Características principales

- Tiene un inicio.
- Tiene un final.
- Sigue un orden lógico.
- Sus instrucciones deben ser claras.
- Puede ejecutarse paso a paso.

### Estructura básica

Un algoritmo puede organizarse en tres elementos:

| Elemento | Descripción |
|---|---|
| Entrada | Datos necesarios para resolver el problema |
| Proceso | Operaciones e instrucciones realizadas |
| Salida | Resultado obtenido |

### Ejemplo cotidiano: preparar café

**Entrada:** agua, café y una taza.

**Proceso:**
1. Preparar la cafetera.
2. Añadir agua y café.
3. Colocar la taza.
4. Seleccionar la preparación.
5. Esperar a que termine.

**Salida:** café preparado.

Este ejemplo demuestra que los algoritmos también están presentes en actividades cotidianas.

## 5. Algoritmos en la vida diaria

Los algoritmos no pertenecen exclusivamente a la informática.

Podemos encontrarlos en actividades como:

- Preparar alimentos.
- Lavarse los dientes.
- Retirar dinero de un cajero.
- Calcular el promedio de notas.
- Elegir una ruta mediante GPS.
- Decidir si utilizar paraguas según el clima.

En todos estos casos se pueden identificar datos de entrada, operaciones y resultados.

### Importancia de los algoritmos

Comprender cómo funcionan permite:

- Desarrollar pensamiento lógico.
- Resolver problemas de manera organizada.
- Mejorar la toma de decisiones.
- Identificar procedimientos que pueden automatizarse.
- Diseñar soluciones más claras y fáciles de mantener.

## 6. Introducción al pseudocódigo

El pseudocódigo es una forma de representar algoritmos mediante instrucciones simples y estructuradas, similares al lenguaje natural.

No requiere utilizar directamente la sintaxis de un lenguaje de programación como Python, Java o JavaScript.

### ¿Para qué sirve?

- Organizar ideas.
- Practicar el razonamiento lógico.
- Representar una solución antes de programarla.
- Facilitar la comprensión de algoritmos.
- Detectar posibles errores.
- Preparar el aprendizaje de lenguajes de programación.

### Ventajas

Permite concentrarse en la lógica del problema sin preocuparse inicialmente por las particularidades sintácticas de un lenguaje.

## 7. Primer programa en PSeInt — Hola Mundo

El primer ejemplo consiste en mostrar un mensaje por pantalla.

```pseudocode
Algoritmo mi_primer_programa
    Escribir "Hola Mundo"
FinAlgoritmo
```

**Resultado:**

```text
Hola Mundo
```

### Explicación

- `Algoritmo`: indica el comienzo del programa.
- `mi_primer_programa`: identifica el algoritmo.
- `Escribir`: muestra información por pantalla.
- `FinAlgoritmo`: indica el final del programa.

Este ejemplo introduce la estructura básica de un programa en PSeInt.

## 8. Segundo programa — Solicitar el nombre del usuario

El siguiente ejemplo permite interactuar con el usuario mediante la lectura de datos.

```pseudocode
Algoritmo saludo
    Definir nombre Como Caracter

    Escribir "¿Cómo te llamas?"
    Leer nombre

    Escribir "Hola ", nombre, ", encantado de saludarte"
FinAlgoritmo
```

### Conceptos aplicados

**Variable:** espacio donde se almacena información.

**Definir:** permite declarar una variable y establecer su tipo.

**Leer:** recibe información introducida por el usuario.

**Escribir:** muestra información en pantalla.

### Entrada, proceso y salida

| Elemento | Aplicación |
|---|---|
| Entrada | Nombre introducido |
| Proceso | Construcción del mensaje |
| Salida | Saludo personalizado |

## 9. Tercer programa — Comprobar la mayoría de edad

Este ejemplo introduce las estructuras condicionales.

```pseudocode
Algoritmo control_edad
    Definir edad Como Entero

    Escribir "Introduce tu edad"
    Leer edad

    Si edad >= 18 Entonces
        Escribir "Eres mayor de edad"
    SiNo
        Escribir "Eres menor de edad"
    FinSi
FinAlgoritmo
```

### Explicación

El algoritmo solicita una edad y evalúa una condición:

- Si la edad es mayor o igual a 18, muestra un mensaje.
- En caso contrario, muestra un mensaje diferente.

### Conceptos aplicados

- Variables de tipo entero.
- Lectura de datos.
- Operadores relacionales.
- Condicionales `Si`, `Entonces` y `SiNo`.
- Ejecución de instrucciones según una condición.

## 10. Introducción a los diagramas de flujo

Los diagramas de flujo permiten representar gráficamente los pasos de un algoritmo.

En la clase se presentan diagramas correspondientes a los primeros programas.

### Elementos básicos

| Símbolo | Función |
|---|---|
| Óvalo | Inicio o fin |
| Paralelogramo | Entrada o salida |
| Rectángulo | Proceso u operación |
| Rombo | Decisión o condición |
| Flechas | Dirección del flujo |

Los diagramas ayudan a visualizar el recorrido de las instrucciones y las diferentes decisiones que puede tomar un programa.

## 11. Ejercicios propuestos

Al finalizar la clase se plantean tres ejercicios prácticos.

### Ejercicio 01 — Acceso a un parque infantil

Solicitar la edad de una persona y determinar si puede acceder a un parque infantil reservado para menores de 12 años.

**Conceptos:** entrada de datos y condicionales.

### Ejercicio 02 — Presentación personal

Solicitar el nombre, la edad y la ciudad de nacimiento de una persona.

Mostrar un mensaje de presentación utilizando toda la información introducida.

**Conceptos:** variables, lectura, escritura y concatenación de texto.

### Ejercicio 03 — Derecho al voto

Solicitar la edad del usuario y determinar si cumple el requisito de tener 18 años o más.

**Conceptos:** operadores relacionales y estructuras condicionales.

Para cada ejercicio se propone elaborar el pseudocódigo y su correspondiente diagrama de flujo.

## 12. Principales aprendizajes

- Programar significa diseñar soluciones para resolver problemas.
- Escribir código es una etapa de la programación.
- Un algoritmo describe instrucciones organizadas.
- Todo algoritmo puede analizarse mediante entrada, proceso y salida.
- El orden de las instrucciones es fundamental.
- El pseudocódigo facilita el aprendizaje de la lógica.
- PSeInt permite representar y ejecutar algoritmos.
- Las variables almacenan información.
- Las estructuras condicionales permiten tomar decisiones.
- Los diagramas de flujo ayudan a visualizar las soluciones.

## 13. Conclusión

Esta clase introduce los fundamentos del pensamiento computacional y la resolución de problemas mediante algoritmos.

Se presentan los primeros programas en PSeInt, incorporando instrucciones de escritura, lectura de datos, variables y condiciones.

El aprendizaje principal es comprender que **antes de escribir código debemos analizar el problema, diseñar una solución y organizar los pasos necesarios para resolverlo**.

Estos conocimientos constituyen la base para continuar desarrollando algoritmos más complejos durante el módulo de Pseudocódigo.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

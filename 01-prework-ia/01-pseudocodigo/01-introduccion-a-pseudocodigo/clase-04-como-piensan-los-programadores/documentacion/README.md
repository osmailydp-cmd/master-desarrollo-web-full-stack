# Día 3 — ¿Cómo piensan los programadores?

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender cómo los programadores analizan y resuelven problemas mediante el pensamiento computacional.

Aprender a dividir problemas complejos en pasos sencillos y representar soluciones mediante diagramas de flujo antes de escribir código.

## 2. ¿Cómo piensa un programador?

Antes de escribir código, un programador realiza tres acciones fundamentales:

1. **Entender el problema:** identificar qué se necesita resolver.
2. **Dividirlo en pasos:** separar el problema en partes más pequeñas.
3. **Representar la solución:** organizar los pasos de manera clara.

Este proceso permite desarrollar soluciones comprensibles y estructuradas.

**Concepto principal:** antes de programar, debemos pensar cómo resolver el problema.

## 3. Pensamiento computacional

El pensamiento computacional es una forma de analizar problemas y desarrollar soluciones mediante pasos lógicos y organizados.

### Características principales

- Analizar el problema.
- Dividirlo en partes más sencillas.
- Ordenar los pasos.
- Encontrar una solución clara.

No se aplica exclusivamente a la informática. También resulta útil para organizar actividades cotidianas y resolver problemas de diferentes ámbitos.

### Ejemplo cotidiano — Preparar una tortilla

Podemos dividir el proceso en las siguientes instrucciones:

1. Romper los huevos.
2. Batirlos.
3. Calentar la sartén.
4. Añadir los huevos.
5. Cocinarlos.

Cada instrucción representa una acción concreta y el orden es fundamental para obtener el resultado esperado.

## 4. Estructura de un programa: entrada, proceso y salida

Todo programa puede analizarse mediante tres elementos fundamentales.

| Elemento | Descripción |
|---|---|
| Entrada | Datos que recibe el programa |
| Proceso | Operaciones realizadas con esos datos |
| Salida | Resultado obtenido después del procesamiento |

### Ejemplo — Comprobar la mayoría de edad

**Entrada:** edad introducida por el usuario.

**Proceso:** comprobar si la edad es mayor o igual a 18.

**Salida:** mostrar un mensaje indicando si la persona es mayor o menor de edad.

### Representación

```text
ENTRADA
   |
   v
Leer edad
   |
   v
PROCESO
¿Edad >= 18?
   |
   v
SALIDA
Mostrar resultado
```

Este modelo facilita la identificación de los datos necesarios y las operaciones que debe realizar el algoritmo.

## 5. Descomposición de problemas

La descomposición consiste en dividir un problema en tareas más pequeñas y fáciles de resolver.

### Ejemplo — Comprobar la edad

El problema puede separarse en cuatro acciones:

1. Solicitar la edad al usuario.
2. Leer y almacenar la edad.
3. Comparar la edad con el valor 18.
4. Mostrar el resultado correspondiente.

### ¿Por qué es importante?

- Facilita la comprensión del problema.
- Permite organizar las instrucciones.
- Reduce la complejidad.
- Ayuda a identificar errores.
- Facilita la implementación posterior.

## 6. Diagramas de flujo

Un diagrama de flujo es una representación gráfica de los pasos y decisiones de un algoritmo.

Utiliza símbolos conectados mediante líneas y flechas para mostrar el orden de ejecución.

### ¿Para qué sirven?

- Visualizar un proceso.
- Comprender mejor sus instrucciones.
- Identificar posibles errores.
- Explicar el funcionamiento de un algoritmo.
- Organizar la solución antes de programarla.

También pueden utilizarse para representar procesos en negocios, ingeniería y otras áreas.

## 7. Componentes de un diagrama de flujo

Los diagramas utilizan símbolos específicos para representar distintos tipos de instrucciones.

| Símbolo | Representación | Función |
|---|---|---|
| Inicio / Fin | Óvalo | Indica dónde comienza o termina el algoritmo |
| Proceso | Rectángulo | Representa una operación o instrucción |
| Entrada / Salida | Paralelogramo | Permite introducir o mostrar información |
| Decisión | Rombo | Evalúa una condición y determina qué camino seguir |
| Conectores | Líneas y flechas | Indican la dirección del flujo |

### Ejemplo — Mayoría de edad

```text
         INICIO
            |
            v
        Leer edad
            |
            v
      ¿Edad >= 18?
         /      \
       Sí        No
       |          |
       v          v
   Mostrar      Mostrar
   "Mayor"      "Menor"
       \          /
        \        /
           FIN
```

El rombo representa la condición y las dos ramas muestran los posibles resultados.

## 8. Herramientas para crear diagramas de flujo

La clase presenta diferentes herramientas que permiten elaborar diagramas:

| Herramienta | Utilidad |
|---|---|
| Lápiz y papel | Diseñar soluciones de forma sencilla |
| draw.io | Crear diagramas digitales |
| Lucidchart | Elaborar diagramas y procesos |
| Miro | Organizar ideas y representar procesos |
| Figma | Diseñar representaciones visuales |

Para comenzar, se recomienda utilizar lápiz y papel.

Lo importante es comprender y representar correctamente la lógica, no realizar un dibujo visualmente perfecto.

## 9. Ejemplos de diagramas de flujo

Durante la clase se muestran tres ejemplos básicos:

### Ejemplo 01 — Hola Mundo

Representa un algoritmo que muestra un mensaje por pantalla.

**Secuencia:**

Inicio → Mostrar mensaje → Fin.

### Ejemplo 02 — Saludo personalizado

Representa un algoritmo que solicita el nombre del usuario y muestra un saludo.

**Secuencia:**

Inicio → Solicitar nombre → Leer nombre → Mostrar saludo → Fin.

### Ejemplo 03 — Comprobación de edad

Representa un algoritmo que evalúa una condición y muestra un mensaje diferente según el resultado.

**Secuencia:**

Inicio → Leer edad → Evaluar condición → Mostrar resultado → Fin.

## 10. Ejercicios propuestos

La clase plantea dos ejercicios para practicar la representación de algoritmos mediante diagramas de flujo.

### Ejercicio 01 — Semáforo

**Objetivo:** representar mediante un diagrama de flujo la decisión de cruzar una calle según el color del semáforo.

Se consideran dos colores:

- Verde: permite cruzar.
- Rojo: no permite cruzar.

**Conceptos:** estructuras condicionales y toma de decisiones.

### Ejercicio 02 — Cajero automático

**Objetivo:** representar el proceso que sigue una persona cuando retira dinero de un cajero automático utilizando su tarjeta.

El ejercicio permite practicar la organización de instrucciones y decisiones dentro de un proceso.

**Conceptos:** entrada de datos, secuencia de operaciones y decisiones.

## 11. Principales aprendizajes

- El pensamiento computacional permite resolver problemas de forma organizada.
- Antes de programar debemos analizar y comprender el problema.
- La descomposición facilita resolver tareas complejas.
- Todo programa puede analizarse mediante entrada, proceso y salida.
- Los diagramas de flujo permiten representar algoritmos visualmente.
- Cada símbolo del diagrama tiene una función determinada.
- Las condiciones permiten establecer diferentes caminos de ejecución.
- Los diagramas facilitan la detección de errores antes de escribir código.
- La claridad de la solución es más importante que la apariencia del dibujo.

## 12. Conclusión

La clase introduce el pensamiento computacional como una habilidad fundamental para aprender programación.

Se estudia cómo analizar problemas, dividirlos en instrucciones sencillas y representar soluciones mediante diagramas de flujo.

El aprendizaje principal es que **programar comienza con comprender y organizar una solución, antes de escribir las instrucciones que ejecutará la computadora**.

Estos conocimientos sirven como base para desarrollar algoritmos más complejos durante el módulo de Pseudocódigo.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

# Ejercicios — Clase 16: Listas y arrays bidimensionales

**Clase:** AP S21 - Día 15 - Listas y arrays bidimensionales  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Lenguaje:** Pseudocódigo  
**Herramienta:** PSeInt  
**Estado:** Finalizado

---

## Ejercicios 01 y 02 — Crear, leer y mostrar una matriz 2×2

**Archivo:** [dia15_ejercicio01_02_crear_y_leer_matriz_2x2.psc](./dia15_ejercicio01_02_crear_y_leer_matriz_2x2.psc)

**Objetivo:** Crear una matriz de dos filas y dos columnas, almacenar valores introducidos por el usuario y mostrarlos.

**Descripción:** El algoritmo dimensiona una matriz 2×2 y utiliza dos bucles `Mientras` anidados para recorrer sus filas y columnas, primero almacenando los valores y posteriormente mostrándolos en pantalla.

**Conceptos aplicados:** Arrays bidimensionales, dimensionamiento de matrices, índices, bucles anidados y entrada y salida de datos.

## Ejercicios 03 y 04 — Notas de alumnos

**Archivo:** [dia15_ejercicio03_04_guardar_notas_y_mostrar_segunda_nota_del_tercer_alumno.psc](./dia15_ejercicio03_04_guardar_notas_y_mostrar_segunda_nota_del_tercer_alumno.psc)

**Objetivo:** Almacenar las notas de tres alumnos en dos exámenes y mostrar la segunda nota del tercer alumno.

**Descripción:** El algoritmo utiliza una matriz 3×2 en la que las filas representan alumnos y las columnas representan exámenes. Después de introducir las notas, accede directamente a la posición `notas[2,1]` para mostrar la segunda nota del tercer alumno.

**Conceptos aplicados:** Matrices bidimensionales, bucles anidados, índices desde cero y acceso a posiciones específicas.

## Ejercicio 05 — Interpretación de una posición de matriz

**Tipo:** Ejercicio teórico, sin archivo `.psc`.

**Enunciado:** Explicar qué representa `notas[2,3]`.

**Respuesta:** La expresión `notas[2,3]` representa la cuarta nota del tercer alumno, suponiendo que las filas representan alumnos, las columnas representan las notas de sus exámenes y los índices comienzan en cero.

**Observación:** Para acceder a esta posición, la matriz debe tener al menos tres filas y cuatro columnas.

**Conceptos aplicados:** Índices de matrices bidimensionales, identificación de filas y columnas y acceso a elementos.

## Ejercicio 06 — Matriz 3×3

**Archivo:** [dia15_ejercicio06_matriz_de_3x3.psc](./dia15_ejercicio06_matriz_de_3x3.psc)

**Objetivo:** Crear una matriz de tres filas y tres columnas, introducir sus valores y mostrarlos.

**Descripción:** El algoritmo dimensiona una matriz 3×3 y utiliza bucles `Mientras` anidados para cargar sus nueve elementos. Posteriormente, realiza un segundo recorrido para mostrar la matriz organizada por filas.

**Conceptos aplicados:** Matrices bidimensionales, bucles anidados, carga de datos, recorrido de filas y columnas y presentación de resultados.

## Ejercicio adicional — Matriz de precios de productos por comercios

**Archivo:** [dia15_ejercicio_adicional_precios_productos_comercios.psc](./dia15_ejercicio_adicional_precios_productos_comercios.psc)

**Objetivo:** Registrar y consultar los precios de tres productos en tres comercios diferentes.

**Descripción:** El algoritmo utiliza dos arrays unidimensionales para almacenar los nombres de los productos y los comercios, junto con una matriz bidimensional 3×3 para almacenar sus precios. Mediante bucles anidados, solicita los datos y posteriormente muestra cada producto con sus respectivos comercios y precios.

**Conceptos aplicados:**
- Arrays unidimensionales y bidimensionales.
- Relación de datos mediante índices.
- Recorrido de matrices mediante bucles anidados.
- Almacenamiento y recuperación de información.
- Presentación estructurada de resultados.

---

## Observaciones

Los ejercicios de esta clase permitieron comprender cómo almacenar y procesar información organizada en filas y columnas utilizando matrices bidimensionales.

Los ejercicios 01 y 02 se resolvieron mediante un único algoritmo, al igual que los ejercicios 03 y 04. El ejercicio 05 se documentó como una explicación teórica.

El ejercicio adicional permitió aplicar los conocimientos adquiridos a una situación práctica de comparación de precios entre productos y comercios.

Se conservan los algoritmos desarrollados durante el curso como parte de mi proceso de aprendizaje con PSeInt.

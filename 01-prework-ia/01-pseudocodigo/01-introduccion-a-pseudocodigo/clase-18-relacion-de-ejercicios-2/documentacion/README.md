# Día 17 — Relación de ejercicios 2

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Relación de ejercicios 2  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Consolidar los conocimientos adquiridos durante el módulo de Pseudocódigo mediante la resolución de ejercicios que combinan diferentes conceptos de programación.

Esta clase está orientada a la práctica y a desarrollar mayor autonomía para analizar problemas, diseñar algoritmos e implementar soluciones en PSeInt.

## 2. Importancia de la práctica

La presentación del Día 17 introduce una nueva relación de ejercicios y destaca la importancia de aprender mediante la acción.

El objetivo es aplicar los conocimientos estudiados anteriormente y comprobar la capacidad para resolver problemas de forma independiente.

### Habilidades que se refuerzan

- Interpretar enunciados.
- Identificar variables y tipos de datos.
- Diseñar algoritmos.
- Utilizar operadores y condiciones.
- Aplicar estructuras repetitivas.
- Trabajar con cadenas de caracteres.
- Procesar arrays y matrices.
- Validar datos introducidos por el usuario.
- Comprobar resultados y corregir errores.

## 3. Conceptos aplicados

La relación de ejercicios permite combinar los siguientes conocimientos:

| Concepto | Aplicación |
|---|---|
| Variables | Almacenamiento de información |
| Operadores aritméticos | Cálculos, descuentos y promedios |
| Operadores relacionales | Comparaciones y validaciones |
| Operadores lógicos | Combinación de condiciones |
| Condicionales | Clasificación y toma de decisiones |
| Bucles | Repetición de instrucciones |
| Contadores | Registro de cantidades |
| Acumuladores | Cálculo de totales |
| Cadenas | Tratamiento de nombres e iniciales |
| Arrays unidimensionales | Almacenamiento de listas |
| Matrices | Organización de datos en filas y columnas |

## 4. Relación de ejercicios desarrollados

Durante esta clase se trabajaron diez ejercicios y un reto final.

| Nº | Ejercicio | Conceptos principales |
|---|---|---|
| 01 | Precio final con descuento | Cálculos y validación |
| 02 | Validación para alquilar un coche | Condiciones lógicas |
| 03 | Nombre completo e iniciales | Operaciones con cadenas |
| 04 | Validación de contraseña | Bucles y contadores |
| 05 | Suma y media hasta introducir cero | Contadores y acumuladores |
| 06 | Análisis de temperaturas | Arrays, máximos, mínimos y media |
| 07 | Búsqueda de nombres por inicial | Arrays y cadenas |
| 08 | Clasificación de notas | Condicionales múltiples |
| 09 | Ventas por vendedor | Matrices y suma por filas |
| 10 | Gestión de inventario | Arrays, validaciones y acumuladores |
| Reto | Iniciales del nombre completo | Cadenas, bucles y validación |

*Esta relación se ha organizado a partir de los ejercicios realizados para el portafolio. Los enunciados no aparecen en la presentación PDF de cuatro páginas.*

## 5. Validación de datos

Una de las habilidades reforzadas es comprobar los valores introducidos por el usuario.

La validación evita que el algoritmo continúe con datos que no cumplen determinados requisitos.

### Ejemplo — Porcentaje de descuento

Un porcentaje debe encontrarse entre 0 y 100.

```pseudocode
Repetir
    Escribir "Ingrese el porcentaje de descuento: "
    Leer descuento
Hasta Que descuento >= 0 Y descuento <= 100
```

### Conceptos aplicados

- Estructura `Repetir...Hasta Que`.
- Operadores relacionales.
- Operador lógico `Y`.
- Validación de intervalos.

**Aprendizaje:** comprobar los datos mejora la fiabilidad de los algoritmos.

## 6. Condiciones lógicas combinadas

Los operadores lógicos permiten comprobar varios requisitos simultáneamente.

### Ejemplo — Alquiler de un coche

```pseudocode
puedeAlquilar <- edad >= 18 Y tieneCarnet = "si"
```

La expresión será verdadera solamente cuando se cumplan ambas condiciones:

1. Tener al menos 18 años.
2. Disponer de permiso de conducir.

### Concepto fundamental

El operador `Y` exige que todas las condiciones sean verdaderas.

Este patrón puede utilizarse en sistemas de acceso, verificaciones y procesos que requieren cumplir varios requisitos.

## 7. Operaciones con cadenas

Las cadenas permiten almacenar y manipular información textual.

Durante los ejercicios se trabajó con nombres, apellidos e iniciales.

### Funciones importantes

| Función | Utilidad |
|---|---|
| `Longitud()` | Obtener la cantidad de caracteres |
| `Subcadena()` | Extraer caracteres o fragmentos |
| `Mayusculas()` | Convertir texto a mayúsculas |
| `Minusculas()` | Convertir texto a minúsculas |

### Ejemplo — Primera inicial

```pseudocode
inicial <- Mayusculas(Subcadena(nombre, 0, 0))
```

La instrucción obtiene el primer carácter del nombre y lo convierte a mayúscula.

### Aplicaciones

- Construcción de nombres completos.
- Extracción de iniciales.
- Comparación de nombres.
- Búsqueda por primera letra.
- Validación de cadenas vacías.

## 8. Bucles, contadores y acumuladores

Los bucles permiten procesar información repetidamente.

Los contadores y acumuladores permiten obtener resultados durante esas repeticiones.

### Ejemplo — Leer números hasta introducir cero

```pseudocode
contador <- 0
suma <- 0
numero <- -1

Mientras numero <> 0 Hacer
    Escribir "Ingrese un número: "
    Leer numero

    Si numero <> 0 Entonces
        contador <- contador + 1
        suma <- suma + numero
    FinSi
FinMientras
```

### Calcular la media

```pseudocode
Si contador > 0 Entonces
    media <- suma / contador
SiNo
    media <- 0
FinSi
```

### Conceptos aprendidos

- El valor cero funciona como condición de finalización.
- El contador registra los números válidos.
- El acumulador calcula la suma.
- Debe evitarse la división entre cero.

## 9. Operaciones con arrays

Los arrays permiten almacenar varios valores bajo un mismo nombre.

Durante la relación se utilizaron para trabajar con temperaturas, nombres, notas y cantidades de productos.

### Buscar el máximo

```pseudocode
maximo <- temperaturas[0]

Para i <- 1 Hasta 7 Hacer
    Si temperaturas[i] > maximo Entonces
        maximo <- temperaturas[i]
    FinSi
FinPara
```

### Buscar el mínimo

```pseudocode
minimo <- temperaturas[0]

Para i <- 1 Hasta 7 Hacer
    Si temperaturas[i] < minimo Entonces
        minimo <- temperaturas[i]
    FinSi
FinPara
```

### Contar valores superiores a la media

```pseudocode
contadorEncimaMedia <- 0

Para i <- 0 Hasta 7 Hacer
    Si temperaturas[i] > media Entonces
        contadorEncimaMedia <- contadorEncimaMedia + 1
    FinSi
FinPara
```

**Aprendizaje principal:** un mismo array puede analizarse mediante diferentes recorridos y operaciones.

## 10. Búsqueda de nombres por inicial

Este ejercicio combina arrays y funciones de cadenas.

El objetivo es identificar qué nombres comienzan por una letra proporcionada por el usuario.

### Comparación de iniciales

```pseudocode
Si Mayusculas(letra) = Mayusculas(Subcadena(listaNombres[i], 0, 0)) Entonces
    contador <- contador + 1
FinSi
```

### Conceptos aplicados

- Recorrido de arrays.
- Extracción del primer carácter.
- Comparaciones sin distinguir mayúsculas de minúsculas.
- Conteo de coincidencias.
- Almacenamiento de resultados.

En la implementación del portafolio también se utilizó una lista de nombres disponibles para seleccionar elementos aleatoriamente.

## 11. Clasificación mediante condicionales múltiples

Los condicionales permiten clasificar información según diferentes intervalos.

### Ejemplo — Clasificación de notas

| Nota | Categoría |
|---|---|
| Menor que 5 | Suspenso |
| Desde 5 hasta menos de 7 | Aprobado |
| Desde 7 hasta menos de 9 | Notable |
| 9 o superior | Sobresaliente |

### Conceptos importantes

- Evaluar los límites correctamente.
- Mantener un orden lógico.
- Evitar condiciones que se superpongan incorrectamente.
- Contar los elementos de cada categoría.
- Validar las notas entre 0 y 10.

## 12. Matrices y suma por filas

Las matrices permiten organizar información en filas y columnas.

En el ejercicio de ventas se utilizó una matriz de dos vendedores y tres meses.

### Ejemplo visual

| Vendedor | Mes 1 | Mes 2 | Mes 3 | Total |
|---|---:|---:|---:|---:|
| Vendedor 1 | 20 | 35 | 15 | 70 |
| Vendedor 2 | 40 | 10 | 25 | 75 |

### Recorrido por filas

```pseudocode
Para fila <- 0 Hasta 1 Hacer
    suma <- 0

    Para columna <- 0 Hasta 2 Hacer
        suma <- suma + ventas[fila,columna]
    FinPara

    Escribir "Total del vendedor: ", suma
FinPara
```

### Explicación

- El bucle exterior selecciona un vendedor.
- El acumulador se reinicia al comenzar cada fila.
- El bucle interior recorre los tres meses.
- La suma representa el total de ventas de ese vendedor.

**Concepto fundamental:** para calcular sumas independientes por filas, debemos reiniciar el acumulador dentro del bucle exterior y antes del bucle interior.

## 13. Gestión de inventario

El ejercicio integrador permite aplicar diversos conocimientos dentro de un mismo algoritmo.

Se utilizan dos arrays:

- Uno para almacenar los nombres de los productos.
- Otro para almacenar las cantidades disponibles.

### Operaciones realizadas

1. Solicitar información de cinco productos.
2. Validar que los nombres tengan al menos tres caracteres.
3. Evitar cantidades negativas.
4. Identificar el producto con menos stock.
5. Contar los productos agotados.
6. Calcular el stock total.

### Ejemplo — Contar agotados

```pseudocode
Si cantidadStockProductos[i] = 0 Entonces
    stockAgotado <- stockAgotado + 1
FinSi
```

### Ejemplo — Calcular el stock total

```pseudocode
stockTotal <- stockTotal + cantidadStockProductos[i]
```

Este ejercicio demuestra cómo combinar validaciones, arrays, condicionales, contadores y acumuladores.

## 14. Reto final — Iniciales del nombre completo

Como actividad integradora se retomó el trabajo con nombres y apellidos.

El objetivo fue obtener las iniciales del nombre completo utilizando recorridos de cadenas.

### Mejora implementada

Se incorporó una validación para evitar nombres o apellidos vacíos o que comenzaran con un espacio.

```pseudocode
Repetir
    Escribir "Ingrese su nombre: "
    Leer nombre
Hasta Que Longitud(nombre) > 0 Y Subcadena(nombre, 0, 0) <> " "
```

### Conceptos aplicados

- Lectura de cadenas.
- Validación de información.
- Concatenación.
- Recorrido de caracteres.
- Detección de espacios.
- Extracción de iniciales.
- Conversión a mayúsculas.

**Archivo desarrollado:**

`dia17_reto_final_iniciales_nombre_completo.psc`

## 15. Buenas prácticas

Durante la resolución de los ejercicios se reforzaron las siguientes recomendaciones:

- Leer cuidadosamente los enunciados.
- Identificar los datos necesarios.
- Declarar correctamente las variables.
- Inicializar contadores y acumuladores.
- Validar los datos introducidos.
- Utilizar nombres descriptivos.
- Respetar los límites de arrays y matrices.
- Evitar divisiones entre cero.
- Comprobar los valores límite.
- Reiniciar acumuladores cuando corresponda.
- Mantener una indentación clara.
- Probar diferentes casos de ejecución.

## 16. Principales aprendizajes

- Las validaciones evitan procesar datos incorrectos.
- Los operadores lógicos permiten combinar requisitos.
- Los bucles permiten repetir instrucciones hasta alcanzar una condición.
- Los contadores registran cantidades.
- Los acumuladores calculan totales.
- Las funciones de cadenas permiten analizar información textual.
- Los arrays permiten almacenar y recorrer listas.
- Las matrices organizan información en filas y columnas.
- Los bucles anidados permiten procesar matrices.
- Los condicionales múltiples permiten clasificar valores.
- Un ejercicio integrador puede combinar diferentes estructuras de programación.
- Las pruebas ayudan a detectar errores y mejorar las soluciones.

## 17. Conclusión

El Día 17 está orientado a consolidar los fundamentos de programación mediante una nueva relación de ejercicios.

Las actividades permiten aplicar variables, operadores, condicionales, bucles, cadenas, arrays y matrices en problemas de distinta complejidad.

El reto final también permite reforzar la importancia de validar la información y mejorar algoritmos previamente desarrollados.

**Aprendizaje principal:** resolver problemas de programación requiere combinar los conocimientos adquiridos y seleccionar las estructuras adecuadas para cada situación.

---

**Apuntes de estudio basados en la presentación de Conquer Blocks y en los ejercicios desarrollados durante el Día 17.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

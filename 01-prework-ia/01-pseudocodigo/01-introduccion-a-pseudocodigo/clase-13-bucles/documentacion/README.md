# Día 12 — Bucles

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Clase:** Bucles  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué son los bucles y cómo permiten repetir instrucciones dentro de un algoritmo sin necesidad de escribirlas varias veces.

Aprender a utilizar estructuras repetitivas en PSeInt, controlar las iteraciones mediante variables y detectar errores que impiden que un bucle funcione correctamente.

## 2. ¿Qué es un bucle?

Un **bucle** es una estructura de control que permite ejecutar repetidamente un conjunto de instrucciones.

En lugar de escribir una misma instrucción varias veces, podemos utilizar un bucle para automatizar su repetición.

### Ejemplos cotidianos

- Contar números del 1 al 10.
- Subir una escalera peldaño a peldaño.
- Solicitar una contraseña hasta introducir la correcta.
- Pedir varias notas.
- Repetir una operación hasta que se cumpla una condición.

### ¿Por qué son importantes?

Los bucles permiten:

- Evitar repetir instrucciones innecesariamente.
- Reducir la cantidad de código.
- Automatizar tareas.
- Procesar información de manera repetitiva.
- Controlar la ejecución mediante condiciones.

## 3. Elementos fundamentales de un bucle

Un bucle controlado por una condición necesita tres elementos principales.

| Elemento | Descripción |
|---|---|
| Inicialización | Establece el valor inicial de una variable de control |
| Condición | Determina si el bucle debe ejecutarse o continuar |
| Actualización | Modifica un valor para permitir que el bucle termine |

### Ejemplo conceptual

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador + 1
FinMientras
```

En este ejemplo:

- **Inicialización:** `contador <- 1`.
- **Condición:** `contador <= 5`.
- **Actualización:** `contador <- contador + 1`.

La actualización es fundamental para que la condición termine siendo falsa.

## 4. Bucle MIENTRAS

La estructura `Mientras` permite repetir instrucciones mientras una condición sea verdadera.

### Sintaxis

```pseudocode
Mientras condicion Hacer
    // Instrucciones
FinMientras
```

### ¿Cómo funciona?

1. Evalúa la condición.
2. Si es verdadera, ejecuta las instrucciones.
3. Vuelve a comprobar la condición.
4. Repite mientras sea verdadera.
5. Cuando la condición es falsa, continúa después del bucle.

**Importante:** `Mientras` comprueba la condición antes de ejecutar las instrucciones. Si inicialmente es falsa, no se ejecuta ninguna iteración.

## 5. Ejemplo — Mostrar números del 1 al 5

```pseudocode
Algoritmo contarNumeros
    Definir contador Como Entero

    contador <- 1

    Mientras contador <= 5 Hacer
        Escribir contador
        contador <- contador + 1
    FinMientras
FinAlgoritmo
```

### Resultado

```text
1
2
3
4
5
```

### Seguimiento de las iteraciones

| Iteración | Valor mostrado | Valor después del incremento |
|---|---|---|
| 1 | 1 | 2 |
| 2 | 2 | 3 |
| 3 | 3 | 4 |
| 4 | 4 | 5 |
| 5 | 5 | 6 |

Cuando el contador alcanza 6, la condición `contador <= 5` es falsa y el bucle termina.

*Este ejemplo de repaso utiliza el límite inclusivo `<= 5` para mostrar los cinco valores.*

## 6. ¿Qué es un contador?

Un contador es una variable que modifica su valor durante las iteraciones de un bucle, normalmente aumentando o disminuyendo una cantidad determinada.

### Incrementar un contador

```pseudocode
contador <- contador + 1
```

### Decrementar un contador

```pseudocode
contador <- contador - 1
```

### Ejemplo — Cuenta regresiva

```pseudocode
Algoritmo cuentaRegresiva
    Definir contador Como Entero

    contador <- 5

    Mientras contador >= 1 Hacer
        Escribir contador
        contador <- contador - 1
    FinMientras
FinAlgoritmo
```

**Resultado:**

```text
5
4
3
2
1
```

### Concepto importante

La dirección del contador debe ser coherente con la condición del bucle.

- Para avanzar hacia un límite superior, normalmente incrementamos.
- Para descender hacia un límite inferior, normalmente decrementamos.

## 7. Bucles sin contador numérico

No todos los bucles necesitan contar números.

También pueden repetirse hasta que ocurra un evento o cambie una variable.

### Ejemplo — Validar una contraseña

```pseudocode
Algoritmo validarClave
    Definir clave Como Caracter

    clave <- ""

    Mientras clave <> "admin" Hacer
        Escribir "Introduce la contraseña: "
        Leer clave
    FinMientras

    Escribir "Acceso permitido"
FinAlgoritmo
```

### Funcionamiento

1. La variable `clave` comienza vacía.
2. Mientras sea diferente de `"admin"`, se solicita una contraseña.
3. Cada nueva entrada actualiza la variable.
4. Cuando el usuario introduce `"admin"`, termina el bucle.
5. Se muestra el mensaje de acceso permitido.

**Concepto aprendido:** una variable de control también puede contener texto.

## 8. Diagramas de flujo con bucles

Los diagramas de flujo permiten visualizar gráficamente la repetición de instrucciones.

En las páginas 17, 20 y 24 del material se representan los bucles mediante caminos que regresan a una condición.

### Elementos característicos

- **Rombo:** representa la condición.
- **Flecha de retorno:** permite repetir las instrucciones.
- **Camino verdadero:** continúa la repetición.
- **Camino falso:** abandona el bucle.

### Representación conceptual

```text
         INICIO
            |
            v
       contador = 1
            |
            v
     ¿contador <= 5?
        /       \
       Sí        No
       |          |
       v          v
 Mostrar contador FIN
       |
       v
 contador = contador + 1
       |
       └──────> Volver a comprobar
                 la condición
```

El flujo regresa a la evaluación después de modificar el contador.

## 9. Bucle PARA

La clase también introduce la estructura `Para`, especialmente útil cuando conocemos el recorrido que debe realizar un contador.

### Sintaxis

```pseudocode
Para contador <- inicio Hasta fin Con Paso incremento Hacer
    // Instrucciones
FinPara
```

### Ejemplo — Mostrar números del 1 al 10

```pseudocode
Algoritmo contarConPara
    Definir contador Como Entero

    Para contador <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir contador
    FinPara
FinAlgoritmo
```

### Funcionamiento

- Comienza con `contador = 1`.
- Ejecuta las instrucciones.
- Incrementa automáticamente el contador en una unidad.
- Continúa hasta completar el recorrido.

En esta estructura no es necesario escribir manualmente el incremento dentro del cuerpo del bucle.

El ejemplo corresponde al contenido mostrado en las páginas 27–29 de la clase.

## 10. Diferencias entre MIENTRAS y PARA

| Característica | MIENTRAS | PARA |
|---|---|---|
| Control | Mediante condición lógica | Mediante un rango y un paso |
| Inicialización | Se realiza normalmente antes del bucle | Se indica en la propia estructura |
| Actualización | Normalmente se escribe dentro del bucle | Se realiza automáticamente |
| Uso habitual | Repetir hasta que cambie una condición | Recorrer valores dentro de un rango |
| Número de iteraciones | Puede ser desconocido inicialmente | Normalmente se conoce por el rango |

### ¿Cuándo utilizar cada uno?

**MIENTRAS:** cuando queremos seguir solicitando una contraseña hasta que sea correcta.

**PARA:** cuando necesitamos mostrar los números del 1 al 10.

Ambas estructuras permiten repetir instrucciones, pero utilizan mecanismos de control diferentes.

## 11. Errores habituales en los bucles

La clase presenta tres problemas principales.

### 11.1. Bucle infinito por no actualizar la variable

**Ejemplo incorrecto:**

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
FinMientras
```

**Problema:** la variable nunca cambia de valor.

Como siempre será igual a 1, la condición continuará siendo verdadera.

**Corrección:**

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador + 1
FinMientras
```

Ahora el contador cambia y el bucle puede finalizar.

### 11.2. Condición incorrecta

**Ejemplo:**

```pseudocode
contador <- 10

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador + 1
FinMientras
```

**Problema:** la condición es falsa desde el comienzo.

Por tanto, el bucle no se ejecuta.

### 11.3. Actualizar en dirección equivocada

**Ejemplo incorrecto:**

```pseudocode
contador <- 1

Mientras contador <= 5 Hacer
    Escribir contador
    contador <- contador - 1
FinMientras
```

**Problema:** el contador disminuye cuando debería aumentar para superar el límite 5.

Esto puede provocar un bucle infinito.

**Corrección:**

```pseudocode
contador <- contador + 1
```

### Concepto fundamental

Un bucle bien diseñado debe tener una posibilidad real de finalizar.

## 12. Cómo revisar un bucle

Para comprobar que funciona correctamente, conviene responder las siguientes preguntas:

1. ¿Cuál es el valor inicial de la variable?
2. ¿Qué condición determina la repetición?
3. ¿Qué instrucciones se ejecutan?
4. ¿Cómo cambia la variable de control?
5. ¿Cuándo deja de cumplirse la condición?
6. ¿Existe la posibilidad de un bucle infinito?

Este procedimiento ayuda a identificar errores antes de ejecutar un algoritmo.

## 13. Ejercicios propuestos

La clase incluye cinco ejercicios prácticos.

### Ejercicio 01 — Números del 1 al 10

**Objetivo:** crear un programa que muestre los números del 1 al 10 utilizando `Mientras`.

**Conceptos:** contador, condición e incremento.

### Ejercicio 02 — Números del 5 al 1

**Objetivo:** mostrar los números del 5 al 1.

**Conceptos:** repetición, contador y decremento.

### Ejercicio 03 — Contraseña maestra

**Objetivo:** solicitar una contraseña repetidamente hasta que el usuario introduzca `"contraseña maestra"`.

**Conceptos:** comparación de cadenas y bucles controlados por condiciones.

### Ejercicio 04 — Identificar un bucle infinito

**Objetivo:** analizar un algoritmo que comienza con un contador igual a 1 y utiliza `Mientras contador <= 5`, pero no modifica el contador.

**Problema:** ausencia de actualización de la variable de control.

**Corrección:** incorporar un incremento que permita alcanzar la condición de salida.

### Ejercicio 05 — Identificar una condición inicialmente falsa

**Objetivo:** analizar por qué un algoritmo con contador inicial igual a 10 no entra en un bucle cuya condición es `contador <= 5`.

**Problema:** la condición no se cumple desde el comienzo.

**Concepto:** evaluación de la condición antes de la primera iteración.

## 14. Buenas prácticas

Para trabajar correctamente con bucles:

- Inicializar las variables de control.
- Utilizar condiciones claras.
- Comprobar los valores iniciales.
- Actualizar las variables en la dirección correcta.
- Evitar repeticiones infinitas.
- Mantener una indentación adecuada.
- Utilizar nombres descriptivos.
- Comprobar los valores límite.
- Elegir la estructura repetitiva más apropiada.
- Revisar el funcionamiento mediante pruebas paso a paso.

## 15. Principales aprendizajes

- Un bucle permite repetir instrucciones.
- La repetición evita escribir varias veces el mismo código.
- `Mientras` ejecuta instrucciones mientras una condición sea verdadera.
- La condición de `Mientras` se comprueba antes de cada iteración.
- Un contador puede controlar el número de repeticiones.
- Los contadores pueden incrementarse o decrementarse.
- Los bucles también pueden depender de cadenas de texto.
- `Para` permite recorrer un rango utilizando un paso definido.
- La actualización de las variables es fundamental para controlar la repetición.
- Las condiciones incorrectas pueden impedir la ejecución.
- Los bucles infinitos aparecen cuando la condición nunca deja de cumplirse.
- Los diagramas de flujo permiten visualizar los ciclos de repetición.

## 16. Conclusión

La clase introduce los bucles como estructuras fundamentales para automatizar la repetición de instrucciones dentro de un algoritmo.

Se estudia principalmente el funcionamiento de `Mientras`, el papel de los contadores, el control de las condiciones y los errores que pueden provocar bucles infinitos o impedir su ejecución.

También se presenta el bucle `Para` como una alternativa para recorrer rangos de valores.

**Aprendizaje principal:** para construir correctamente un bucle debemos comprender su condición, su variable de control y cómo cambia esa variable hasta alcanzar la finalización.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos de repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

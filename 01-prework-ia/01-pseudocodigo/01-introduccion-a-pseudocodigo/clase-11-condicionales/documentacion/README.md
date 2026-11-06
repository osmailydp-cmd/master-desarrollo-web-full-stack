# Día 10 — Condicionales: aprendamos a que nuestro programa decida

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Aprender a utilizar estructuras condicionales para que un programa pueda ejecutar diferentes instrucciones según el resultado de una condición.

Se estudian tres tipos de condicionales:

- Condicional simple: `Si...Entonces`.
- Condicional doble: `Si...Entonces...SiNo`.
- Condicional múltiple: `Si...SiNo Si...SiNo`.

También se explica cómo ordenar correctamente las condiciones y evitar errores lógicos.

## 2. ¿Qué es una estructura condicional?

Una estructura condicional permite controlar qué instrucciones ejecuta un programa según una expresión lógica.

Hasta ahora hemos aprendido a:

- Leer datos.
- Mostrar información.
- Realizar cálculos.
- Comparar valores.

Con los condicionales podemos utilizar esas comparaciones para **tomar decisiones dentro de un algoritmo**.

### Ejemplos cotidianos

- Si una persona es mayor de edad, mostrar un mensaje.
- Si un alumno aprueba, mostrar «Aprobado»; de lo contrario, «Suspenso».
- Según la nota obtenida, mostrar una calificación diferente.

Las condiciones se evalúan como `Verdadero` o `Falso`.

## 3. Condicional simple — SI

Se utiliza cuando queremos ejecutar una acción solamente si se cumple una condición.

### Estructura

```pseudocode
Si condicion Entonces
    // Instrucciones si la condición es verdadera
FinSi
```

### Ejemplo — Mayoría de edad

```pseudocode
Algoritmo mayor_edad
    Definir edad Como Entero

    Escribir "Introduce tu edad: "
    Leer edad

    Si edad >= 18 Entonces
        Escribir "Eres mayor de edad"
    FinSi
FinAlgoritmo
```

### Funcionamiento

1. El usuario introduce su edad.
2. Se evalúa la condición `edad >= 18`.
3. Si es verdadera, se muestra el mensaje.
4. Si es falsa, se omite el bloque condicional.
5. El algoritmo continúa hasta finalizar.

### Ejemplo de resultados

| Edad | ¿Se cumple la condición? | Resultado |
|---|---|---|
| 15 | Falso | No muestra el mensaje |
| 18 | Verdadero | Eres mayor de edad |
| 25 | Verdadero | Eres mayor de edad |

**Concepto aprendido:** el condicional simple ejecuta instrucciones únicamente cuando la condición es verdadera.

## 4. Condicional doble — SI / SINO

Se utiliza cuando existen dos acciones alternativas:

- Una cuando la condición es verdadera.
- Otra cuando la condición es falsa.

### Estructura

```pseudocode
Si condicion Entonces
    // Instrucciones si es verdadera
SiNo
    // Instrucciones si es falsa
FinSi
```

### Ejemplo — Aprobado o suspenso

```pseudocode
Algoritmo aprobado_suspenso
    Definir nota Como Real

    Escribir "Introduce tu nota: "
    Leer nota

    Si nota >= 5 Entonces
        Escribir "Has aprobado"
    SiNo
        Escribir "Has suspendido"
    FinSi
FinAlgoritmo
```

### Funcionamiento

Si la nota es mayor o igual que 5, se ejecuta el bloque `Si`.

Si la nota es inferior a 5, se ejecuta el bloque `SiNo`.

| Nota | Resultado |
|---|---|
| 3 | Has suspendido |
| 5 | Has aprobado |
| 8 | Has aprobado |

**Concepto aprendido:** en un condicional doble se ejecuta una de las dos ramas, nunca ambas.

## 5. Diferencias entre condicional simple y doble

| Característica | Condicional simple | Condicional doble |
|---|---|---|
| Estructura | `Si...FinSi` | `Si...SiNo...FinSi` |
| Condición verdadera | Ejecuta el bloque `Si` | Ejecuta el bloque `Si` |
| Condición falsa | Omite el bloque | Ejecuta el bloque `SiNo` |
| Alternativas | Una acción condicionada | Dos posibles acciones |

### Ejemplo cotidiano

**Condicional simple:**

Si llueve, llevar paraguas.

**Condicional doble:**

Si llueve, llevar paraguas; si no llueve, no llevarlo.

La diferencia fundamental es la existencia de una alternativa explícita cuando la condición es falsa.

## 6. Condicional múltiple — SI / SINO SI / SINO

Se utiliza cuando existen más de dos posibles resultados.

Permite evaluar varias condiciones en un orden determinado.

### Estructura en PSeInt

```pseudocode
Si condicion1 Entonces
    // Primera opción
SiNo
    Si condicion2 Entonces
        // Segunda opción
    SiNo
        // Opción restante
    FinSi
FinSi
```

En PSeInt, las ramas `SiNo Si` se representan mediante condicionales anidados.

### Ejemplo — Clasificación de notas

```pseudocode
Algoritmo clasificacion_notas
    Definir nota Como Real

    Escribir "Introduce tu nota: "
    Leer nota

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
FinAlgoritmo
```

### Clasificación

| Nota | Calificación |
|---|---|
| Menor que 5 | Suspenso |
| Desde 5 hasta menos de 7 | Aprobado |
| Desde 7 hasta menos de 9 | Notable |
| 9 o superior | Sobresaliente |

### Funcionamiento

1. Se comprueba si la nota es mayor o igual que 9.
2. Si no se cumple, se comprueba si es mayor o igual que 7.
3. Si tampoco se cumple, se comprueba si es mayor o igual que 5.
4. Si ninguna condición se cumple, se muestra «Suspenso».

**Concepto aprendido:** el condicional múltiple permite clasificar información mediante varias alternativas.

## 7. La importancia del orden de las condiciones

En los condicionales múltiples, el orden de las comprobaciones es fundamental.

### Ejemplo de orden incorrecto

```pseudocode
Si nota >= 5 Entonces
    Escribir "Aprobado"
SiNo
    Si nota >= 9 Entonces
        Escribir "Sobresaliente"
    FinSi
FinSi
```

**Problema:** si la nota es 9, también cumple `nota >= 5`.

Por tanto, se ejecutará la primera condición y no llegará a comprobarse la segunda.

### Orden correcto

```pseudocode
Si nota >= 9 Entonces
    Escribir "Sobresaliente"
SiNo
    Si nota >= 5 Entonces
        Escribir "Aprobado"
    FinSi
FinSi
```

En este ejemplo simplificado, primero se comprueba el rango más alto.

### Regla fundamental

**En una cadena de condicionales anidados `Si / SiNo Si / SiNo`, cuando se encuentra la primera condición verdadera, las alternativas restantes ya no se evalúan.**

Por eso debemos ordenar las condiciones según la lógica del problema.

## 8. Condicionales y diagramas de flujo

Los diagramas de flujo permiten visualizar las decisiones dentro de un algoritmo.

En las páginas 11, 17 y 23 del material se muestran diagramas correspondientes a los condicionales simple, doble y múltiple.

### Representación de una decisión

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
         Mostrar     Mostrar
         "Mayor"     "Menor"
             \      /
              \    /
                v
               FIN
```

### Elementos principales

- **Rombo:** representa la evaluación de una condición.
- **Flechas:** indican el camino de ejecución.
- **Rectángulo:** representa una operación.
- **Paralelogramo:** representa entrada o salida de información.

Los diagramas ayudan a identificar las diferentes rutas que puede seguir un programa.

## 9. Errores habituales con condicionales

La clase identifica cinco errores importantes.

### 9.1. Confundir asignación con comparación

**Incorrecto:**

```pseudocode
Si edad <- 18 Entonces
```

El operador `<-` se utiliza para asignar valores, no para comparar.

**Correcto:**

```pseudocode
Si edad = 18 Entonces
```

### 9.2. Olvidar FinSi

Toda estructura `Si` debe cerrarse correctamente.

```pseudocode
Si edad >= 18 Entonces
    Escribir "Mayor de edad"
FinSi
```

En estructuras anidadas, debemos cerrar cada bloque condicional.

### 9.3. Ordenar incorrectamente las condiciones

**Incorrecto para clasificar notas:**

```pseudocode
Si nota >= 5 Entonces
    Escribir "Aprobado"
SiNo
    Si nota >= 9 Entonces
        Escribir "Sobresaliente"
    FinSi
FinSi
```

Una nota de 9 entraría en el primer bloque y se clasificaría como «Aprobado».

La solución consiste en comprobar primero los valores más altos cuando se utilizan condiciones de este tipo.

### 9.4. Crear condiciones que se superponen

**Ejemplo:**

```pseudocode
Si edad >= 18 Entonces
    Escribir "Adulto"
SiNo
    Si edad >= 65 Entonces
        Escribir "Persona jubilada"
    FinSi
FinSi
```

**Problema:** una persona de 70 años cumple también `edad >= 18`, por lo que nunca llegará a la segunda comprobación.

**Orden corregido:**

```pseudocode
Si edad >= 65 Entonces
    Escribir "Persona jubilada"
SiNo
    Si edad >= 18 Entonces
        Escribir "Adulto"
    SiNo
        Escribir "Menor de edad"
    FinSi
FinSi
```

### 9.5. No comprender qué rama se ejecuta

En una cadena condicional se selecciona solamente la primera alternativa válida.

Una vez ejecutada esa rama, las demás alternativas de la misma cadena se omiten.

**Concepto aprendido:** las condiciones deben organizarse con un orden lógico, evitando que una condición general impida comprobar otra más específica.

## 10. Comparación de los tres tipos de condicionales

| Tipo | ¿Cuándo se utiliza? | Ejemplo |
|---|---|---|
| Simple | Cuando se necesita actuar solo si se cumple una condición | Mostrar mensaje si es mayor de edad |
| Doble | Cuando existen dos alternativas | Aprobado o suspenso |
| Múltiple | Cuando existen varias posibilidades | Clasificación de notas |

La elección depende del número de alternativas que necesite resolver el algoritmo.

## 11. Ejercicios propuestos

La clase incluye tres ejercicios prácticos.

### Ejercicio 01 — Clasificación por edad

**Objetivo:** solicitar la edad de una persona y mostrar una clasificación.

| Edad | Resultado |
|---|---|
| Menor de 18 años | Menor de edad |
| Entre 18 y 64 años | Adulto |
| 65 años o más | Persona jubilada o en edad de jubilación |

**Conceptos:** condicionales múltiples, comparación de valores y orden de evaluación.

### Ejercicio 02 — Clasificación de temperatura

**Objetivo:** solicitar la temperatura actual y mostrar un mensaje según el valor introducido.

| Temperatura | Resultado |
|---|---|
| Menor de 10 °C | Hace frío |
| Entre 10 y 24 °C | Temperatura agradable |
| 25 °C o más | Hace calor |

**Conceptos:** operadores relacionales y condicionales múltiples.

*Nota de estudio:* el enunciado expresa los límites con grados enteros. Si se admiten temperaturas decimales, conviene definir explícitamente cómo clasificar valores entre 24 y 25 °C.

### Ejercicio 03 — Tipo de entrada

**Objetivo:** solicitar la edad del usuario y determinar el tipo de entrada correspondiente.

| Edad | Tipo de entrada |
|---|---|
| Menor de 12 años | Entrada infantil |
| 65 años o más | Entrada reducida |
| Cualquier otro caso | Entrada general |

**Conceptos:** condicionales múltiples, rangos de edad y selección de alternativas.

## 12. Buenas prácticas

Al desarrollar algoritmos con condicionales conviene:

- Utilizar condiciones claras.
- Comprobar correctamente los límites.
- Diferenciar asignación de comparación.
- Mantener una indentación adecuada.
- Cerrar cada bloque con `FinSi`.
- Ordenar las condiciones según su prioridad.
- Evitar condiciones contradictorias.
- Comprobar los resultados en los valores límite.
- Probar diferentes entradas para verificar todas las alternativas.

### Pruebas recomendadas

En un algoritmo que clasifica edades, comprobar:

- Un valor inferior al límite.
- Un valor exactamente igual al límite.
- Un valor superior al límite.

Por ejemplo, para `edad >= 18`, probar con 17, 18 y 19 años.

Esto permite detectar errores frecuentes en los operadores relacionales.

## 13. Principales aprendizajes

- Los condicionales permiten que los programas tomen decisiones.
- Las condiciones se evalúan como `Verdadero` o `Falso`.
- El condicional simple ejecuta una acción si se cumple una condición.
- El condicional doble permite elegir entre dos alternativas.
- El condicional múltiple permite seleccionar entre varios casos.
- En una cadena condicional se ejecuta la primera alternativa válida.
- El orden de las condiciones puede modificar el resultado.
- Las condiciones generales pueden impedir alcanzar otras más específicas.
- `Si` y `SiNo` permiten controlar el flujo del programa.
- Los diagramas de flujo facilitan la visualización de decisiones.
- Las pruebas de límites ayudan a detectar errores lógicos.

## 14. Conclusión

La clase introduce las estructuras condicionales como una herramienta fundamental para controlar el comportamiento de los algoritmos.

Se estudian los condicionales simples, dobles y múltiples, sus diferencias y las situaciones en que conviene utilizar cada uno.

También se analiza la importancia del orden de evaluación y los errores que pueden provocar resultados incorrectos.

**Aprendizaje principal:** las estructuras condicionales permiten que un algoritmo seleccione diferentes caminos de ejecución según los datos y las condiciones evaluadas.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks, con ejemplos explicativos adaptados para el repaso.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

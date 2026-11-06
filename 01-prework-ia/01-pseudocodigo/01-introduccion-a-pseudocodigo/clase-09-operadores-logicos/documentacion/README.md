# Día 8 — Operadores relacionales y lógicos

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender cómo utilizar operadores relacionales y lógicos para comparar valores y evaluar condiciones en PSeInt.

Aprender a construir expresiones que devuelven resultados booleanos (`Verdadero` o `Falso`), combinar condiciones y respetar la prioridad de los operadores.

## 2. ¿Qué son los operadores relacionales?

Los operadores relacionales permiten comparar dos valores para determinar la relación que existe entre ellos.

Estas comparaciones responden preguntas como:

- ¿Son iguales?
- ¿Son diferentes?
- ¿Uno es mayor que otro?
- ¿Uno es menor que otro?
- ¿Un valor cumple determinado límite?

El resultado de una comparación siempre es de tipo **Lógico**, es decir, `Verdadero` o `Falso`.

### Ejemplo

```pseudocode
edad >= 18
```

Si `edad = 20`, el resultado será `Verdadero`.

Si `edad = 15`, el resultado será `Falso`.

## 3. Operadores relacionales en PSeInt

| Operador | Significado | Ejemplo | Resultado |
|---|---|---|---|
| `=` | Igual que | `5 = 5` | Verdadero |
| `<>` | Distinto de | `5 <> 3` | Verdadero |
| `<` | Menor que | `3 < 5` | Verdadero |
| `<=` | Menor o igual que | `5 <= 5` | Verdadero |
| `>` | Mayor que | `8 > 10` | Falso |
| `>=` | Mayor o igual que | `18 >= 18` | Verdadero |

### Ejemplo — Comprobar la mayoría de edad

```pseudocode
Algoritmo comprobarEdad
    Definir edad Como Entero
    Definir esMayorDeEdad Como Logico

    Escribir "Introduce tu edad: "
    Leer edad

    esMayorDeEdad = edad >= 18

    Escribir "¿Es mayor de edad? ", esMayorDeEdad
FinAlgoritmo
```

**Concepto aprendido:** almacenar el resultado de una comparación en una variable lógica.

## 4. ¿Qué son los operadores lógicos?

Los operadores lógicos permiten combinar condiciones o modificar su resultado.

Mientras los operadores relacionales comparan valores, los operadores lógicos trabajan con expresiones booleanas.

Los tres operadores estudiados son:

| Operador | Equivalente | Función |
|---|---|---|
| `Y` | AND | Exige que todas las condiciones sean verdaderas |
| `O` | OR | Exige que al menos una condición sea verdadera |
| `NO` | NOT | Invierte el resultado lógico |

## 5. Operador lógico Y (AND)

El operador `Y` devuelve `Verdadero` únicamente cuando todas las condiciones evaluadas son verdaderas.

### Ejemplo — Comprobar un rango de edad

```pseudocode
edad >= 18 Y edad <= 65
```

La expresión comprueba que la edad se encuentre entre 18 y 65 años, ambos incluidos.

### Tabla de verdad del operador Y

| Condición A | Condición B | A Y B |
|---|---|---|
| Verdadero | Verdadero | Verdadero |
| Verdadero | Falso | Falso |
| Falso | Verdadero | Falso |
| Falso | Falso | Falso |

### Ejemplo en PSeInt

```pseudocode
Algoritmo comprobarRangoEdad
    Definir edad Como Entero
    Definir cumpleRango Como Logico

    Escribir "Introduce tu edad: "
    Leer edad

    cumpleRango = edad >= 18 Y edad <= 65

    Escribir "¿Cumple el rango? ", cumpleRango
FinAlgoritmo
```

**Concepto aprendido:** utilizar `Y` cuando varias condiciones deben cumplirse simultáneamente.

## 6. Operador lógico O (OR)

El operador `O` devuelve `Verdadero` cuando al menos una de las condiciones es verdadera.

### Ejemplo — Edad o condición de socio

```pseudocode
edad >= 18 O esSocio = Verdadero
```

La expresión será verdadera si la persona cumple al menos una de estas condiciones:

- Tiene 18 años o más.
- Es socia.

### Tabla de verdad del operador O

| Condición A | Condición B | A O B |
|---|---|---|
| Verdadero | Verdadero | Verdadero |
| Verdadero | Falso | Verdadero |
| Falso | Verdadero | Verdadero |
| Falso | Falso | Falso |

### Ejemplo en PSeInt

```pseudocode
Algoritmo comprobarAcceso
    Definir edad Como Entero
    Definir esSocio, accesoPermitido Como Logico

    edad = 16
    esSocio = Verdadero

    accesoPermitido = edad >= 18 O esSocio

    Escribir "¿Acceso permitido? ", accesoPermitido
FinAlgoritmo
```

**Resultado:** `Verdadero`.

Aunque la edad es menor de 18 años, la segunda condición es verdadera.

**Concepto aprendido:** utilizar `O` cuando es suficiente cumplir una de varias condiciones.

## 7. Operador lógico NO (NOT)

El operador `NO` invierte el resultado de una expresión lógica.

- Si una condición es `Verdadero`, `NO` devuelve `Falso`.
- Si una condición es `Falso`, `NO` devuelve `Verdadero`.

### Ejemplo

```pseudocode
NO (edad >= 18)
```

Si `edad = 15`:

- `edad >= 18` es `Falso`.
- `NO (edad >= 18)` es `Verdadero`.

### Tabla de verdad del operador NO

| Condición | NO Condición |
|---|---|
| Verdadero | Falso |
| Falso | Verdadero |

### Ejemplo en PSeInt

```pseudocode
Algoritmo comprobarMenorEdad
    Definir edad Como Entero
    Definir esMenor Como Logico

    Escribir "Introduce tu edad: "
    Leer edad

    esMenor = NO (edad >= 18)

    Escribir "¿Es menor de edad? ", esMenor
FinAlgoritmo
```

**Concepto aprendido:** utilizar `NO` para negar una condición.

## 8. Prioridad de los operadores lógicos

Cuando una expresión combina varios operadores, debemos respetar su orden de evaluación.

La clase establece esta prioridad:

| Prioridad | Operador |
|---|---|
| 1 | `NO` |
| 2 | `Y` |
| 3 | `O` |

### Ejemplo

```pseudocode
Verdadero O Falso Y Falso
```

Primero se evalúa:

```pseudocode
Falso Y Falso
```

Resultado: `Falso`.

Después:

```pseudocode
Verdadero O Falso
```

**Resultado final:** `Verdadero`.

### Uso de paréntesis

Los paréntesis permiten modificar o aclarar el orden de evaluación.

```pseudocode
(Verdadero O Falso) Y Falso
```

**Resultado:** `Falso`.

**Concepto importante:** el uso de paréntesis mejora la claridad de las expresiones lógicas y evita interpretaciones incorrectas.

## 9. Diferencia entre los operadores Y, O y NO

| Operador | ¿Cuándo devuelve Verdadero? |
|---|---|
| `Y` | Cuando todas las condiciones son verdaderas |
| `O` | Cuando al menos una condición es verdadera |
| `NO` | Cuando la condición original es falsa |

### Ejemplo comparativo

Supongamos:

```pseudocode
edad = 20
tieneCarnet = Falso
```

**Con Y:**

```pseudocode
edad >= 18 Y tieneCarnet
```

Resultado: `Falso`.

**Con O:**

```pseudocode
edad >= 18 O tieneCarnet
```

Resultado: `Verdadero`.

**Con NO:**

```pseudocode
NO tieneCarnet
```

Resultado: `Verdadero`.

Las mismas variables pueden producir resultados diferentes según el operador utilizado.

## 10. Errores habituales

La clase presenta cuatro errores frecuentes al trabajar con condiciones.

### 10.1. Confundir Y con O

**Para comprobar que una edad está entre 18 y 65 años:**

```pseudocode
edad >= 18 Y edad <= 65
```

Esta expresión es correcta porque exige cumplir ambos límites.

Utilizar `O` en su lugar:

```pseudocode
edad >= 18 O edad <= 65
```

No comprueba correctamente ese rango, ya que permite edades fuera de los límites.

### 10.2. No utilizar paréntesis con NO

**Expresión poco clara:**

```pseudocode
NO edad >= 18
```

**Forma recomendada:**

```pseudocode
NO (edad >= 18)
```

Los paréntesis indican que debemos negar el resultado completo de la comparación.

### 10.3. Confundir menor que con menor o igual que

```pseudocode
edad < 18
```

Incluye únicamente edades inferiores a 18.

```pseudocode
edad <= 18
```

También incluye el valor 18.

**Concepto importante:** los operadores `<` y `<=` no representan la misma condición.

### 10.4. Crear condiciones contradictorias

**Ejemplo:**

```pseudocode
edad >= 18 Y edad < 10
```

La condición nunca puede ser verdadera para una misma edad.

No existe un número que sea simultáneamente mayor o igual que 18 y menor que 10.

**Concepto aprendido:** comprobar que las condiciones tengan sentido lógico.

## 11. Ejercicios propuestos

La clase incluye tres ejercicios prácticos para aplicar operadores relacionales y lógicos.

### Ejercicio 01 — Comprobar mayoría de edad

**Objetivo:**

Solicitar la edad del usuario y mostrar el resultado lógico de la expresión:

```pseudocode
edad >= 18
```

**Conceptos:** operador relacional `>=` y valores booleanos.

### Ejercicio 02 — Número entre 10 y 20

**Objetivo:**

Solicitar un número y comprobar si está comprendido entre 10 y 20, ambos incluidos.

**Expresión:**

```pseudocode
numero >= 10 Y numero <= 20
```

**Conceptos:** operadores relacionales, operador lógico `Y` y límites incluidos.

### Ejercicio 03 — Nota y recuperación

**Objetivo:**

Solicitar la nota de un alumno y preguntar si ha realizado recuperación, con respuesta `"si"` o `"no"`.

Mostrar el resultado de la expresión:

```pseudocode
nota >= 5 O recuperacion = "si"
```

**Conceptos:** comparaciones, operadores lógicos y combinación de condiciones.

## 12. Principales aprendizajes

- Los operadores relacionales permiten comparar valores.
- Las comparaciones devuelven resultados lógicos: `Verdadero` o `Falso`.
- `=` permite comprobar igualdad.
- `<>` permite comprobar desigualdad.
- `<`, `<=`, `>` y `>=` permiten establecer límites y rangos.
- Los operadores lógicos combinan condiciones.
- `Y` exige que todas las condiciones sean verdaderas.
- `O` exige que al menos una condición sea verdadera.
- `NO` invierte el resultado de una expresión.
- Las tablas de verdad ayudan a comprender los operadores.
- La prioridad lógica es `NO`, después `Y` y finalmente `O`.
- Los paréntesis permiten agrupar expresiones.
- Las condiciones deben tener coherencia lógica.

## 13. Conclusión

Esta clase introduce los operadores relacionales y lógicos como herramientas fundamentales para comparar información y construir condiciones.

Se estudia cómo funcionan los operadores de comparación, cómo combinar expresiones mediante `Y` y `O`, y cómo invertir resultados utilizando `NO`.

También se presentan las tablas de verdad, la prioridad de los operadores y los errores habituales.

**Aprendizaje principal:** los operadores relacionales y lógicos permiten que los algoritmos evalúen condiciones y preparan la base para desarrollar programas capaces de tomar decisiones.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

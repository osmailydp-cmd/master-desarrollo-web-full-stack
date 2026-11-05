# Día 6 — Variables

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Comprender qué son las variables, para qué sirven y cómo utilizarlas en los algoritmos desarrollados con PSeInt.

Aprender a declarar variables, asignarles valores, identificar sus tipos de datos y aplicar buenas prácticas de programación.

## 2. ¿Qué es la memoria de un ordenador?

La memoria permite almacenar información que utilizan los programas.

La clase diferencia dos formas de almacenamiento:

| Tipo | Característica | Ejemplo |
|---|---|---|
| Permanente | Conserva la información después de apagar el equipo | Archivos almacenados |
| No permanente | Almacena temporalmente información durante la ejecución | Datos utilizados por programas |

Esta distinción permite comprender que los programas necesitan espacios donde guardar y manipular información.

## 3. ¿Qué es una variable?

Una **variable** es un espacio identificado mediante un nombre que permite almacenar información.

Podemos imaginarla como una caja etiquetada que contiene un valor.

### ¿Para qué sirven las variables?

- Guardar información.
- Recuperarla posteriormente.
- Modificar su contenido.
- Mostrar valores en pantalla.
- Realizar operaciones.
- Evaluar condiciones y tomar decisiones.

### Ejemplo conceptual

```text
Variable: edad
Valor: 25
Tipo de dato: Entero
```

La variable `edad` permite almacenar y utilizar el valor `25` dentro de un algoritmo.

## 4. Declaración y asignación de variables

Para trabajar con variables en PSeInt debemos distinguir dos operaciones fundamentales.

### 4.1. Declarar una variable

Consiste en indicar su nombre y tipo de dato.

```pseudocode
Definir edad Como Entero
```

En este ejemplo:

- `Definir`: instrucción utilizada para declarar.
- `edad`: identificador de la variable.
- `Entero`: tipo de dato que almacenará.

### 4.2. Asignar un valor

Consiste en almacenar información dentro de la variable.

```pseudocode
edad = 25
```

También puede utilizarse el operador de asignación:

```pseudocode
edad <- 25
```

Ambas formas se presentan en el material de la clase para asignar valores en PSeInt.

### 4.3. Asignar valores mediante LEER

La instrucción `Leer` permite almacenar en una variable el dato introducido por el usuario.

```pseudocode
Algoritmo solicitarEdad
    Definir edad Como Entero

    Escribir "Introduce tu edad: "
    Leer edad

    Escribir "Tu edad es: ", edad
FinAlgoritmo
```

**Diferencia importante:**

- `edad = 25`: asigna directamente un valor.
- `Leer edad`: recibe un valor introducido durante la ejecución.

## 5. Tipos de datos básicos

La clase presenta tres grandes categorías: texto, números y booleanos.

| Categoría | Descripción | Ejemplos |
|---|---|---|
| Texto | Información formada por caracteres | Nombres, ciudades, mensajes |
| Números | Valores utilizados para cantidades y operaciones | Edad, precios, notas |
| Booleanos | Valores que representan verdadero o falso | Condiciones y decisiones |

### 5.1. Variables de texto

Se utilizan para almacenar palabras, nombres y mensajes.

```pseudocode
Definir nombre Como Caracter

nombre = "Ana"
```

### 5.2. Variables numéricas

Se utilizan para almacenar valores matemáticos.

**Entero:** representa números sin decimales.

```pseudocode
Definir edad Como Entero

edad = 20
```

**Real:** permite almacenar números con decimales.

```pseudocode
Definir precio Como Real

precio = 19.50
```

### 5.3. Variables lógicas

Almacenan valores de verdadero o falso.

```pseudocode
Definir puedeEntrar Como Logico

puedeEntrar = Verdadero
```

Se utilizan principalmente para representar condiciones y resultados de comparaciones.

## 6. Buenas prácticas al utilizar variables

La clase establece recomendaciones para escribir código más claro.

### Reglas principales

- Utilizar nombres descriptivos.
- Elegir identificadores que expresen el significado del dato.
- Mantener coherencia en la nomenclatura.
- Evitar espacios.
- Evitar acentos en los identificadores.
- Utilizar una variable para representar un dato o propósito concreto.
- Declarar las variables antes de utilizarlas.

### Ejemplos

| Poco recomendable | Recomendado |
|---|---|
| `a` | `edad` |
| `x` | `precioProducto` |
| `nombre persona` | `nombrePersona` |
| `número` | `numero` |
| `dato1` | `ciudadNacimiento` |

Los nombres claros facilitan la comprensión y el mantenimiento de los algoritmos.

## 7. Diferencia entre texto literal y variable

Uno de los conceptos fundamentales es comprender cómo PSeInt interpreta las comillas.

### Mostrar un texto literal

```pseudocode
Escribir "nombre"
```

**Resultado:**

```text
nombre
```

### Mostrar el contenido de una variable

```pseudocode
Algoritmo ejemplo
    Definir nombre Como Caracter

    nombre = "Ana"

    Escribir nombre
FinAlgoritmo
```

**Resultado:**

```text
Ana
```

**Regla importante:** las comillas indican que queremos mostrar un texto literal; sin comillas, PSeInt interpreta `nombre` como el identificador de una variable.

## 8. Mostrar textos y variables en una instrucción

PSeInt permite combinar textos literales y valores de variables mediante `Escribir`.

### Ejemplo

```pseudocode
Algoritmo saludo
    Definir nombre Como Caracter

    nombre = "Ana"

    Escribir "Hola ", nombre
FinAlgoritmo
```

**Resultado:**

```text
Hola Ana
```

### Explicación

- `"Hola "` es una cadena literal.
- `nombre` contiene el dato almacenado.
- La coma separa los elementos que se mostrarán.

La clase utiliza este ejemplo para diferenciar el uso de comillas y variables durante la construcción de mensajes.

## 9. Las variables pueden cambiar su valor

Una característica fundamental de las variables es que pueden recibir nuevos valores durante la ejecución.

### Ejemplo

```pseudocode
Algoritmo cambiarEdad
    Definir edad Como Entero

    edad = 18
    Escribir edad

    edad = 25
    Escribir edad
FinAlgoritmo
```

**Resultado:**

```text
18
25
```

### Explicación

Inicialmente, `edad` almacena el valor `18`.

Posteriormente, se le asigna `25`, sustituyendo su valor anterior.

**Concepto importante:** una nueva asignación actualiza el contenido de una variable.

## 10. Errores habituales con variables

La clase presenta siete demostraciones para comprender errores frecuentes y comportamientos importantes.

| Demostración | Concepto |
|---|---|
| 1. Variable sin valor | Evitar utilizar datos sin inicializar |
| 2. Texto frente a variable | Diferenciar identificadores y cadenas literales |
| 3. Construcción de mensajes | Combinar textos y valores correctamente |
| 4. Variables que cambian | Comprender la reasignación |
| 5. Asignación sin LEER | Guardar valores directamente |
| 6. Identificadores con acentos | Respetar las reglas de nomenclatura del curso |
| 7. Orden incorrecto | Leer o asignar valores antes de utilizarlos |

### Ejemplo de orden incorrecto

```pseudocode
Algoritmo ejemplo
    Definir nombre Como Caracter

    Escribir nombre
    Leer nombre
FinAlgoritmo
```

El programa intenta mostrar la variable antes de recibir un valor.

### Orden correcto

```pseudocode
Algoritmo ejemplo
    Definir nombre Como Caracter

    Leer nombre
    Escribir nombre
FinAlgoritmo
```

Primero se recibe el dato y después se muestra.

## 11. Ejercicios propuestos

La clase presenta tres ejercicios prácticos para reforzar el uso de variables.

### Ejercicio 01 — Presentación personal

**Objetivo:** solicitar el nombre y la ciudad del usuario y mostrar un mensaje personalizado.

**Ejemplo de salida:**

```text
Hola Marta, vives en Valencia
```

**Conceptos:** variables de texto, `Leer`, `Escribir` y construcción de mensajes.

### Ejercicio 02 — Información del alumno

**Objetivo:** solicitar nombre, edad y curso de un alumno.

**Ejemplo de salida:**

```text
Ana tiene 20 años y está en 2º curso
```

**Conceptos:** diferentes tipos de datos, entrada y salida de información.

### Ejercicio 03 — Tarjeta de usuario

**Objetivo:** solicitar nombre, ciudad, edad y profesión, y presentar la información de forma organizada.

**Ejemplo de salida:**

```text
Perfil:
Nombre: Marta
Ciudad: Valencia
Edad: 25
Profesión: Diseñadora
```

**Conceptos:** declaración de variables, almacenamiento de datos y presentación estructurada.

## 12. Principales aprendizajes

- Las variables permiten almacenar información durante la ejecución de un programa.
- Cada variable tiene un nombre y un tipo de dato.
- En PSeInt se declaran mediante `Definir`.
- Los valores pueden asignarse directamente o recibirse mediante `Leer`.
- Las variables pueden modificar su contenido.
- Los tipos básicos estudiados son texto, números y booleanos.
- Los textos literales se escriben entre comillas.
- Los identificadores de variables se utilizan sin comillas.
- Es importante respetar el orden de las instrucciones.
- Los nombres descriptivos mejoran la legibilidad del código.
- Las variables deben declararse e inicializarse antes de utilizar sus valores.

## 13. Conclusión

La clase introduce las variables como uno de los elementos fundamentales de cualquier programa.

Se aprende a declararlas, asignar valores, utilizar distintos tipos de datos y comprender cómo cambian durante la ejecución.

También se estudian errores frecuentes y buenas prácticas para escribir algoritmos más claros y organizados.

**Aprendizaje principal:** las variables permiten almacenar y manipular información, haciendo posible que los algoritmos trabajen con diferentes datos y produzcan resultados dinámicos.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

# Día 5 — PSeInt y reglas de pseudocódigo

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Conocer las principales áreas de la interfaz de PSeInt, comprender la estructura básica de un programa y aprender buenas prácticas para escribir pseudocódigo de forma clara y organizada.

También se introducen los conceptos de archivo, directorio y extensión, necesarios para guardar correctamente los algoritmos.

## 2. Interfaz de PSeInt

PSeInt dispone de diferentes áreas que permiten desarrollar, ejecutar y analizar algoritmos.

| Área | Función |
|---|---|
| Zona de código | Escribir y modificar algoritmos |
| Iconos de acción | Acceder a las principales herramientas |
| Consola de ejecución | Visualizar mensajes y resultados |
| Zona de diagramas | Representar gráficamente los algoritmos |
| Zona de variables | Observar los valores utilizados durante la ejecución |

### Importancia de conocer la interfaz

Familiarizarse con estas zonas permite trabajar de manera más organizada, ejecutar programas y localizar errores con mayor facilidad.

## 3. Estructura básica de un programa

Un programa en PSeInt sigue una estructura organizada:

1. Inicio del algoritmo.
2. Definición de variables.
3. Entrada de datos.
4. Procesamiento de la información.
5. Salida de resultados.
6. Finalización del algoritmo.

### Ejemplo — Duplicar una edad

```pseudocode
Algoritmo duplicadorEdad

    // Definición de variables
    Definir edad Como Entero
    Definir edadDuplicada Como Entero

    // Entrada de datos
    Escribir "Dame tu edad"
    Leer edad

    // Procesamiento
    edadDuplicada = edad * 2

    // Salida de datos
    Escribir "La edad duplicada es: ", edadDuplicada

FinAlgoritmo
```

### Explicación

- `Algoritmo`: indica el comienzo del programa.
- `Definir`: declara las variables y sus tipos.
- `Escribir`: muestra mensajes o resultados.
- `Leer`: recibe datos introducidos por el usuario.
- `edad * 2`: realiza una operación aritmética.
- `FinAlgoritmo`: indica el final del programa.

### Entrada, proceso y salida

| Elemento | Ejemplo |
|---|---|
| Entrada | Edad introducida |
| Proceso | Multiplicar la edad por 2 |
| Salida | Mostrar el resultado |

La clase utiliza este ejemplo, en las páginas 7–9, para presentar tanto el código como su representación mediante un diagrama de flujo.

## 4. Buenas prácticas de programación

Escribir código correctamente implica respetar reglas que favorecen su comprensión y mantenimiento.

### 4.1. Mantener la estructura del algoritmo

El programa debe estar organizado dentro de las instrucciones de inicio y finalización.

```pseudocode
Algoritmo ejemplo
    Escribir "Hola Mundo"
FinAlgoritmo
```

Esta estructura ayuda a mantener el orden del código.

### 4.2. Utilizar comillas correctamente

Las cadenas de texto deben escribirse entre comillas.

**Ejemplo correcto:**

```pseudocode
Escribir "Hola Mundo"
```

**Ejemplo incorrecto:**

```pseudocode
Escribir Hola Mundo
```

Sin comillas, el contenido no se interpreta como una cadena literal.

### 4.3. Diferenciar textos y variables

En PSeInt podemos mostrar textos y valores de variables mediante la instrucción `Escribir`.

```pseudocode
Definir edad Como Entero

edad = 25

Escribir "La edad es: ", edad
```

**Regla importante:**

- Los textos literales se escriben entre comillas.
- Los identificadores de variables se escriben sin comillas.
- La coma permite incluir distintos elementos en una misma instrucción de salida.

### 4.4. Definir las variables antes de utilizarlas

Las variables deben declararse antes de realizar operaciones con ellas.

```pseudocode
Definir edad Como Entero

Escribir "Introduce tu edad"
Leer edad
```

La configuración utilizada durante el curso exige definir las variables y favorece su inicialización antes de utilizarlas.

### 4.5. Utilizar operadores y palabras en español

El perfil configurado para el curso permite expresar instrucciones y condiciones utilizando palabras como:

- `Si`
- `Y`
- `O`

Esto facilita la lectura del pseudocódigo.

### 4.6. Evitar acentos en los identificadores

Se recomienda escribir los nombres de las variables sin tildes.

**Ejemplo recomendado:**

```pseudocode
Definir edadMaxima Como Entero
```

Esta práctica favorece la compatibilidad y mantiene una nomenclatura sencilla.

### 4.7. Escribir código legible

Un algoritmo debe ser:

- Claro.
- Ordenado.
- Fácil de comprender.
- Coherente en sus nombres.
- Legible para otras personas.

Los comentarios y la separación visual de bloques ayudan a entender el propósito de las instrucciones.

## 5. Errores habituales de principiantes

La clase propone analizar instrucciones que pueden provocar errores.

| Situación | Qué revisar |
|---|---|
| Texto sin comillas | Comprobar que las cadenas estén delimitadas |
| Leer una variable no declarada | Definir la variable antes de utilizarla |
| Mostrar una variable sin valor | Comprobar su inicialización |
| Utilizar identificadores incorrectos | Revisar nombres y declaraciones |

### Ejemplo de corrección

**Incorrecto:**

```pseudocode
Algoritmo ejemplo
    Leer edad
    Escribir edad
FinAlgoritmo
```

**Correcto:**

```pseudocode
Algoritmo ejemplo
    Definir edad Como Entero

    Leer edad
    Escribir edad
FinAlgoritmo
```

En el segundo ejemplo, la variable se declara antes de utilizarse.

## 6. ¿Qué es un archivo?

Un archivo es una unidad de información almacenada en un dispositivo.

Puede contener texto, código, imágenes u otros datos.

### Conceptos presentados en la clase

**Archivo regular:** contiene información, como un documento o un programa.

**Directorio:** permite organizar archivos y otros directorios.

**Enlace o acceso directo:** proporciona una referencia a otro archivo o ubicación.

La clase utiliza estas categorías para introducir la organización de archivos en el sistema operativo.

## 7. ¿Qué es la extensión de un archivo?

La extensión es una parte del nombre del archivo, generalmente situada después de un punto, que ayuda a identificar su formato o tipo de contenido.

### Ejemplos

| Archivo | Extensión | Uso |
|---|---|---|
| `algoritmo.psc` | `.psc` | Pseudocódigo de PSeInt |
| `README.md` | `.md` | Documento Markdown |
| `apuntes.txt` | `.txt` | Texto plano |
| `documento.pdf` | `.pdf` | Documento PDF |

### ¿Por qué es importante?

La extensión puede ayudar al sistema operativo a identificar qué aplicación utilizar para abrir un archivo.

Cambiar la extensión no transforma automáticamente su contenido a otro formato.

### Ejemplo en PSeInt

Cuando guardamos un algoritmo, utilizamos la extensión `.psc`.

```text
mi_primer_algoritmo.psc
```

Este archivo podrá abrirse posteriormente desde PSeInt para continuar trabajando.

## 8. Organización de archivos de pseudocódigo

Guardar los programas con nombres descriptivos facilita su identificación.

**Ejemplo de organización:**

```text
pseudocodigo/
│
├── ejercicios/
│   ├── ejercicio01.psc
│   ├── ejercicio02.psc
│   └── ejercicio03.psc
│
└── README.md
```

Esta estructura es un ejemplo de organización para los apuntes y ejercicios, no una estructura obligatoria indicada en la clase.

## 9. Ejercicios propuestos

Al finalizar la clase se plantean dos actividades prácticas.

### Actividad 01 — Identificar errores

Reproducir en PSeInt las instrucciones incorrectas presentadas durante la clase.

**Objetivo:** observar cómo responde el programa y comprender la importancia de las declaraciones y la sintaxis.

### Actividad 02 — Comprobar las extensiones

Guardar algoritmos utilizando diferentes nombres y extensiones.

**Objetivo:** observar cómo se almacenan los programas y qué sucede cuando no se utiliza la extensión adecuada.

## 10. Principales aprendizajes

- PSeInt dispone de áreas para editar, ejecutar y analizar algoritmos.
- Todo programa debe mantener una estructura organizada.
- Las variables deben declararse antes de utilizarse.
- Los textos literales se escriben entre comillas.
- Los nombres de variables deben ser claros.
- Los comentarios ayudan a documentar las instrucciones.
- Las buenas prácticas facilitan la comprensión del código.
- Los archivos permiten almacenar información.
- Los directorios ayudan a organizar los archivos.
- Las extensiones permiten identificar formatos y facilitan su apertura.
- Los algoritmos de PSeInt se guardan habitualmente con la extensión `.psc`.

## 11. Conclusión

Esta clase permite familiarizarse con la interfaz de PSeInt y comprender las reglas fundamentales para escribir pseudocódigo.

Se estudia cómo estructurar programas, declarar variables, utilizar correctamente las instrucciones de entrada y salida y evitar errores habituales.

También se introducen los conceptos básicos de organización de archivos y extensiones.

**Aprendizaje principal:** escribir algoritmos de forma clara, estructurada y ordenada facilita su comprensión, ejecución y mantenimiento.

---

**Apuntes de estudio elaborados a partir del material de Conquer Blocks.**  
**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

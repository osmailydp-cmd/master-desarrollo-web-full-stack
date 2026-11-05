# Día 4 — ¿Qué es PSeInt?

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Pseudocódigo  
**Tema:** Introducción a Pseudocódigo  
**Material de referencia:** Conquer Blocks

## 1. Objetivo de la clase

Conocer la herramienta PSeInt, comprender su utilidad para aprender programación y preparar el entorno de trabajo necesario para desarrollar algoritmos en pseudocódigo.

La clase explica cómo instalar PSeInt en distintos sistemas operativos y cómo configurar el perfil utilizado durante el curso.

## 2. ¿Qué es PSeInt?

PSeInt es una herramienta educativa que permite escribir, ejecutar y comprobar algoritmos utilizando pseudocódigo.

Está diseñada para facilitar el aprendizaje de los fundamentos de programación sin comenzar directamente con lenguajes de programación más complejos.

### Funcionalidades principales

- Escribir algoritmos en pseudocódigo.
- Ejecutar programas.
- Identificar errores.
- Ejecutar instrucciones paso a paso.
- Comprender el funcionamiento de los algoritmos.

**Concepto fundamental:** PSeInt es un entorno de aprendizaje. Su propósito es ayudar a desarrollar habilidades de programación y pensamiento lógico.

## 3. ¿Por qué utilizar PSeInt?

PSeInt permite concentrarse en la lógica de los algoritmos antes de aprender un lenguaje de programación específico.

### Ventajas

- Facilita el aprendizaje inicial.
- Permite comprobar el funcionamiento del pseudocódigo.
- Ayuda a identificar errores.
- Permite observar la ejecución paso a paso.
- Favorece la comprensión de estructuras de programación.

El objetivo principal no es aprender únicamente a utilizar PSeInt, sino adquirir conocimientos que posteriormente puedan aplicarse en otros lenguajes.

## 4. Instalación en Windows

La clase presenta los siguientes pasos:

1. Acceder al sitio web oficial de PSeInt.
2. Descargar la versión correspondiente a Windows.
3. Ejecutar el instalador.
4. Completar la instalación.
5. Abrir PSeInt y familiarizarse con su interfaz.

### Posibles problemas

**Permisos de administrador:** algunas instalaciones pueden requerir permisos adicionales.

**Advertencias del antivirus:** el sistema de seguridad puede mostrar avisos durante la instalación.

Se recomienda obtener el programa desde su fuente oficial y verificar el archivo antes de permitir su ejecución.

## 5. Instalación en macOS

Para instalar PSeInt en Mac:

1. Acceder a la web oficial.
2. Descargar la versión para macOS.
3. Arrastrar la aplicación a la carpeta Aplicaciones.
4. Abrir el programa.

### Posibles problemas

El sistema operativo puede mostrar avisos relacionados con aplicaciones no verificadas o restricciones de seguridad.

Antes de autorizar su apertura, debe comprobarse que el archivo procede de una fuente confiable.

El material también menciona un archivo comprimido alternativo proporcionado por la academia para determinados problemas de instalación.

## 6. Instalación en Linux

La clase describe una instalación mediante un archivo comprimido.

### Procedimiento general

1. Descargar la versión para Linux desde la web oficial.
2. Descomprimir el archivo.
3. Mover la carpeta del programa a `/opt/`.
4. Crear un acceso directo si se desea.
5. Ejecutar PSeInt.

### Comandos presentados en la clase

**Descomprimir:**

```bash
tar zxvf fichero.tgz
```

**Mover la carpeta:**

```bash
sudo mv pseint /opt/
```

**Ejecutar:**

```bash
./pseint
```

*Nota:* los comandos deben adaptarse al nombre real del archivo, la carpeta descargada y la ubicación desde la que se ejecutan.

## 7. Perfil de configuración de Conquer Blocks

El curso utiliza un perfil personalizado para configurar el comportamiento de PSeInt.

Este perfil consiste en un archivo de texto con opciones que modifican determinadas características del entorno.

Su finalidad es establecer reglas de programación más estrictas, favorecer la claridad del pseudocódigo y mantener una configuración común entre los estudiantes.

## 8. Principales opciones del perfil

### Declaración e inicialización de variables

```ini
force_init_vars=1
force_define_vars=1
```

Estas opciones establecen requisitos relacionados con la definición e inicialización de variables.

**Objetivo:** desarrollar hábitos de programación ordenados desde el principio.

### Concatenación y funciones de cadenas

```ini
allow_concatenation=1
enable_string_functions=1
```

Permiten utilizar determinadas operaciones y funciones relacionadas con cadenas de caracteres.

### Operadores lógicos mediante palabras

```ini
word_operators=1
```

Permite expresar operaciones lógicas utilizando palabras como:

- `Y`
- `O`
- `NO`

Esto facilita la lectura del pseudocódigo y lo acerca al lenguaje natural.

### Arrays con índices desde cero

```ini
base_zero_arrays=1
```

Establece que los arrays comiencen a indexarse desde la posición cero.

**Ejemplo conceptual:**

Un array de cinco posiciones utiliza los índices:

```text
[0] [1] [2] [3] [4]
```

Por tanto, su primera posición es `0` y su última posición es `4`.

Este comportamiento será importante cuando se estudien listas, arrays y matrices.

## 9. Beneficios del perfil personalizado

La configuración utilizada durante el curso busca:

- Fomentar una escritura ordenada.
- Reducir errores habituales de principiantes.
- Facilitar la comprensión del pseudocódigo.
- Preparar el entorno para conceptos posteriores.
- Unificar las reglas utilizadas por los estudiantes.

La clase aclara que no es necesario comprender inmediatamente todas las opciones del perfil.

Su función principal es preparar el entorno para el aprendizaje progresivo.

## 10. Actividades propuestas

Al finalizar la clase se indican dos tareas prácticas.

### Actividad 01 — Instalar PSeInt

Instalar la aplicación en el ordenador y comprobar que puede abrirse correctamente.

**Objetivo:** disponer de un entorno de desarrollo para practicar pseudocódigo.

### Actividad 02 — Cargar el perfil de Conquer Blocks

Configurar PSeInt utilizando el perfil proporcionado durante la formación.

**Objetivo:** preparar el programa con las reglas de trabajo utilizadas en el curso.

## 11. Principales aprendizajes

- PSeInt es una herramienta educativa para aprender programación.
- Permite escribir y ejecutar algoritmos en pseudocódigo.
- Facilita la identificación de errores.
- Ofrece mecanismos para estudiar la ejecución de un programa.
- Puede instalarse en Windows, macOS y Linux.
- Los perfiles permiten personalizar su comportamiento.
- El perfil de Conquer Blocks establece reglas de programación más estrictas.
- Los arrays se configurarán con índices desde cero.
- Los operadores lógicos pueden representarse mediante palabras.
- El objetivo principal es aprender programación, no depender de una herramienta específica.

## 12. Conclusión

La clase presenta PSeInt como el entorno de trabajo que se utilizará para desarrollar los conocimientos de pseudocódigo.

Se estudian sus principales funcionalidades, los procedimientos de instalación y la configuración personalizada del curso.

El aprendizaje más importante es comprender que PSeInt es una herramienta para desarrollar el pensamiento lógico y aprender los fundamentos de programación, conocimientos que posteriormente podrán aplicarse en otros lenguajes.

Apuntes de estudio elaborados a partir del material de Conquer Blocks.
Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.

# Clase 02 — Instalación y configuración de VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Categoría:** Prework + IA  
**Módulo:** Linux y la Terminal  
**Tema 02:** VirtualBox, instalación y configuración  
**Clase:** 02 — Instalación y configuración de VirtualBox

## 1. Objetivo de la clase

Conocer VirtualBox como herramienta de virtualización, comprender su utilidad y familiarizarse con el proceso de instalación, la interfaz de usuario, las imágenes ISO y la preparación de una máquina virtual.

La clase introduce los conceptos que permitirán trabajar con diferentes sistemas operativos sin necesidad de instalarlos directamente en el equipo principal.

## 2. ¿Qué es VirtualBox?

VirtualBox es un software de virtualización que permite crear y ejecutar máquinas virtuales dentro de una computadora.

Una **máquina virtual (VM)** es un entorno informático que simula una computadora y permite instalar y utilizar un sistema operativo.

### Conceptos fundamentales

| Concepto | Definición |
|---|---|
| Virtualización | Tecnología que permite ejecutar entornos informáticos virtuales |
| Hipervisor | Software que administra y ejecuta máquinas virtuales |
| Sistema anfitrión (host) | Sistema operativo instalado en la computadora física |
| Sistema invitado (guest) | Sistema operativo ejecutado dentro de la máquina virtual |
| Máquina virtual | Entorno aislado que dispone de recursos virtuales como CPU, RAM y almacenamiento |
| Disco virtual | Archivo utilizado para almacenar los datos del sistema operativo invitado |

### Ejemplo práctico

Una computadora con Windows puede ejecutar VirtualBox para utilizar Ubuntu Linux dentro de una máquina virtual.

```text
Computadora física
└── Windows (sistema anfitrión)
    └── VirtualBox
        └── Máquina virtual
            └── Ubuntu Linux (sistema invitado)
```

### Ventajas de utilizar máquinas virtuales

- Probar diferentes sistemas operativos.
- Aprender Linux sin reemplazar Windows.
- Crear entornos de pruebas y desarrollo.
- Practicar configuraciones de sistemas.
- Aislar parcialmente las pruebas del sistema principal.
- Utilizar diferentes sistemas operativos en una misma computadora.

**Nota complementaria:** la virtualización proporciona aislamiento, pero no constituye una garantía absoluta de seguridad.

## 3. Descarga e instalación de VirtualBox

El material identifica la descarga e instalación de VirtualBox como uno de los contenidos principales de la clase.

### Procedimiento general de instalación

1. Acceder al sitio oficial de VirtualBox.
2. Seleccionar el instalador correspondiente al sistema operativo anfitrión.
3. Descargar el instalador.
4. Ejecutar el archivo de instalación.
5. Revisar las opciones disponibles.
6. Completar la instalación.
7. Abrir VirtualBox y comprobar que funciona.

**Sitio oficial:** https://www.virtualbox.org/

### Requisitos y consideraciones

Antes de instalar VirtualBox, conviene comprobar:

- Compatibilidad del sistema operativo anfitrión.
- Disponibilidad de memoria RAM suficiente.
- Espacio libre en disco.
- Compatibilidad del procesador.
- Disponibilidad de las funciones de virtualización por hardware cuando sean necesarias.

Estas son recomendaciones generales complementarias; el PDF no especifica versiones ni requisitos mínimos concretos.

## 4. Problemas habituales durante la instalación de VirtualBox

Durante la instalación de VirtualBox pueden aparecer errores relacionados con componentes de Windows o con la configuración de virtualización del equipo.

La academia proporciona los siguientes recursos para identificar y solucionar algunos de estos problemas.

### 4.1. Error relacionado con Microsoft Visual C++

Algunas versiones de VirtualBox para Windows requieren componentes de Microsoft Visual C++.

Si durante la instalación aparece un mensaje indicando que falta alguno de estos componentes, puede ser necesario instalar el paquete correspondiente.

**Video proporcionado por la academia:**

[Instalar Visual C++ para solucionar errores de VirtualBox](https://youtu.be/hBhpsZ_ECAA?si=FoynB0zCjkhr05uV)

### 4.2. Comprobar si la virtualización está habilitada en BIOS/UEFI

VirtualBox puede necesitar que las funciones de virtualización por hardware estén habilitadas.

Entre las tecnologías más conocidas se encuentran:

- **Intel VT-x:** virtualización por hardware en procesadores Intel.
- **AMD-V:** virtualización por hardware en procesadores AMD.

Es importante comprobar que estas funciones estén disponibles y habilitadas en la configuración del equipo.

**Video proporcionado por la academia:**

[Comprobar si la virtualización está habilitada en BIOS/UEFI](https://youtu.be/dvVnwvz1W5Y?si=sjv4OOQaJyLo5sNu)

### 4.3. Habilitar la virtualización desde BIOS/UEFI

Si la virtualización está deshabilitada, puede ser necesario acceder a BIOS/UEFI y activar la opción correspondiente.

El procedimiento varía según el fabricante y el modelo de la computadora.

De forma general:

1. Acceder a la configuración BIOS/UEFI.
2. Localizar las opciones relacionadas con el procesador o la virtualización.
3. Identificar Intel Virtualization Technology, AMD-V o una opción equivalente.
4. Habilitarla si está disponible.
5. Guardar los cambios y reiniciar el equipo.

**Video proporcionado por la academia:**

[Habilitar la virtualización desde BIOS/UEFI](https://youtu.be/tgH4_jkiMbc?si=rKf_H4ULBj62k3Rp)

### 4.4. Reiniciar el equipo y repetir la instalación

Después de instalar los componentes necesarios o modificar la configuración de virtualización:

1. Guardar los cambios realizados.
2. Reiniciar la computadora.
3. Ejecutar nuevamente el instalador de VirtualBox.
4. Comprobar si el problema se ha solucionado.

Si el error continúa, será necesario revisar el mensaje específico, la compatibilidad del sistema y la versión de VirtualBox.

### Resumen de recursos de solución de problemas

| Problema | Recurso |
|---|---|
| Error de Microsoft Visual C++ | [Ver video 1](https://youtu.be/hBhpsZ_ECAA?si=FoynB0zCjkhr05uV) |
| Comprobar virtualización en BIOS/UEFI | [Ver video 2](https://youtu.be/dvVnwvz1W5Y?si=sjv4OOQaJyLo5sNu) |
| Habilitar virtualización en BIOS/UEFI | [Ver video 3](https://youtu.be/tgH4_jkiMbc?si=rKf_H4ULBj62k3Rp) |
| Aplicar cambios | Reiniciar el equipo y repetir la instalación |

**Nota:** los enlaces anteriores fueron proporcionados como recursos complementarios por Conquer Blocks. Las opciones de configuración y los procedimientos pueden variar según el equipo y las versiones de software utilizadas.
## 5. Interfaz de usuario de VirtualBox

El índice de la clase incluye un recorrido por la interfaz gráfica del programa.

### Componentes principales

| Elemento | Función |
|---|---|
| Administrador de VirtualBox | Permite visualizar y administrar las máquinas virtuales |
| Nueva | Inicia la creación de una máquina virtual |
| Configuración | Permite modificar parámetros de una máquina |
| Iniciar | Ejecuta una máquina virtual |
| Almacenamiento | Permite administrar discos virtuales e imágenes ISO |
| Sistema | Permite configurar recursos y opciones de funcionamiento |
| Pantalla | Permite ajustar parámetros gráficos |
| Red | Permite configurar las conexiones de red virtuales |
| USB | Permite administrar determinadas opciones de dispositivos USB |

Los nombres y la ubicación de estas opciones pueden variar dependiendo de la versión utilizada.

## 6. ¿Qué es una imagen ISO?

Una **ISO** es un archivo que contiene una imagen de un medio de almacenamiento, como un disco de instalación.

En el contexto de VirtualBox, se utiliza frecuentemente para iniciar el proceso de instalación de un sistema operativo.

### Ejemplo

Para instalar Ubuntu en una máquina virtual, normalmente se descarga una imagen ISO de Ubuntu y se selecciona desde VirtualBox como medio de instalación.

### Diferencia entre ISO y disco virtual

| Archivo | Función |
|---|---|
| `.iso` | Contiene una imagen de instalación o arranque |
| `.vdi` | Formato de disco virtual utilizado por VirtualBox |
| `.vmdk` | Otro formato de disco virtual compatible con diferentes herramientas |

**Concepto importante:** la imagen ISO proporciona el medio de instalación; el disco virtual permite almacenar el sistema operativo instalado y sus datos.

## 7. Preparación de la primera máquina virtual

El índice de la presentación incluye la preparación de la primera máquina.

### Procedimiento general

1. Abrir VirtualBox.
2. Seleccionar la opción para crear una máquina virtual.
3. Asignar un nombre.
4. Seleccionar el sistema operativo que se utilizará.
5. Configurar los recursos de CPU y memoria RAM.
6. Crear o seleccionar un disco duro virtual.
7. Seleccionar la imagen ISO correspondiente.
8. Revisar la configuración.
9. Iniciar la máquina virtual.

### Recursos configurables

| Recurso | Descripción |
|---|---|
| CPU | Procesadores virtuales disponibles para la máquina |
| RAM | Memoria asignada al sistema invitado |
| Almacenamiento | Disco virtual donde se guardan los datos |
| Red | Forma en que la máquina virtual se conecta a redes |
| Pantalla | Recursos gráficos virtuales |
| ISO | Medio utilizado para instalar o iniciar el sistema operativo |

### Consideraciones

La cantidad de recursos asignados debe ajustarse a la capacidad del equipo anfitrión.

Una configuración demasiado exigente puede afectar al rendimiento de la computadora física.

*Los pasos de este apartado son una explicación general complementaria: las diapositivas no detallan la demostración realizada durante el video.*

## 8. Relación con el aprendizaje de Linux

VirtualBox permite disponer de un entorno de práctica para las siguientes clases del módulo.

Entre sus posibles aplicaciones se encuentran:

- Instalar una distribución GNU/Linux.
- Conocer el sistema de archivos.
- Practicar comandos desde la terminal.
- Trabajar con usuarios y permisos.
- Configurar servicios.
- Realizar pruebas sin depender de un equipo físico dedicado.

De esta manera, VirtualBox puede utilizarse como laboratorio de aprendizaje durante el módulo.

## 9. Principales aprendizajes

1. VirtualBox permite crear y administrar máquinas virtuales.
2. Una máquina virtual ejecuta un sistema operativo invitado sobre un sistema anfitrión.
3. La virtualización facilita la creación de entornos de aprendizaje y pruebas.
4. La instalación depende de la compatibilidad del equipo y de su configuración.
5. Las opciones de BIOS/UEFI pueden influir en el funcionamiento de la virtualización.
6. La interfaz de VirtualBox permite administrar recursos y configuraciones.
7. Las imágenes ISO se utilizan frecuentemente como medios de instalación.
8. Los discos virtuales permiten almacenar sistemas operativos y archivos.
9. Es importante asignar recursos adecuados a cada máquina.
10. Las máquinas virtuales proporcionan un entorno útil para aprender Linux.

## 10. Conclusión

La Clase 02 presenta VirtualBox como una herramienta para trabajar con diferentes sistemas operativos mediante máquinas virtuales.

Los contenidos anunciados incluyen la instalación del programa, el reconocimiento de su interfaz, la utilización de imágenes ISO y la preparación de una primera máquina virtual.

Estos conceptos establecen la base para continuar con las siguientes clases, dedicadas a la instalación y configuración de sistemas operativos Windows y Linux.

## 11. Material de referencia

La academia proporciona materiales y recursos complementarios para esta clase.

**[Repositorio oficial de Conquer Blocks — Linux y la Terminal](https://github.com/ConquerBlocks/conquerblocks-linux-terminal)**

También se facilitan videos de apoyo para resolver errores relacionados con Visual C++, opciones de virtualización y configuración del sistema.

### Alcance de estos apuntes

El PDF proporcionado contiene la portada, el índice y la despedida. Por tanto, los apartados explicativos de este README se han desarrollado como notas de estudio complementarias, siguiendo los temas anunciados.

Las acciones de instalación y configuración descritas no representan actividades prácticas realizadas personalmente ni una transcripción literal de la explicación del profesor.

# Guía — Crear una ISO de Windows 10 desde Windows 11

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox, instalación y configuración  
**Objetivo:** Obtener una imagen ISO oficial de Windows 10 para instalarlo en una máquina virtual de VirtualBox.

## 1. Descargar la herramienta oficial

1. Acceder a la página oficial de Microsoft:

   https://www.microsoft.com/es-es/software-download/windows10

2. Buscar la sección **Crear medios de instalación de Windows 10**.
3. Seleccionar **Descargar ahora la herramienta**.
4. Descargar y ejecutar `MediaCreationTool_22H2.exe`.
5. Aceptar los términos de licencia.

## 2. Configurar la descarga

6. Seleccionar **Crear medios de instalación (unidad flash USB, DVD o archivo ISO) para otro PC**.
7. Elegir las siguientes opciones:

   - **Idioma:** Español.
   - **Edición:** Windows 10.
   - **Arquitectura:** 64 bits (x64).

8. Pulsar **Siguiente**.

## 3. Crear el archivo ISO

9. Seleccionar la opción **Archivo ISO**, no unidad flash USB.
10. Elegir la carpeta donde se guardará el archivo:

    `E:\Descargas\ISOS`

11. Esperar a que la herramienta descargue Windows 10 y genere la imagen ISO.
12. Comprobar que el archivo `.iso` se haya guardado correctamente.

## 4. Utilizar la ISO en VirtualBox

1. Abrir Oracle VirtualBox.
2. Seleccionar **Nueva**.
3. Asignar un nombre a la máquina virtual.
4. Seleccionar el archivo ISO de Windows 10.
5. Configurar la memoria RAM, los procesadores y el disco virtual.
6. Iniciar la máquina y proceder con la instalación.

## 5. Configuración recomendada para mi computadora

| Recurso | Configuración |
|---|---|
| Sistema anfitrión | Windows 11 Home |
| Procesador | Intel Core i7-8750H |
| RAM disponible | 32 GB |
| Sistema invitado | Windows 10 de 64 bits |
| RAM de la VM | 4096 MB |
| Procesadores virtuales | 2 |
| Disco virtual | 64 GB dinámico |
| Formato del disco | VDI |

## Observaciones importantes

- La ISO se descarga desde Microsoft utilizando Windows 11; **no se genera una copia del Windows 11 instalado**.
- No es necesario utilizar una memoria USB.
- La ISO se puede reutilizar para crear otras máquinas virtuales.
- La instalación y activación de Windows 10 están sujetas a su licencia.
- Windows 10 finalizó su soporte general el 14 de octubre de 2025, por lo que conviene utilizarlo para prácticas aisladas y evitar exponerlo innecesariamente a Internet.

---

**Nota personal de estudio — Linux y la Terminal / VirtualBox.**

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

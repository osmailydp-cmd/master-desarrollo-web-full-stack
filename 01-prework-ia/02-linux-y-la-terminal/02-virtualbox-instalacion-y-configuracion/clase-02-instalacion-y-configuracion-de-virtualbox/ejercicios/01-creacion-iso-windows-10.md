##  Guía práctica — Obtener una ISO de Windows 10 desde Windows 11

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox, instalación y configuración  
**Objetivo:** Obtener una imagen ISO oficial de Windows 10 para instalarlo en una máquina virtual de VirtualBox.

### 1. Descargar la herramienta oficial

1. Acceder a la página oficial de Microsoft:

   https://www.microsoft.com/es-es/software-download/windows10

2. Buscar la sección **Crear medios de instalación de Windows 10**.
3. Seleccionar **Descargar ahora la herramienta**.
4. Descargar y ejecutar `MediaCreationTool_22H2.exe`.
5. Aceptar los términos de licencia.

### 2. Configurar la descarga

6. Seleccionar **Crear medios de instalación (unidad flash USB, DVD o archivo ISO) para otro PC**.
7. Elegir las siguientes opciones:

   - **Idioma:** Español.
   - **Edición:** Windows 10.
   - **Arquitectura:** 64 bits (x64).

8. Pulsar **Siguiente**.

### 3. Crear el archivo ISO

9. Seleccionar la opción **Archivo ISO**, no unidad flash USB.
10. Elegir la carpeta donde se guardará el archivo:

    `E:\Descargas\ISOS`

11. Esperar a que la herramienta descargue Windows 10 y genere la imagen ISO.
12. Comprobar que el archivo `.iso` se haya guardado correctamente.

### 4. Utilizar la ISO en VirtualBox

1. Abrir Oracle VirtualBox.
2. Seleccionar **Nueva**.
3. Asignar un nombre a la máquina virtual.
4. Seleccionar el archivo ISO de Windows 10.
5. Configurar la memoria RAM, los procesadores y el disco virtual.
6. Iniciar la máquina y proceder con la instalación.

### 5. Configuración recomendada para mi computadora

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

### Observaciones importantes

- La ISO se descarga desde Microsoft utilizando Windows 11; **no se genera una copia del Windows 11 instalado**.
- No es necesario utilizar una memoria USB.
- La ISO se puede reutilizar para crear otras máquinas virtuales.
- La instalación y activación de Windows 10 están sujetas a su licencia.
- Windows 10 finalizó su soporte general el 14 de octubre de 2025, por lo que conviene utilizarlo para prácticas aisladas y evitar exponerlo innecesariamente a Internet.

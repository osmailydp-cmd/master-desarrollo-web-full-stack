# Práctica 02 — Instalación y configuración de VirtualBox Guest Additions en Ubuntu 22.04.3

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** Instalación y configuración de VirtualBox  
**Clase:** 05 — Instalación de Guest Additions en VirtualBox  
**Tipo:** Práctica personal  
**Fecha:** 14 de noviembre de 2026

---

## 1. Objetivo de la práctica

Instalar y configurar **Oracle VirtualBox Guest Additions** en una máquina virtual con Ubuntu 22.04.3, para mejorar la integración entre el sistema operativo anfitrión Windows 11 y el sistema operativo invitado Ubuntu.

Además de reproducir el procedimiento explicado por el profesor, realizamos pruebas para verificar las funciones principales de Guest Additions, identificamos problemas de compatibilidad y configuramos una carpeta compartida para intercambiar archivos entre ambos sistemas.

### Objetivos específicos

1. Comprender qué son Guest Additions.
2. Restaurar la conexión a Internet de Ubuntu.
3. Actualizar los índices de paquetes.
4. Instalar las herramientas necesarias para compilar módulos.
5. Comprobar los encabezados del kernel Linux.
6. Montar la imagen ISO de Guest Additions.
7. Ejecutar el instalador para Linux.
8. Reiniciar Ubuntu y comprobar la instalación.
9. Verificar la adaptación automática de la resolución.
10. Comprobar la integración del ratón.
11. Configurar y probar el portapapeles compartido.
12. Configurar y probar Arrastrar y soltar.
13. Identificar diferencias entre Wayland y X11.
14. Diagnosticar los servicios de Guest Additions.
15. Configurar carpetas compartidas.
16. Comprobar lectura y escritura en ambos sentidos.
17. Verificar el automontaje.
18. Corregir los permisos de acceso mediante el grupo `vboxsf`.
19. Documentar los errores encontrados y las soluciones aplicadas.

---

# PARTE I — PREPARACIÓN

## 2. Entorno de trabajo

### 2.1. Sistema anfitrión

| Característica | Valor |
|---|---|
| Sistema operativo | Windows 11 Home |
| Arquitectura | 64 bits |
| Memoria RAM física | 32 GB |
| Procesador | Intel Core i7-8750H |
| Software de virtualización | Oracle VirtualBox |
| Versión de Guest Additions utilizada | 7.2.22 |

### 2.2. Máquina virtual

| Característica | Valor |
|---|---|
| Nombre | `PC-Ubuntu-Osmaily` |
| Sistema invitado | Ubuntu Desktop 22.04.3 LTS |
| Arquitectura | 64 bits |
| Memoria RAM | 4096 MB |
| Procesadores virtuales | 1 |
| Disco virtual | VDI de 25 GB |
| Nombre del equipo Ubuntu | `pc-ubuntu-osmaily` |
| Usuario | `osmaily` |
| Tipo de instalación | Manual |
| Versión del kernel observada | `6.2.0-26-generic` |

### 2.3. Estado previo

Ubuntu ya estaba instalado y habíamos comprobado:

- Inicio del sistema operativo.
- Funcionamiento del usuario local.
- Acceso al escritorio.
- Configuración regional.
- Funcionamiento básico de la máquina virtual.

Además, habíamos creado una instantánea denominada:

`Ubuntu 22.04.3 - Instalación limpia`

Esta instantánea permite conservar un punto de recuperación anterior a la instalación de Guest Additions.

---

## 3. ¿Qué son VirtualBox Guest Additions?

**Guest Additions** es un conjunto de controladores y componentes que se instalan dentro del sistema operativo invitado.

Su finalidad es mejorar la interacción entre la computadora anfitriona y la máquina virtual.

### 3.1. Funciones principales

| Función | Explicación |
|---|---|
| Integración del ratón | Facilita el movimiento del puntero entre ambos sistemas |
| Redimensionamiento automático | Permite adaptar la resolución del invitado al tamaño de la ventana |
| Portapapeles compartido | Permite copiar y pegar contenido entre anfitrión e invitado |
| Arrastrar y soltar | Permite intentar transferir archivos mediante el ratón |
| Carpetas compartidas | Permite acceder a archivos de una carpeta del anfitrión desde el invitado |
| Controladores gráficos | Mejoran determinadas funciones de visualización |
| Servicios de integración | Proporcionan funciones adicionales de comunicación entre ambos sistemas |

### 3.2. ¿Son obligatorios?

No son imprescindibles para que Ubuntu pueda instalarse y arrancar, pero resultan muy útiles para trabajar cómodamente dentro de VirtualBox.

### 3.3. ¿Dónde se instalan?

Los componentes se instalan **dentro de Ubuntu**, no solamente en Windows.

VirtualBox proporciona una imagen de CD con los archivos de instalación para varios sistemas operativos.

---

## 4. Recuperar la conexión a Internet

Durante la instalación de Ubuntu de la Clase 04 habíamos desconectado temporalmente el cable de red virtual para evitar descargas.

Antes de instalar las dependencias de Guest Additions, necesitábamos restablecer la conexión.

### 4.1. Procedimiento

Con la máquina virtual iniciada:

1. Abrimos **Dispositivos** en la barra de VirtualBox.
2. Entramos en **Red**.
3. Activamos **Conectar adaptador de red**.
4. Mantuvimos la configuración de red NAT.

### 4.2. Comprobar conectividad

Abrimos la terminal de Ubuntu con:

`Ctrl + Alt + T`

Y ejecutamos:

```bash
ping -c 4 google.com
```

### 4.3. Explicación del comando

- `ping`: envía solicitudes de comprobación de conectividad.
- `-c 4`: limita la prueba a cuatro solicitudes.
- `google.com`: destino utilizado para la comprobación.

### 4.4. Resultado obtenido

| Indicador | Resultado |
|---|---|
| Paquetes enviados | 4 |
| Paquetes recibidos | 4 |
| Paquetes perdidos | 0 % |
| Tiempo promedio | 310,702 ms |

### 4.5. Conclusión

La comunicación de red funcionaba correctamente.

**Resultado: conexión a Internet restablecida y verificada.**

---

# PARTE II — INSTALACIÓN DE DEPENDENCIAS

## 5. Actualizar la lista de paquetes

Antes de instalar herramientas, actualizamos la información de los repositorios disponibles.

### 5.1. Comando ejecutado

```bash
sudo apt-get update
```

### 5.2. Explicación

| Elemento | Función |
|---|---|
| `sudo` | Ejecuta el comando con permisos administrativos |
| `apt-get` | Herramienta de administración de paquetes de Ubuntu |
| `update` | Actualiza los índices de paquetes disponibles |

### 5.3. Diferencia entre update y upgrade

Es importante distinguir estos conceptos:

**`apt-get update`**

Actualiza la información sobre versiones disponibles en los repositorios.

**`apt-get upgrade`**

Instala actualizaciones disponibles de los paquetes instalados, respetando las reglas de dependencias de la operación.

En nuestra práctica ejecutamos **`update`**, no una actualización general de todos los paquetes.

### 5.4. Resultado

El comando se completó y pudimos continuar con la instalación de herramientas.

---

## 6. Instalar gcc, make y perl

El profesor explicó que Ubuntu necesitaba determinadas herramientas para instalar los componentes de Guest Additions.

Seguimos ese procedimiento.

### 6.1. Comando ejecutado

```bash
sudo apt-get install gcc make perl
```

### 6.2. Función de cada paquete

| Paquete | Función |
|---|---|
| `gcc` | Compilador del lenguaje C |
| `make` | Ejecuta instrucciones de compilación definidas para un proyecto |
| `perl` | Lenguaje utilizado por determinados scripts y herramientas |

### 6.3. ¿Por qué son necesarios?

Los módulos de Guest Additions para Linux pueden necesitar compilarse para la versión del kernel que está ejecutando Ubuntu.

Estas herramientas permiten realizar parte de ese proceso.

### 6.4. Resultado obtenido

Durante la instalación, Ubuntu mostró mensajes como:

```text
Configurando perl ...
Configurando gcc ...
Procesando disparadores para man-db ...
Procesando disparadores para libc-bin ...
```

El proceso terminó y regresó al indicador de la terminal:

```bash
osmaily@pc-ubuntu-osmaily:~$
```

No aparecieron errores al finalizar.

**Resultado: herramientas de compilación instaladas correctamente.**

---

## 7. Comprobar los encabezados del kernel

Además de las herramientas anteriores, es importante contar con los encabezados correspondientes al kernel Linux utilizado.

### 7.1. Comando ejecutado

```bash
sudo apt-get install linux-headers-$(uname -r)
```

### 7.2. Explicación

- `linux-headers`: proporciona archivos necesarios para desarrollar o compilar módulos del kernel.
- `uname -r`: muestra la versión del kernel en ejecución.
- `$(...)`: sustituye la expresión por el resultado del comando interno.

### 7.3. ¿Por qué utilizar uname -r?

Para solicitar los encabezados de la versión exacta del kernel activo.

En nuestra máquina, esa versión era:

`6.2.0-26-generic`

### 7.4. Resultado observado

Ubuntu informó:

```text
linux-headers-6.2.0-26-generic ya está en su versión más reciente
0 actualizados, 0 nuevos se instalarán
```

También indicó que existían:

`578 no actualizados`

### 7.5. Interpretación

Los encabezados del kernel ya estaban instalados.

No fue necesario descargar un paquete adicional para esta comprobación.

La existencia de actualizaciones pendientes no impidió continuar con la instalación de Guest Additions.

**Resultado: encabezados correspondientes al kernel disponibles.**

---

# PARTE III — INSTALACIÓN DE GUEST ADDITIONS

## 8. Insertar la imagen de CD de Guest Additions

Con Ubuntu iniciado, utilizamos el menú de VirtualBox.

### 8.1. Procedimiento

1. Abrimos **Dispositivos**.
2. Seleccionamos **Insertar imagen de CD de los complementos del invitado...**
3. Ubuntu reconoció el medio óptico.
4. Se abrió automáticamente una ventana del administrador de archivos.

### 8.2. Nombre de la unidad

La unidad apareció como:

`VBox_GAs_7.2.22`

### 8.3. Archivos observados

Entre los archivos del CD encontramos:

- `autorun.sh`
- `VBoxLinuxAdditions.run`
- `VBoxLinuxAdditions-arm64.run`
- Instaladores de Guest Additions para Windows.
- Instaladores y componentes para otros sistemas.

### 8.4. ¿Qué representa la imagen ISO?

Es un medio virtual que contiene los programas necesarios para instalar Guest Additions.

Insertar la imagen no equivale todavía a instalar el software.

---

## 9. Ejecutar autorun.sh

Seguimos el procedimiento utilizado por el profesor.

### 9.1. Procedimiento

1. Abrimos la unidad `VBox_GAs_7.2.22`.
2. Localizamos `autorun.sh`.
3. Hicimos clic derecho sobre el archivo.
4. Elegimos **Ejecutar como un programa**.
5. Ubuntu solicitó autenticación.
6. Introdujimos la contraseña del usuario.
7. Confirmamos la operación.

### 9.2. ¿Qué es autorun.sh?

Es un script que inicia el proceso de instalación desde el medio de Guest Additions.

En Linux, los archivos `.sh` suelen contener instrucciones ejecutables por un intérprete de comandos.

### 9.3. Resultado

Se abrió una terminal titulada:

**VirtualBox Guest Additions Installation**

El instalador comenzó a preparar y compilar los componentes necesarios.

---

## 10. Analizar los mensajes del instalador

Durante el procedimiento aparecieron diversos mensajes.

### 10.1. Descompresión

```text
Uncompressing VirtualBox 7.2.22 Guest Additions for Linux 100%
```

Se descomprimieron los archivos del instalador.

### 10.2. Preparación de módulos

```text
VirtualBox Guest Additions: Setting up modules
```

El instalador preparó los módulos necesarios.

### 10.3. Compilación del módulo principal

```text
VirtualBox Guest Additions: Building the main module.
```

Se compiló el componente principal de Guest Additions.

### 10.4. Soporte para carpetas compartidas

```text
VirtualBox Guest Additions: Building the shared folder support module.
```

Se preparó el soporte utilizado por las carpetas compartidas.

### 10.5. Controlador gráfico

```text
VirtualBox Guest Additions: Building the graphics driver module.
```

Se preparó el componente relacionado con la integración gráfica.

### 10.6. Actualización de initramfs

```text
update-initramfs: Generating /boot/initrd.img-6.2.0-26-generic
```

`initramfs` contiene componentes utilizados durante las primeras etapas del arranque de Linux.

La actualización permite incorporar los elementos necesarios para el inicio del sistema.

### 10.7. Recarga de servicios

El instalador mostró:

```text
VirtualBox Guest Additions: reloading kernel modules and services
```

Y posteriormente indicó que los módulos y servicios de Guest Additions 7.2.22 habían sido recargados.

### 10.8. Mensaje de reinicio

El instalador advirtió:

```text
Running kernel modules will not be replaced until the system is restarted
```

También indicó que determinados servicios de sesión podían necesitar un nuevo inicio, incluidos:

- Portapapeles compartido.
- Arrastrar y soltar.
- Redimensionamiento de pantalla.
- Modo de integración de ventanas.

### 10.9. Finalización

La terminal terminó con:

```text
Press Return to close this window...
```

No aparecieron errores de compilación en el resultado final observado.

**Resultado: Guest Additions 7.2.22 instalado sin errores visibles.**

---

## 11. Reiniciar Ubuntu

Aunque algunos servicios se habían recargado, decidimos reiniciar Ubuntu para completar correctamente la instalación.

### 11.1. Procedimiento

1. Presionamos **Enter** para cerrar la terminal del instalador.
2. Cerramos las ventanas abiertas.
3. Abrimos el menú del sistema de Ubuntu.
4. Seleccionamos **Reiniciar**.
5. Confirmamos el reinicio.
6. Volvimos a iniciar sesión con `osmaily`.

### 11.2. Resultado

Ubuntu arrancó correctamente después de instalar Guest Additions.

---

# PARTE IV — VERIFICACIÓN DE FUNCIONES

## 12. Comprobar el redimensionamiento de pantalla

Después del reinicio realizamos pruebas cambiando el tamaño de la ventana de VirtualBox.

### 12.1. Procedimiento

1. Mantuvimos Ubuntu iniciado.
2. Modificamos el tamaño de la ventana de VirtualBox.
3. Maximizamos la ventana.
4. Comprobamos si el escritorio se adaptaba al nuevo tamaño.

### 12.2. Resultado

**La resolución de Ubuntu se adaptó correctamente al tamaño de la ventana.**

### 12.3. Comparación con el estado anterior

Antes de instalar Guest Additions habíamos observado dificultades de adaptación y un parpadeo temporal al modificar el tamaño de la ventana.

Después de instalar los complementos, comprobamos que la adaptación automática funcionaba.

---

## 13. Comprobar la integración del ratón

### 13.1. Procedimiento

Movimos el puntero entre la ventana de Ubuntu y el escritorio de Windows 11.

### 13.2. Resultado

**El ratón se integró correctamente entre ambos sistemas.**

Ya no experimentábamos las mismas dificultades de captura del puntero asociadas a la configuración anterior.

---

## 14. Configurar el portapapeles compartido

En VirtualBox abrimos:

**Dispositivos → Portapapeles compartido**

Seleccionamos:

**Bidireccional**

### 14.1. ¿Qué es el portapapeles?

Es el mecanismo que permite copiar información y pegarla posteriormente.

Por ejemplo:

- `Ctrl + C`: copiar.
- `Ctrl + V`: pegar.

### 14.2. ¿Qué significa Bidireccional?

Permite compartir contenido:

- Desde Windows 11 hacia Ubuntu.
- Desde Ubuntu hacia Windows 11.

### 14.3. Diferencia con Arrastrar y soltar

El portapapeles compartido y la transferencia mediante el ratón son funciones diferentes.

Una puede funcionar aunque la otra presente problemas.

---

## 15. Prueba del portapapeles: Windows hacia Ubuntu

Utilizamos el Bloc de notas de Windows y LibreOffice Writer de Ubuntu.

### 15.1. Procedimiento

1. Abrimos el Bloc de notas en Windows 11.
2. Escribimos un texto de prueba.
3. Lo seleccionamos.
4. Presionamos `Ctrl + C`.
5. Abrimos LibreOffice Writer en Ubuntu.
6. Presionamos `Ctrl + V`.

### 15.2. Texto utilizado

```text
Prueba de portapapeles compartido: Windows 11 hacia Ubuntu.
```

### 15.3. Resultado

El texto apareció correctamente en LibreOffice Writer.

**Resultado: Windows → Ubuntu funciona.**

---

## 16. Prueba del portapapeles: Ubuntu hacia Windows

Repetimos la prueba en sentido contrario.

### 16.1. Procedimiento

1. Escribimos un texto en LibreOffice Writer.
2. Seleccionamos el contenido.
3. Presionamos `Ctrl + C`.
4. Regresamos a Windows 11.
5. Abrimos el Bloc de notas.
6. Presionamos `Ctrl + V`.

### 16.2. Texto utilizado

```text
Prueba de portapapeles compartido: Ubuntu hacia Windows 11.
```

### 16.3. Resultado

El texto se pegó correctamente en Windows.

**Resultado: portapapeles bidireccional verificado.**

### 16.4. Nota sobre la terminal

En la terminal de Ubuntu, normalmente se utiliza:

- `Ctrl + Shift + C`: copiar.
- `Ctrl + Shift + V`: pegar.

Estos atajos son diferentes de los utilizados en muchas aplicaciones gráficas.

---

# PARTE V — PRUEBAS DE ARRASTRAR Y SOLTAR

## 17. Activar Arrastrar y soltar

Desde VirtualBox accedimos a:

**Dispositivos → Arrastrar y soltar**

Seleccionamos:

**Bidireccional**

### 17.1. Objetivo

Transferir archivos entre Windows 11 y Ubuntu utilizando el ratón.

### 17.2. Primera prueba

Intentamos arrastrar un archivo PDF desde el Explorador de Windows hacia el escritorio de Ubuntu.

### 17.3. Resultado

La operación falló.

VirtualBox mostró un mensaje parecido a:

```text
DnD: Error: Drag and drop to guest not possible
```

Y el código:

```text
VBOX_E_DND_ERROR (0x80BB0011)
```

### 17.4. Interpretación

VirtualBox no pudo completar la transferencia al sistema invitado.

El error no demostraba que el archivo PDF fuera incompatible, por lo que realizamos otras pruebas.

---

## 18. Repetir la prueba con un archivo de texto

Creamos un archivo:

`prueba.txt`

Intentamos transferirlo desde Windows hacia Ubuntu.

### 18.1. Resultado inicial

La transferencia también falló en las primeras pruebas.

Esto indicó que el problema no estaba limitado al formato PDF.

---

## 19. Identificar el tipo de sesión gráfica

Para investigar el problema, comprobamos qué sistema gráfico estaba utilizando Ubuntu.

### 19.1. Comando ejecutado

```bash
echo $XDG_SESSION_TYPE
```

### 19.2. Resultado inicial

```text
wayland
```

### 19.3. ¿Qué es Wayland?

Wayland es un protocolo utilizado por entornos gráficos de Linux para gestionar la comunicación entre las aplicaciones y el sistema de visualización.

### 19.4. ¿Por qué era importante?

La función de arrastrar y soltar de VirtualBox presenta limitaciones de compatibilidad según el sistema gráfico utilizado.

En particular, las implementaciones de integración con X Window/X11 tienen un comportamiento diferente del que se obtiene en Wayland.

Por eso decidimos probar Ubuntu utilizando una sesión X11.

**En ese momento, Wayland era una causa posible, no una causa definitivamente demostrada.**

---

## 20. Cambiar de Wayland a Ubuntu on Xorg

### 20.1. Procedimiento

1. Guardamos los documentos abiertos.
2. Abrimos el menú del sistema de Ubuntu.
3. Seleccionamos **Cerrar sesión**.
4. En la pantalla de inicio de sesión, seleccionamos el usuario.
5. Abrimos el menú de opciones de sesión mediante el engranaje.
6. Seleccionamos **Ubuntu on Xorg**.
7. Introdujimos la contraseña.
8. Iniciamos sesión nuevamente.

### 20.2. Comprobar el cambio

Ejecutamos:

```bash
echo $XDG_SESSION_TYPE
```

### 20.3. Resultado obtenido

```text
x11
```

### 20.4. Interpretación

Ubuntu estaba utilizando correctamente una sesión gráfica X11.

No fue necesario reinstalar Ubuntu ni Guest Additions.

---

## 21. Incidencia con el administrador de archivos

Durante las pruebas con X11, Ubuntu mostró el mensaje:

**La aplicación Files se cerró inesperadamente.**

### 21.1. Opciones observadas

La ventana ofrecía opciones para:

- Mostrar detalles.
- Enviar un informe.
- No enviar.
- Volver a abrir la aplicación.

### 21.2. Acción realizada

Continuamos la práctica abriendo nuevamente el administrador de archivos.

### 21.3. Resultado

El administrador de archivos volvió a funcionar.

No identificamos una causa definitiva del cierre inesperado.

Este incidente no impidió continuar con las pruebas.

---

## 22. Transferencia de Windows hacia Ubuntu con X11

Con la sesión X11 activa, repetimos la transferencia utilizando el archivo de texto.

### 22.1. Procedimiento

1. Abrimos el Explorador de archivos de Windows 11.
2. Localizamos `prueba.txt`.
3. En Ubuntu, abrimos **Archivos**.
4. Entramos en **Descargas**.
5. Arrastramos el archivo desde Windows hacia el interior de la carpeta Descargas de Ubuntu.

### 22.2. Resultado

El archivo apareció correctamente en Ubuntu.

**Resultado: transferencia Windows → Ubuntu completada con X11, soltando el archivo dentro de Archivos.**

### 22.3. Diferencia observada

La transferencia al escritorio de Ubuntu había fallado.

Sin embargo, la transferencia hacia una carpeta abierta en el administrador de archivos funcionó.

Por tanto, tanto la sesión gráfica como el destino utilizado resultaron relevantes para nuestras pruebas.

No demostramos cuál de esos factores explicaba por sí solo el resultado.

---

## 23. Prueba inversa: Ubuntu hacia Windows

Después de comprobar la transferencia anterior, intentamos copiar el archivo desde Ubuntu hacia Windows.

### 23.1. Procedimiento

1. Abrimos la carpeta Descargas de Ubuntu.
2. Seleccionamos el archivo de prueba.
3. Intentamos arrastrarlo al Explorador de archivos de Windows 11.

### 23.2. Comportamiento observado

El archivo parecía quedar retenido dentro de la ventana de Ubuntu.

El puntero indicaba que se estaba arrastrando el documento, pero el archivo no conseguía atravesar el borde de la ventana de VirtualBox.

### 23.3. Pruebas realizadas

Intentamos arrastrarlo por:

- El lado izquierdo de la ventana.
- El lado derecho de la ventana.

### 23.4. Resultado

La transferencia no se completó por ninguno de los dos lados.

**Estado: Ubuntu → Windows mediante Arrastrar y soltar no funciona en nuestra configuración probada.**

---

## 24. Diagnosticar los servicios de Guest Additions

Como la sesión ya utilizaba X11, decidimos comprobar los procesos de integración de VirtualBox.

### 24.1. Comando ejecutado

```bash
pgrep -a -f 'VBoxClient|VBoxDRMClient'
```

### 24.2. ¿Qué hace?

- `pgrep`: busca procesos.
- `-a`: muestra la línea de comandos asociada a cada proceso.
- `-f`: permite buscar coincidencias en la línea de comandos completa.
- `VBoxClient|VBoxDRMClient`: patrones utilizados para identificar los procesos de integración.

### 24.3. Procesos observados

Entre los resultados aparecieron:

```text
/usr/bin/VBoxDRMClient
/usr/bin/VBoxClient --clipboard
/usr/bin/VBoxClient --seamless
/usr/bin/VBoxClient --draganddrop
/usr/bin/VBoxClient --vmsvga-session
```

También aparecieron dos entradas de varios procesos.

### 24.4. Interpretación

Confirmamos que el servicio de arrastrar y soltar estaba iniciado.

La existencia de dos procesos asociados a algunas funciones no demuestra por sí sola un error.

### 24.5. Conclusión

El fallo de Ubuntu hacia Windows no se debía simplemente a que faltara el proceso `VBoxClient --draganddrop`.

La causa exacta quedó sin determinar.

---

# PARTE VI — CARPETAS COMPARTIDAS

## 25. Buscar una alternativa para intercambiar archivos

Como arrastrar archivos desde Ubuntu hacia Windows continuaba fallando, decidimos utilizar otra función de Guest Additions:

**Carpetas compartidas.**

### 25.1. ¿Qué son?

Permiten que una carpeta del sistema anfitrión esté disponible para la máquina virtual.

Esto evita tener que transferir manualmente un archivo entre dos ubicaciones separadas.

En nuestra práctica, Windows y Ubuntu acceden a una misma carpeta.

---

## 26. Crear la carpeta en Windows 11

En Windows creamos una carpeta destinada a compartir archivos con Ubuntu.

### 26.1. Ruta utilizada

```text
E:\VirtualBox\Compartida-Ubuntu
```

### 26.2. Objetivo

Utilizarla como lugar de intercambio de archivos de prueba.

---

## 27. Configurar la carpeta compartida en VirtualBox

Con la máquina virtual iniciada, abrimos:

**Dispositivos → Carpetas compartidas → Configuración de carpetas compartidas...**

### 27.1. Procedimiento

1. Abrimos la configuración de carpetas compartidas.
2. Hicimos clic en el ícono para añadir una carpeta.
3. Seleccionamos la carpeta creada en Windows.
4. Configuramos sus opciones.
5. Confirmamos con **Aceptar**.

### 27.2. Configuración utilizada

| Campo | Valor |
|---|---|
| Ruta de la carpeta | `E:\VirtualBox\Compartida-Ubuntu` |
| Nombre de la carpeta | `Compartida-Ubuntu` |
| Mount Point | Vacío |
| Sólo lectura | Desmarcado |
| Automontar | Marcado |
| Make Machine-permanent | Marcado |
| Make Global | Desmarcado |

### 27.3. ¿Qué significa Automontar?

Permite que VirtualBox intente montar automáticamente la carpeta compartida en Ubuntu.

### 27.4. ¿Qué significa Make Machine-permanent?

Conserva la configuración de esa carpeta compartida para la máquina virtual.

### 27.5. ¿Qué significa Sólo lectura?

Si se activa, restringe la escritura desde el invitado.

La dejamos desmarcada porque queríamos comprobar lectura y escritura en ambos sentidos.

---

## 28. Primera comprobación del montaje

Abrimos la terminal de Ubuntu.

### 28.1. Comando ejecutado

```bash
ls -la /media
```

### 28.2. Resultado

Apareció una carpeta llamada:

`osmaily`

Pero todavía no veíamos la carpeta compartida.

### 28.3. Comprobación adicional

Ejecutamos:

```bash
ls -la /media/osmaily
```

### 28.4. Resultado

Aparecía:

`VBox_GAs_7.2.22`

Esta era la unidad óptica de Guest Additions.

### 28.5. Interpretación

En ese momento todavía no habíamos localizado la carpeta compartida mediante el listado de `/media`.

No podíamos concluir que estuviera disponible.

---

## 29. Montar manualmente la carpeta compartida

Para comprobar que Ubuntu podía acceder al recurso, realizamos un montaje manual temporal.

### 29.1. Comando ejecutado

```bash
sudo mount -t vboxsf Compartida-Ubuntu /mnt
```

### 29.2. Explicación del comando

| Elemento | Función |
|---|---|
| `sudo` | Ejecuta la operación como administrador |
| `mount` | Monta un sistema de archivos |
| `-t vboxsf` | Indica el tipo de sistema de archivos de carpetas compartidas de VirtualBox |
| `Compartida-Ubuntu` | Nombre del recurso compartido |
| `/mnt` | Directorio utilizado para el montaje temporal |

### 29.3. Resultado

El comando terminó sin errores.

Después ejecutamos:

```bash
ls -la /mnt
```

### 29.4. Resultado inicial

La carpeta apareció vacía.

Esto permitió comprobar que el recurso podía montarse, pero todavía necesitábamos verificar el intercambio real de archivos.

### 29.5. Aclaración

Este montaje manual no sustituye al automontaje permanente que configuramos posteriormente.

Tampoco convierte `/mnt` en una ubicación obligatoria: fue el directorio utilizado para nuestra prueba.

---

# PARTE VII — VERIFICACIÓN DE LECTURA Y ESCRITURA

## 30. Prueba de Windows hacia Ubuntu

En Windows 11 creamos un archivo dentro de la carpeta compartida.

### 30.1. Archivo creado

`prueba-compartida.txt`

### 30.2. Contenido

```text
Archivo creado en Windows 11 para comprobar la carpeta compartida.
```

### 30.3. Comprobación desde Ubuntu

Ejecutamos:

```bash
ls -la /mnt
```

### 30.4. Resultado

Ubuntu mostró:

`prueba-compartida.txt`

El archivo tenía 66 bytes.

### 30.5. Conclusión

**Windows → Ubuntu mediante carpeta compartida: funciona.**

---

## 31. Prueba de Ubuntu hacia Windows

Después realizamos la operación contraria.

### 31.1. Comando ejecutado

```bash
echo "Archivo creado desde Ubuntu hacia Windows 11" > /mnt/prueba-desde-ubuntu.txt
```

### 31.2. Explicación

- `echo`: escribe un texto en la salida.
- `>`: redirige ese texto hacia un archivo.
- `/mnt/prueba-desde-ubuntu.txt`: ruta utilizada para crear el archivo dentro de la carpeta compartida.

### 31.3. ¿Por qué no utilizamos sudo?

Queríamos comprobar que nuestro usuario podía escribir en el recurso compartido sin elevar permisos para cada operación.

### 31.4. Comprobación desde Ubuntu

Ejecutamos:

```bash
ls -la /mnt
```

### 31.5. Resultado

Aparecieron los dos archivos:

```text
prueba-compartida.txt
prueba-desde-ubuntu.txt
```

### 31.6. Comprobación desde Windows

Abrimos la carpeta:

```text
E:\VirtualBox\Compartida-Ubuntu
```

Y encontramos `prueba-desde-ubuntu.txt`.

Además, abrimos el documento en Windows y comprobamos que contenía:

```text
Archivo creado desde Ubuntu hacia Windows 11
```

El archivo tenía 45 bytes.

### 31.7. Conclusión

**Ubuntu → Windows mediante carpeta compartida: funciona.**

La lectura y escritura bidireccional quedaron verificadas.

---

# PARTE VIII — AUTOMONTAJE Y PERMISOS

## 32. Comprobar el automontaje después de reiniciar

Aunque el montaje manual funcionó, queríamos evitar tener que ejecutarlo cada vez que iniciáramos Ubuntu.

Por eso habíamos marcado:

**Automontar**

Reiniciamos Ubuntu y comprobamos el resultado.

### 32.1. Comando utilizado

```bash
findmnt -t vboxsf
```

### 32.2. ¿Qué hace?

Muestra los sistemas de archivos montados que coinciden con el tipo solicitado.

En este caso:

`vboxsf`

### 32.3. Resultado obtenido

```text
TARGET                         SOURCE             FSTYPE
/media/sf_Compartida-Ubuntu    Compartida-Ubuntu  vboxsf
```

### 32.4. Interpretación

VirtualBox había montado automáticamente la carpeta en:

```text
/media/sf_Compartida-Ubuntu
```

### 32.5. Conclusión

**El automontaje funcionaba correctamente después del reinicio.**

---

## 33. Problema: permisos insuficientes

Aunque la carpeta estaba montada, al abrirla desde el administrador de archivos de Ubuntu apareció el mensaje:

**No se pudo mostrar este lugar.**

Y posteriormente:

**No tiene los permisos suficientes para ver el contenido de «sf_Compartida-Ubuntu».**

### 33.1. ¿Qué significaba?

La carpeta existía y estaba montada, pero nuestro usuario no tenía todavía los permisos necesarios para acceder a ese montaje automático.

### 33.2. ¿Por qué el montaje manual sí funcionaba?

El montaje realizado mediante `sudo` utilizaba privilegios administrativos y presentaba permisos diferentes a los del automontaje.

Por eso no era suficiente comprobar que `/mnt` funcionaba.

Necesitábamos verificar el acceso al montaje automático con la cuenta normal de Ubuntu.

---

## 34. Solución: agregar el usuario al grupo vboxsf

Las carpetas compartidas automontadas por VirtualBox en Linux suelen utilizar el grupo:

`vboxsf`

Para permitir el acceso a nuestro usuario ejecutamos:

```bash
sudo usermod -aG vboxsf osmaily
```

### 34.1. Explicación del comando

| Elemento | Función |
|---|---|
| `sudo` | Ejecuta la operación con permisos administrativos |
| `usermod` | Modifica propiedades de una cuenta de usuario |
| `-a` | Agrega a los grupos indicados sin sustituir los grupos actuales |
| `-G` | Especifica grupos suplementarios |
| `vboxsf` | Grupo asociado al acceso a carpetas compartidas de VirtualBox |
| `osmaily` | Cuenta a la que agregamos el permiso |

### 34.2. ¿Por qué es importante utilizar -aG?

Porque queremos añadir un grupo suplementario sin eliminar los grupos a los que ya pertenece el usuario.

### 34.3. Aplicar el cambio

Después de ejecutar el comando:

1. Reiniciamos Ubuntu.
2. Iniciamos sesión con `osmaily`.
3. Abrimos el administrador de archivos.
4. Accedimos a `sf_Compartida-Ubuntu`.

### 34.4. Resultado definitivo

La carpeta se abrió correctamente.

Ubuntu mostró:

- `prueba-compartida.txt`
- `prueba-desde-ubuntu.txt`

No volvió a aparecer el error de permisos en la comprobación realizada.

### 34.5. Conclusión

**El usuario obtuvo acceso correcto a la carpeta compartida automontada después de agregarlo al grupo `vboxsf` y reiniciar Ubuntu.**

---

## 35. Diferencia entre montaje manual y automontaje

| Característica | Montaje manual | Automontaje |
|---|---|---|
| Procedimiento utilizado | `mount -t vboxsf` | Opción Automontar |
| Ruta utilizada en la práctica | `/mnt` | `/media/sf_Compartida-Ubuntu` |
| Requiere ejecutar un comando | Sí | No, cuando funciona correctamente |
| Persistencia del montaje manual tras reinicio | No garantizada | Se vuelve a montar automáticamente |
| Problema de permisos observado | No | Sí, inicialmente |
| Solución aplicada | No fue necesaria | Grupo `vboxsf` |

### Aprendizaje

Una carpeta compartida puede estar:

1. Correctamente configurada en VirtualBox.
2. Correctamente montada en Linux.
3. Pero todavía ser inaccesible para un usuario por falta de permisos.

Por eso debemos comprobar cada etapa por separado.

---

# PARTE IX — RESULTADOS Y APRENDIZAJES

## 36. Resumen de comandos utilizados

| Comando | Propósito |
|---|---|
| `ping -c 4 google.com` | Verificar la conexión de red |
| `sudo apt-get update` | Actualizar índices de paquetes |
| `sudo apt-get install gcc make perl` | Instalar herramientas de compilación |
| `sudo apt-get install linux-headers-$(uname -r)` | Comprobar e instalar encabezados del kernel activo |
| `echo $XDG_SESSION_TYPE` | Identificar la sesión gráfica |
| `pgrep -a -f 'VBoxClient\|VBoxDRMClient'` | Inspeccionar los procesos de integración de VirtualBox |
| `ls -la /media` | Consultar el contenido de `/media` |
| `ls -la /media/osmaily` | Consultar los medios montados para el usuario |
| `sudo mount -t vboxsf Compartida-Ubuntu /mnt` | Montar manualmente una carpeta compartida |
| `ls -la /mnt` | Comprobar los archivos del montaje manual |
| `echo "Archivo creado desde Ubuntu hacia Windows 11" > /mnt/prueba-desde-ubuntu.txt` | Crear un archivo de prueba desde Ubuntu |
| `findmnt -t vboxsf` | Verificar las carpetas compartidas montadas |
| `sudo usermod -aG vboxsf osmaily` | Agregar el usuario al grupo de acceso a carpetas compartidas |

---

## 37. Problemas encontrados y soluciones aplicadas

| Problema | Diagnóstico o solución | Resultado |
|---|---|---|
| Internet desconectado después de instalar Ubuntu | Reconectar el adaptador de red y ejecutar ping | Resuelto |
| Necesidad de herramientas de compilación | Instalar `gcc`, `make` y `perl` | Resuelto |
| Verificar compatibilidad con el kernel | Comprobar `linux-headers-$(uname -r)` | Encabezados disponibles |
| Arrastrar archivos hacia Ubuntu fallaba | Comprobar sesión Wayland, cambiar a X11 y probar dentro de Descargas | Transferencia Windows → Ubuntu funcionando |
| Archivos de Ubuntu se cerró inesperadamente | Volver a abrir la aplicación | Permitió continuar |
| Arrastrar Ubuntu hacia Windows fallaba | Comprobar X11 y procesos de VBoxClient | Sin resolver |
| Carpeta compartida no localizada inicialmente | Realizar montaje manual | Resuelto para la prueba |
| Automontaje sin acceso del usuario | Verificar montaje mediante `findmnt` | Montaje confirmado |
| Permisos insuficientes para abrir la carpeta | Agregar el usuario al grupo `vboxsf` y reiniciar | Resuelto |
| Necesidad de transferir archivos en ambos sentidos | Utilizar carpeta compartida | Verificado |

---

## 38. Estado final de las funciones

| Función | Resultado |
|---|---|
| Instalación de Guest Additions 7.2.22 | Completada |
| Compilación de módulos principales | Sin errores visibles |
| Reinicio del sistema | Correcto |
| Redimensionamiento automático de pantalla | Funciona |
| Integración del ratón | Funciona |
| Portapapeles Windows → Ubuntu | Funciona |
| Portapapeles Ubuntu → Windows | Funciona |
| Arrastrar Windows → Ubuntu mediante Archivos | Funciona en la prueba con X11 |
| Arrastrar Ubuntu → Windows | No funciona en las pruebas realizadas |
| Carpeta compartida Windows → Ubuntu | Funciona |
| Carpeta compartida Ubuntu → Windows | Funciona |
| Automontaje después de reiniciar | Funciona |
| Acceso con el usuario `osmaily` | Funciona después de corregir permisos |

---

## 39. Comparación con la demostración del profesor

Durante la Clase 05, el profesor mostró la instalación de Guest Additions en Windows 10 y Ubuntu.

En la demostración de Ubuntu:

1. Actualizó los índices de paquetes.
2. Instaló `gcc`, `make` y `perl`.
3. Insertó el CD de Guest Additions.
4. Ejecutó `autorun.sh`.
5. Comprobó que la pantalla se adaptaba al tamaño de la ventana.
6. Probó funciones de integración.
7. Comentó que determinadas funciones podían necesitar un reinicio.

### Diferencias de nuestra práctica

En nuestro caso:

- Instalamos Guest Additions 7.2.22.
- Verificamos los encabezados del kernel.
- Reiniciamos Ubuntu.
- Comprobamos la integración gráfica y del ratón.
- Verificamos el portapapeles en ambos sentidos.
- Detectamos un error de Arrastrar y soltar.
- Identificamos que Ubuntu utilizaba Wayland.
- Cambiamos a Ubuntu on Xorg.
- Confirmamos la sesión X11.
- Comprobamos los procesos `VBoxClient`.
- Conseguimos transferir un archivo de Windows hacia Ubuntu.
- Detectamos que la transferencia inversa seguía fallando.
- Configuramos una carpeta compartida.
- Probamos lectura y escritura bidireccional.
- Verificamos el automontaje.
- Corregimos los permisos mediante `vboxsf`.

Por tanto, nuestra práctica incluyó comprobaciones y soluciones adicionales a las mostradas en el video.

---

## 40. Consideraciones de seguridad

Las funciones de integración facilitan el trabajo, pero también permiten compartir información entre el anfitrión y la máquina virtual.

Por ello:

- Habilitamos el portapapeles bidireccional para realizar pruebas concretas.
- Utilizamos archivos de prueba para las transferencias.
- Creamos una carpeta compartida específica, en lugar de compartir todo el disco de Windows.
- Evitamos incluir contraseñas en la documentación.
- Concedimos al usuario acceso al grupo `vboxsf` porque necesitábamos utilizar la carpeta compartida.
- Debemos recordar que este acceso permite interactuar con los archivos expuestos mediante esa carpeta.

Si en el futuro trabajamos con contenido sensible, será conveniente revisar qué funciones de integración permanecen habilitadas.

---

## 41. Comprobaciones finales

- [x] Iniciar Ubuntu.
- [x] Reconectar Internet.
- [x] Comprobar conexión mediante ping.
- [x] Ejecutar `sudo apt-get update`.
- [x] Instalar gcc, make y perl.
- [x] Comprobar encabezados del kernel.
- [x] Insertar imagen de Guest Additions.
- [x] Ejecutar `autorun.sh`.
- [x] Autorizar la instalación.
- [x] Comprobar finalización del instalador.
- [x] Reiniciar Ubuntu.
- [x] Verificar redimensionamiento de pantalla.
- [x] Verificar integración del ratón.
- [x] Configurar portapapeles bidireccional.
- [x] Probar Windows → Ubuntu mediante portapapeles.
- [x] Probar Ubuntu → Windows mediante portapapeles.
- [x] Activar Arrastrar y soltar.
- [x] Documentar error de transferencia.
- [x] Identificar Wayland.
- [x] Cambiar a X11.
- [x] Comprobar X11.
- [x] Transferir archivo Windows → Ubuntu mediante Arrastrar y soltar.
- [x] Comprobar procesos de Guest Additions.
- [x] Documentar limitación Ubuntu → Windows mediante Arrastrar y soltar.
- [x] Crear carpeta compartida en Windows.
- [x] Configurar carpeta compartida en VirtualBox.
- [x] Montar temporalmente la carpeta mediante `vboxsf`.
- [x] Comprobar archivo creado desde Windows.
- [x] Crear archivo desde Ubuntu.
- [x] Comprobar archivo desde Windows.
- [x] Reiniciar y verificar automontaje.
- [x] Identificar problema de permisos.
- [x] Agregar usuario al grupo `vboxsf`.
- [x] Reiniciar Ubuntu.
- [x] Verificar acceso a la carpeta compartida.
- [x] Crear instantánea posterior a la configuración de Guest Additions.

---

**Estado:** Completada y verificada.

**Fecha de creación:** 14/11/2026, 08:36.

**Nombre:** `Ubuntu 22.04.3 - Guest Additions 7.2.22 configuradas`.

**Resultado:** Instantánea creada correctamente con Ubuntu apagado, conservando la instalación de Guest Additions 7.2.22, la sesión X11, el portapapeles bidireccional y la carpeta compartida con permisos configurados.

---

## 43. Conclusión de la práctica

Durante esta práctica instalamos correctamente Guest Additions 7.2.22 en Ubuntu 22.04.3.

Comprobamos que las principales funciones de integración entre el sistema anfitrión Windows 11 y el sistema invitado Ubuntu funcionan correctamente.

También aprendimos a diagnosticar problemas que no se resuelven simplemente reinstalando el programa.

En particular, identificamos la diferencia entre Wayland y X11, examinamos los procesos de integración de VirtualBox y configuramos una alternativa funcional para compartir archivos mediante carpetas compartidas.

La transferencia mediante Arrastrar y soltar de Ubuntu hacia Windows quedó pendiente, pero pudimos intercambiar archivos correctamente en ambos sentidos mediante una carpeta compartida.

### Aprendizajes principales

1. Guest Additions necesita componentes que interactúan con el kernel Linux.
2. Es importante instalar las dependencias de compilación adecuadas.
3. El reinicio puede ser necesario para activar completamente los módulos y servicios.
4. La integración gráfica y el portapapeles son funciones independientes de Arrastrar y soltar.
5. Wayland y X11 pueden presentar diferencias de compatibilidad.
6. Una carpeta compartida ofrece una alternativa para intercambiar archivos sin arrastrarlos.
7. El automontaje y los permisos de usuario son aspectos diferentes.
8. El grupo `vboxsf` es importante para acceder a carpetas compartidas de VirtualBox desde Linux.
9. Es necesario comprobar cada función de forma práctica, en lugar de asumir que funciona porque el instalador terminó correctamente.

**Resultado final: práctica de instalación y configuración de Guest Additions completada, con las principales funciones verificadas y la limitación restante documentada.**

---

## 44. Referencias

- Repositorio de la asignatura del profesor:  
  https://github.com/ConquerBlocks/conquerblocks-linux-terminal

- Documentación oficial de Oracle VirtualBox:  
  https://www.virtualbox.org/manual/

- Documentación oficial de Ubuntu:  
  https://documentation.ubuntu.com/

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

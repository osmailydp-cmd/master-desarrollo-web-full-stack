# Clase 05 — Instalación de Guest Additions en VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox — Instalación y configuración  
**Clase:** 05 — Instalación de Guest Additions en VirtualBox  
**Herramienta:** Oracle VM VirtualBox  
**Sistemas operativos:** Windows 10 y Ubuntu 22.04  
**Versión de Guest Additions utilizada por el profesor:** 7.0.12

---

## 1. Introducción

En esta clase aprendemos qué son las **VirtualBox Guest Additions**, para qué sirven y cómo instalarlas en los sistemas operativos Windows 10 y Ubuntu.

Cuando instalamos un sistema operativo dentro de VirtualBox, podemos utilizarlo como si fuera una computadora independiente. Sin embargo, algunas funciones de integración con el equipo anfitrión pueden estar limitadas.

Guest Additions proporciona componentes adicionales que mejoran la comunicación y la experiencia de uso entre ambos sistemas.

Durante la clase, el profesor utiliza dos máquinas virtuales creadas anteriormente:

- **Windows 10:** instalación previamente preparada.
- **Solo Ubuntu:** instalación de Ubuntu previamente preparada.

El objetivo es instalar Guest Additions en ambos sistemas, habilitar las funciones de integración y comprobar su funcionamiento.

### 1.1. Contenido de la clase

Según el material proporcionado por el profesor, la clase comprende:

1. ¿Qué son las Guest Additions?
2. Instalación de Guest Additions en Windows 10.
3. Instalación de Guest Additions en Ubuntu.

### 1.2. Objetivos de aprendizaje

Al finalizar la clase debemos comprender:

- Qué funciones proporciona Guest Additions.
- Cómo montar el CD virtual de instalación.
- Cómo ejecutar el instalador correspondiente a cada sistema operativo.
- Por qué es necesario disponer de permisos administrativos.
- Para qué sirven las herramientas `gcc`, `make` y `perl` en Ubuntu.
- Cómo configurar el portapapeles compartido.
- Cómo habilitar arrastrar y soltar.
- Cómo comprobar la adaptación automática de la pantalla.
- Por qué puede ser necesario reiniciar después de instalar Guest Additions.
- Cómo conservar una instantánea antes y después de modificar una máquina virtual.

---

# PARTE I — FUNDAMENTOS

## 2. ¿Qué son las Guest Additions?

**Guest Additions** es un conjunto de controladores, servicios y programas que se instalan dentro del sistema operativo invitado de VirtualBox.

Su finalidad es mejorar la integración entre el sistema anfitrión y el sistema invitado.

### 2.1. Sistema anfitrión y sistema invitado

Antes de continuar, debemos distinguir ambos conceptos.

**Sistema anfitrión (Host)**

Es el sistema operativo de la computadora física donde ejecutamos VirtualBox.

Por ejemplo:

- Windows 11.
- macOS.
- Linux.

**Sistema invitado (Guest)**

Es el sistema operativo que se ejecuta dentro de la máquina virtual.

Por ejemplo:

- Windows 10.
- Ubuntu.

En la demostración del profesor, VirtualBox se ejecuta sobre macOS y las máquinas invitadas utilizan Windows 10 y Ubuntu.

### 2.2. ¿Por qué instalar Guest Additions?

Sin Guest Additions, una máquina virtual puede funcionar correctamente, pero presentar ciertas limitaciones:

- Dificultades para adaptar la resolución de pantalla.
- Menor integración del puntero del ratón.
- Limitaciones para copiar y pegar contenido entre sistemas.
- Imposibilidad de utilizar ciertas funciones de arrastrar y soltar.
- Menor integración con determinadas funciones del escritorio.

Guest Additions permite habilitar y mejorar esas capacidades, siempre que el sistema operativo y la configuración sean compatibles.

---

## 3. Funciones principales de Guest Additions

El profesor destaca cuatro funciones fundamentales.

### 3.1. Portapapeles compartido

El portapapeles es el mecanismo que permite copiar y pegar información.

Por ejemplo, cuando seleccionamos un texto y utilizamos:

- `Ctrl + C` para copiar en Windows o Linux.
- `Ctrl + V` para pegar en Windows o Linux.

En macOS normalmente se utiliza `Command` para estas operaciones.

**¿Qué proporciona Guest Additions?**

Permite compartir contenido compatible del portapapeles entre el equipo anfitrión y la máquina virtual.

Por ejemplo:

1. Copiar un fragmento de texto en macOS.
2. Entrar en Windows 10 virtualizado.
3. Pegar el texto dentro de Windows.

También podemos realizar la operación en sentido contrario si la configuración lo permite.

### 3.2. Arrastrar y soltar

Esta función se conoce en VirtualBox como **Drag'n'Drop**.

Permite transferir determinados elementos compatibles arrastrándolos con el ratón entre el sistema anfitrión y el invitado.

Por ejemplo:

1. Seleccionar un archivo del equipo anfitrión.
2. Mantener presionado el botón del ratón.
3. Arrastrarlo hacia la máquina virtual.
4. Soltarlo en una ubicación compatible del sistema invitado.

**Importante:** esta función depende de Guest Additions, del entorno gráfico y de la compatibilidad de las aplicaciones. No todos los formatos o tipos de transferencia funcionan necesariamente.

### 3.3. Resolución de pantalla

Una máquina virtual puede iniciar utilizando una resolución fija.

Por ejemplo:

`1024 × 768`

Esto puede provocar que el escritorio ocupe solamente una parte de la ventana de VirtualBox.

Con los componentes gráficos adecuados de Guest Additions, es posible que el sistema invitado adapte su resolución al tamaño de la ventana.

**Ejemplo de funcionamiento:**

1. Abrimos Ubuntu en VirtualBox.
2. Ampliamos la ventana.
3. El escritorio aumenta su área de visualización.
4. Reducimos la ventana.
5. El escritorio se adapta nuevamente.

Esto mejora la experiencia al trabajar con el sistema operativo virtualizado.

### 3.4. Integración del ratón

En determinadas configuraciones, el puntero del ratón puede quedar capturado dentro de la máquina virtual.

Esto obliga a utilizar una tecla especial para liberarlo.

Guest Additions permite mejorar la integración del puntero y facilita la entrada y salida entre ambas ventanas.

**Nota:** VirtualBox también puede ofrecer integración del puntero mediante dispositivos apuntadores virtuales compatibles, por lo que su funcionamiento no depende exclusivamente de Guest Additions en todos los casos.

---

## 4. Opciones de integración disponibles en VirtualBox

VirtualBox permite configurar el comportamiento del portapapeles y de arrastrar y soltar.

### 4.1. Opciones habituales

| Opción | Significado |
|---|---|
| Disabled | Función deshabilitada |
| Host to Guest | Del anfitrión al invitado |
| Guest to Host | Del invitado al anfitrión |
| Bidirectional | En ambos sentidos |

### 4.2. ¿Qué significa Bidirectional?

Significa **bidireccional**.

Cuando configuramos una función como `Bidirectional`, permitimos la comunicación en las dos direcciones.

Por ejemplo:

**Anfitrión → Invitado**

Copiar texto desde macOS y pegarlo en Ubuntu.

**Invitado → Anfitrión**

Copiar texto desde Ubuntu y pegarlo en macOS.

### 4.3. Diferencia entre instalar y habilitar

Es importante comprender que son dos operaciones distintas.

**Instalar Guest Additions**

Incorpora al sistema invitado los controladores y servicios necesarios.

**Configurar las opciones de integración**

Permite indicar qué funciones queremos utilizar y en qué direcciones.

Por tanto, instalar Guest Additions no implica necesariamente que todas las funciones queden habilitadas.

---

# PARTE II — INSTALACIÓN EN WINDOWS 10

## 5. Preparar la máquina virtual Windows 10

El profesor comienza utilizando la máquina virtual:

`Windows 10`

Esta máquina contiene una instalación de Windows previamente completada.

### 5.1. Iniciar Windows 10

El procedimiento es:

1. Abrir **Oracle VM VirtualBox Administrador**.
2. Localizar la máquina virtual **Windows 10**.
3. Seleccionarla.
4. Hacer clic en **Iniciar**.
5. Esperar a que aparezca el escritorio.

### 5.2. Comprobar el sistema

En la demostración aparecen:

- Papelera de reciclaje.
- Microsoft Edge.
- Barra de tareas.
- Menú Inicio.
- Explorador de archivos.

La máquina aparece en VirtualBox con estado:

**Corriendo (Running)**

---

## 6. Insertar el CD virtual de Guest Additions

Guest Additions se distribuye mediante una imagen de disco que podemos conectar a la unidad óptica de la máquina virtual.

### 6.1. Procedimiento

Con Windows 10 encendido:

1. Localizar la barra de menús de la ventana de VirtualBox.
2. Abrir **Devices** o **Dispositivos**, según el idioma de la interfaz.
3. Seleccionar **Insert Guest Additions CD image...**.

En español, esta opción corresponde a:

**Insertar imagen de CD de los complementos del invitado...**

### 6.2. ¿Qué ocurre al seleccionar esta opción?

VirtualBox conecta una imagen de CD que contiene los instaladores de Guest Additions.

Windows detecta el medio como una unidad óptica.

### 6.3. ¿Es necesario descargar el instalador manualmente?

Normalmente, VirtualBox puede utilizar la imagen de Guest Additions proporcionada con su instalación.

En determinadas situaciones puede ser necesario localizar o descargar la imagen correspondiente.

En esta clase, el profesor utiliza la opción incluida en VirtualBox.

---

## 7. Comprobar que Windows reconoce el CD

Después de insertar la imagen, el profesor abre el Explorador de archivos.

### 7.1. Procedimiento

1. Abrir **Explorador de archivos**.
2. Seleccionar **Este equipo**.
3. Buscar la sección **Dispositivos y unidades**.
4. Localizar la unidad óptica de VirtualBox.

### 7.2. Resultado observado

Aparece:

`Unidad de CD (D:) VirtualBox Guest Additions`

Esto indica que Windows ha reconocido el medio virtual.

### 7.3. ¿Qué representa la letra D:?

Windows utiliza letras para identificar unidades de almacenamiento.

En esta demostración:

- `C:` corresponde al disco principal de Windows.
- `D:` corresponde a la unidad óptica virtual.

La letra puede ser diferente en otras instalaciones.

---

## 8. Identificar el instalador de Windows

El profesor abre la unidad de CD y revisa los archivos disponibles.

### 8.1. Archivos encontrados

Entre los archivos del disco aparecen instaladores para diferentes sistemas:

| Archivo | Sistema correspondiente |
|---|---|
| `VBoxWindowsAdditions.exe` | Windows |
| `VBoxLinuxAdditions.run` | Linux |
| `autorun.sh` | Sistemas Linux compatibles |
| `VBoxDarwinAdditions.pkg` | macOS |

### 8.2. Archivo utilizado por el profesor

`VBoxWindowsAdditions.exe`

### 8.3. Aclaración sobre el material de la clase

En el PDF, el apartado de Windows 10 menciona ejecutar `autorun.sh`.

Sin embargo, durante el video el profesor ejecuta el instalador correspondiente a Windows.

Por tanto, documentamos como procedimiento realizado:

**Ejecutar `VBoxWindowsAdditions.exe`.**

El archivo `autorun.sh` corresponde al procedimiento de Linux que veremos posteriormente.

---

## 9. Ejecutar Guest Additions como administrador

### 9.1. Procedimiento

1. Abrir la unidad de CD de Guest Additions.
2. Localizar `VBoxWindowsAdditions.exe`.
3. Hacer clic derecho sobre el archivo.
4. Seleccionar **Ejecutar como administrador**.
5. Autorizar la ejecución si Windows solicita confirmación.
6. Esperar a que aparezca el asistente.

### 9.2. ¿Por qué son necesarios permisos administrativos?

Guest Additions necesita instalar controladores y otros componentes dentro de Windows.

Algunas de esas operaciones requieren permisos elevados.

### 9.3. Versión utilizada

La ventana del instalador muestra:

**Oracle VM VirtualBox Guest Additions 7.0.12 Setup**

---

## 10. Asistente de instalación en Windows

### 10.1. Pantalla de bienvenida

El asistente muestra:

**Welcome to Oracle VM VirtualBox Guest Additions 7.0.12 Setup**

El profesor pulsa:

**Next**

### 10.2. Selección de componentes

Aparece la pantalla:

**Choose Components**

En ella podemos observar:

| Componente | Estado |
|---|---|
| VirtualBox Guest Additions | Seleccionado |
| Direct3D Support (Experimental) | No habilitado para seleccionar |
| Start menu entries | Seleccionado |

### 10.3. ¿Qué significa cada componente?

**VirtualBox Guest Additions**

Incluye los componentes principales de integración con el sistema invitado.

**Direct3D Support (Experimental)**

Está relacionado con determinadas funciones de compatibilidad gráfica.

En esta demostración aparece deshabilitado para su selección.

**Start menu entries**

Permite agregar entradas relacionadas con Guest Additions al menú Inicio.

### 10.4. Continuar la instalación

El profesor mantiene la selección mostrada y pulsa:

**Install**

---

## 11. Instalación de los componentes de Windows

Después de pulsar **Install**, el instalador comienza a configurar Guest Additions.

### 11.1. Operaciones observadas

La ventana muestra:

- Una barra de progreso.
- Operaciones de instalación.
- Mensajes técnicos de los componentes.
- Información relacionada con certificados y controladores.

### 11.2. ¿Qué está realizando el instalador?

Entre otras tareas, Guest Additions puede instalar:

- Controladores de integración.
- Componentes gráficos.
- Servicios de VirtualBox.
- Herramientas para la sesión del usuario.

### 11.3. ¿Aparecieron errores?

En las capturas revisadas no aparece un error que interrumpa la instalación.

El asistente consigue avanzar hasta la pantalla de finalización.

---

## 12. Finalizar Guest Additions y reiniciar Windows

El asistente muestra:

**Completing Oracle VM VirtualBox Guest Additions 7.0.12 Setup**

### 12.1. Opciones disponibles

**Reboot now**

Reiniciar inmediatamente.

**I want to manually reboot later**

Reiniciar manualmente más adelante.

### 12.2. Elección del profesor

Mantiene seleccionada:

**Reboot now**

Después hace clic en:

**Finish**

### 12.3. ¿Por qué reiniciar?

Guest Additions instala componentes que pueden requerir la recarga de controladores y servicios.

Reiniciar permite completar la inicialización de esos componentes.

### 12.4. Resultado

Windows vuelve a arrancar y muestra nuevamente el escritorio.

---

## 13. Comprobar que Guest Additions está instalado en Windows

Después del reinicio, el profesor revisa el área de notificaciones de Windows.

### 13.1. Procedimiento

1. Esperar a que aparezca el escritorio.
2. Localizar el área de notificaciones de la barra de tareas.
3. Buscar el icono de Guest Additions.
4. Situar el puntero del ratón sobre él.

### 13.2. Resultado observado

Aparece el texto:

**Oracle VM VirtualBox Guest Additions 7.0.12**

### 13.3. ¿Qué confirma?

Que el componente de Guest Additions está presente y que su icono aparece activo en la sesión.

### 13.4. ¿Qué no confirma todavía?

No demuestra por sí solo que todas las funciones de integración estén operativas.

Para ello debemos realizar pruebas específicas.

---

## 14. Configurar el portapapeles y arrastrar y soltar en Windows

El profesor abre la configuración de la máquina virtual.

### 14.1. Ruta utilizada

**Configuración → General → Advanced**

Esta ruta corresponde a la versión de VirtualBox mostrada durante la clase.

### 14.2. Opciones configuradas

| Campo | Valor seleccionado |
|---|---|
| Shared Clipboard | Bidirectional |
| Drag'n'Drop | Bidirectional |

### 14.3. Procedimiento

1. Abrir la configuración de **Windows 10**.
2. Seleccionar **General**.
3. Abrir **Advanced**.
4. Buscar **Shared Clipboard**.
5. Seleccionar **Bidirectional**.
6. Buscar **Drag'n'Drop**.
7. Seleccionar **Bidirectional**.
8. Confirmar con **OK**.

### 14.4. ¿Qué se consigue?

Se habilita el intercambio bidireccional de contenido compatible mediante el portapapeles.

También se habilita la posibilidad de arrastrar y soltar elementos compatibles entre el anfitrión y Windows.

### 14.5. ¿Quedó verificado que ambas funciones funcionan?

Las capturas confirman que las opciones fueron configuradas.

No muestran una prueba individual concluyente de cada función en Windows.

Por tanto, no debemos registrar todas las transferencias como comprobadas únicamente por haber habilitado las opciones.

---

## 15. Apagar Windows después de instalar Guest Additions

Después de configurar la integración, el profesor apaga la máquina.

### 15.1. Procedimiento

1. Guardar cualquier trabajo abierto.
2. Seleccionar **Inicio**.
3. Abrir las opciones de energía.
4. Elegir **Apagar**.
5. Esperar a que Windows termine el proceso.

### 15.2. Resultado observado

La pantalla muestra:

**Apagando el equipo**

Posteriormente la máquina aparece apagada en VirtualBox.

### 15.3. ¿Por qué apagar normalmente?

Porque permite que Windows cierre sus aplicaciones y servicios correctamente.

Es preferible a utilizar un apagado forzado cuando no existe ningún problema que lo justifique.

---

## 16. Crear una instantánea de Windows con Guest Additions

Después de instalar Guest Additions, el profesor crea un nuevo punto de recuperación.

### 16.1. ¿Por qué crear otra instantánea?

En la clase anterior había creado:

`Windows recien instalado`

Esta instantánea conserva el estado anterior a la instalación de Guest Additions.

Ahora desea conservar otro punto correspondiente a Windows con los complementos instalados.

### 16.2. Procedimiento mostrado

1. Abrir **Oracle VM VirtualBox Administrador**.
2. Seleccionar **Windows 10**.
3. Abrir **Instantáneas**.
4. Seleccionar el estado actual.
5. Hacer clic en **Tomar**.
6. Introducir el nombre de la instantánea.
7. Confirmar con **Aceptar**.

### 16.3. Nombre introducido

`Con las Virtual Guest Additions instaladas`

### 16.4. Resultado documentado

Se observa al profesor preparando una segunda instantánea para conservar el estado posterior a la instalación.

La captura muestra el nombre introducido en el cuadro de creación, pero no incluye la verificación posterior del árbol de instantáneas.

### 16.5. Aprendizaje

Crear instantáneas en diferentes momentos permite disponer de puntos de recuperación.

Por ejemplo:

1. Windows recién instalado.
2. Windows con Guest Additions.
3. Windows con aplicaciones adicionales.

Esto resulta útil para experimentar y volver a una configuración anterior.

---

# PARTE III — INSTALACIÓN EN UBUNTU

## 17. Preparar Ubuntu para instalar Guest Additions

El profesor continúa utilizando la máquina virtual:

`Solo Ubuntu`

Esta máquina había sido preparada en la Clase 04.

### 17.1. Iniciar Ubuntu

1. Abrir VirtualBox.
2. Seleccionar **Solo Ubuntu**.
3. Hacer clic en **Iniciar**.
4. Esperar a que aparezca el escritorio de Ubuntu.
5. Abrir la aplicación **Terminal**.

### 17.2. ¿Por qué utilizaremos la terminal?

Porque Guest Additions para Linux puede necesitar herramientas capaces de compilar e instalar determinados módulos del núcleo.

La terminal permite preparar estas herramientas mediante comandos.

---

## 18. Herramientas necesarias en Ubuntu

El profesor trabaja con los siguientes paquetes:

- `gcc`
- `make`
- `perl`

### 18.1. ¿Qué es gcc?

`gcc` es un compilador perteneciente a la colección GNU Compiler Collection.

Permite compilar código, incluido código escrito en C.

En este contexto puede ser utilizado para construir componentes de Guest Additions.

### 18.2. ¿Qué es make?

`make` permite automatizar tareas relacionadas con la compilación.

Utiliza instrucciones para determinar qué archivos deben procesarse y cómo realizar las operaciones necesarias.

### 18.3. ¿Qué es perl?

`perl` es un lenguaje de programación utilizado por determinados scripts y herramientas del sistema.

Puede ser requerido por procedimientos de instalación y configuración.

### 18.4. ¿Por qué se necesitan estas herramientas?

Porque Guest Additions para Linux puede requerir compilar módulos compatibles con el núcleo que está utilizando Ubuntu.

A diferencia del instalador de Windows, en Linux pueden intervenir herramientas de desarrollo.

### 18.5. Consideración técnica adicional

Dependiendo de la distribución y la versión del núcleo, también pueden ser necesarios paquetes como:

- `dkms`
- `build-essential`
- Cabeceras del núcleo Linux correspondiente.

Estos paquetes no forman parte del comando específico que muestra el PDF del profesor.

Por tanto, los mencionamos únicamente como información complementaria, no como pasos ejecutados en el video.

---

## 19. Primer intento de instalación y error encontrado

El profesor abre la terminal y ejecuta:

```bash
sudo apt-get install gcc make perl
```

### 19.1. ¿Qué significa el comando?

**sudo**

Permite ejecutar una orden con privilegios administrativos autorizados.

**apt-get**

Es una herramienta utilizada para administrar paquetes en sistemas basados en Debian, como Ubuntu.

**install**

Indica que queremos instalar paquetes.

**gcc make perl**

Son los nombres de los paquetes solicitados.

### 19.2. Resultado inicial

La terminal muestra errores relacionados con la disponibilidad de los paquetes.

Entre ellos:

```text
E: No se ha podido localizar el paquete gcc
E: El paquete «make» no tiene un candidato para la instalación
```

### 19.3. ¿Qué significa?

Ubuntu no está encontrando correctamente determinados paquetes en la información de repositorios disponible.

Esto puede ocurrir por diferentes razones, entre ellas:

- Información de paquetes desactualizada.
- Repositorios mal configurados.
- Problemas de conexión.
- Repositorios no disponibles.

### 19.4. ¿Qué detecta el profesor?

Recuerda que, durante la instalación de Ubuntu en la clase anterior, había desconectado la red para evitar descargas.

Por eso decide revisar y recuperar la conexión.

---

## 20. Recuperar la conexión de red en VirtualBox

### 20.1. Procedimiento

Con Ubuntu abierto:

1. Acceder a la configuración de la máquina virtual.
2. Seleccionar **Network**.
3. Abrir **Adapter 1**.
4. Buscar el campo **Attached to:**.
5. Seleccionar **NAT**.
6. Hacer clic en **OK**.

### 20.2. Configuración anterior

`Not attached`

La máquina virtual estaba desconectada de una red virtual.

### 20.3. Nueva configuración

`NAT`

Esta configuración permite normalmente que Ubuntu acceda a Internet utilizando la conexión del equipo anfitrión.

### 20.4. ¿Por qué es importante?

Porque los paquetes `gcc`, `make` y `perl` se obtienen de los repositorios configurados en Ubuntu.

Para descargarlos desde repositorios remotos se necesita una conexión de red funcional.

---

## 21. Actualizar la lista de paquetes de Ubuntu

Después de recuperar la conexión, el profesor ejecuta:

```bash
sudo apt-get update
```

### 21.1. ¿Qué hace?

Actualiza la información local sobre los paquetes disponibles en los repositorios configurados.

Consulta las fuentes y descarga los índices necesarios.

### 21.2. ¿Instala actualizaciones del sistema?

No necesariamente.

El comando `apt-get update` actualiza los índices de paquetes, pero no instala por sí solo las nuevas versiones de todos los programas.

### 21.3. Resultado observado

La terminal comienza a descargar información desde los repositorios de Ubuntu.

Se muestran mensajes de descarga y lectura de listas.

Después el proceso termina correctamente.

### 21.4. Aprendizaje

Antes de instalar herramientas desde los repositorios, conviene actualizar los índices de paquetes.

Esto ayuda a evitar errores relacionados con información local desactualizada.

---

## 22. Instalar nuevamente gcc, make y perl

Después de actualizar los índices, el profesor repite:

```bash
sudo apt-get install gcc make perl
```

### 22.1. Resultado observado

Esta vez Ubuntu consigue localizar los paquetes y sus dependencias.

La terminal muestra información sobre los cambios que realizará.

| Información | Resultado |
|---|---|
| Paquetes nuevos | 26 |
| Paquetes que se actualizarán | 6 |
| Descarga requerida | 66,1 MB |
| Espacio adicional en disco | 132 MB |

### 22.2. Confirmar la instalación

Ubuntu muestra:

```text
¿Desea continuar? [S/n]
```

El profesor introduce:

```text
s
```

Y confirma.

### 22.3. ¿Qué significa esta confirmación?

Autoriza al administrador de paquetes a descargar e instalar los componentes indicados.

### 22.4. Proceso de instalación

La terminal comienza a:

1. Descargar paquetes.
2. Desempaquetar archivos.
3. Instalar dependencias.
4. Configurar componentes.
5. Procesar tareas posteriores a la instalación.

### 22.5. Comprobación

En las capturas aparecen mensajes relacionados con la configuración de `gcc` y `make`.

Posteriormente se observa que el comando ha terminado y la terminal vuelve a mostrar su indicador de entrada.

**Resultado:** las herramientas necesarias para continuar con la instalación de Guest Additions quedan preparadas.

---

## 23. Orden recomendado para preparar las dependencias

El PDF del profesor presenta los comandos en el siguiente orden:

### Paso 1 — Actualizar los índices

```bash
sudo apt-get update
```

### Paso 2 — Instalar las herramientas

```bash
sudo apt-get install gcc make perl
```

### Explicación del incidente

En el video, el profesor ejecuta primero el comando de instalación y encuentra errores.

Después recupera la conexión de red, actualiza los índices y repite el comando con éxito.

**Aprendizaje:** el orden recomendado para repetir la práctica es comprobar la conexión, actualizar los índices e instalar los paquetes.

---

## 24. Insertar el CD de Guest Additions en Ubuntu

Después de preparar las herramientas, el profesor conecta la imagen de Guest Additions.

### 24.1. Procedimiento

1. Mantener abierta la máquina virtual **Solo Ubuntu**.
2. Acceder a la barra de menús de VirtualBox.
3. Abrir **Devices**.
4. Seleccionar **Insert Guest Additions CD image...**.
5. Esperar a que Ubuntu detecte la unidad óptica virtual.

### 24.2. ¿Qué ocurre?

Ubuntu monta el medio que contiene los instaladores de Guest Additions.

### 24.3. Nombre del CD

En la demostración aparece:

`VBox_GAs_7.0.12`

Este nombre identifica la versión utilizada por el profesor.

---

## 25. Abrir el contenido del CD en Ubuntu

El profesor abre el administrador de archivos de Ubuntu.

### 25.1. Procedimiento

1. Abrir la aplicación **Archivos**.
2. Localizar la unidad de Guest Additions en la barra lateral.
3. Seleccionar `VBox_GAs_7.0.12`.
4. Revisar los archivos disponibles.

### 25.2. Archivos observados

Entre los archivos aparecen:

- `autorun.sh`
- `VBoxLinuxAdditions.run`
- `VBoxWindowsAdditions.exe`
- Otros instaladores y componentes.

### 25.3. ¿Cuál utiliza el profesor?

`autorun.sh`

### 25.4. ¿Qué hace este archivo?

Es un script que permite iniciar el procedimiento de instalación correspondiente al entorno Linux.

---

## 26. Ejecutar autorun.sh

### 26.1. Procedimiento

1. Localizar `autorun.sh`.
2. Hacer clic derecho sobre el archivo.
3. Abrir el menú contextual.
4. Seleccionar **Ejecutar como un programa**.
5. Esperar a que se solicite autorización.

### 26.2. ¿Por qué utilizar Ejecutar como un programa?

Porque queremos ejecutar el script, no simplemente visualizar su contenido en un editor.

### 26.3. Resultado

Ubuntu abre el procedimiento de instalación de Guest Additions.

---

## 27. Autorizar la instalación en Ubuntu

Aparece una ventana:

**Se necesita autenticación**

El sistema indica que necesita autorización para ejecutar `/bin/sh` como superusuario.

### 27.1. Procedimiento

1. Revisar la solicitud.
2. Introducir la contraseña del usuario autorizado.
3. Hacer clic en **Autenticar**.

### 27.2. ¿Qué es /bin/sh?

Es un intérprete de comandos utilizado por sistemas tipo Unix.

Permite ejecutar scripts y órdenes compatibles.

### 27.3. ¿Por qué se necesitan permisos administrativos?

La instalación requiere modificar determinadas ubicaciones del sistema e incorporar módulos y servicios.

Estas operaciones requieren permisos elevados.

---

## 28. Verificación y extracción de Guest Additions

Después de autorizar la ejecución aparece una terminal:

**VirtualBox Guest Additions installation**

### 28.1. Verificación de integridad

El instalador muestra:

```text
Verifying archive integrity... 100%
MD5 checksums are OK. All good.
```

### 28.2. ¿Qué significa?

El instalador realiza una comprobación de integridad de su archivo.

En la captura, esa comprobación termina correctamente.

### 28.3. Extracción de archivos

Después aparece:

```text
Uncompressing VirtualBox 7.0.12 Guest Additions for Linux 100%
```

Esto significa que el instalador ha descomprimido sus componentes.

### 28.4. Instalación de módulos adicionales

La terminal continúa con:

```text
Copying additional installer modules ...
Installing additional modules ...
```

En esta etapa se preparan componentes adicionales de Guest Additions.

---

## 29. Compilar los módulos del núcleo Linux

Durante la instalación se muestra:

```text
VirtualBox Guest Additions: Building the VirtualBox Guest Additions kernel modules.
```

También aparece:

```text
VirtualBox Guest Additions: Building the modules for kernel 6.2.0-26-generic.
```

### 29.1. ¿Qué es el kernel?

El *kernel*, o núcleo, es un componente central del sistema operativo.

Entre sus responsabilidades se encuentran:

- Administrar recursos.
- Coordinar procesos.
- Gestionar memoria.
- Interactuar con dispositivos.
- Proporcionar mecanismos utilizados por los controladores.

### 29.2. ¿Qué es un módulo del núcleo?

Es un componente que puede incorporar funcionalidades adicionales al kernel.

### 29.3. ¿Qué está realizando Guest Additions?

Está construyendo módulos compatibles con el núcleo Linux presente en la máquina virtual.

### 29.4. Kernel observado

`6.2.0-26-generic`

Este es el núcleo mostrado en la demostración.

No significa que todas las instalaciones de Ubuntu 22.04 utilicen necesariamente esa misma versión.

### 29.5. Relación con gcc y make

El proceso de construcción explica por qué el profesor preparó previamente las herramientas de compilación.

---

## 30. Finalización de la instalación en Ubuntu

Posteriormente la terminal muestra mensajes relacionados con la recarga de módulos y servicios:

```text
VirtualBox Guest Additions: reloading kernel modules and services
```

Y:

```text
VirtualBox Guest Additions: kernel modules and services 7.0.12 r159484 reloaded
```

### 30.1. ¿Qué indican?

Que el instalador consiguió avanzar hasta la etapa de recargar los componentes necesarios.

### 30.2. Resultado observado

En las capturas no aparece un error que interrumpa el proceso.

La instalación alcanza su fase de finalización.

---

## 31. Advertencia sobre cerrar sesión o reiniciar

El instalador indica que algunos servicios de sesión podrían no haberse reiniciado automáticamente.

Entre ellos:

- Shared Clipboard.
- Drag and Drop.
- Seamless.
- Guest Screen Resize.

### 31.1. ¿Qué significa?

Que ciertos componentes pueden necesitar que la sesión gráfica se vuelva a iniciar.

### 31.2. ¿Qué recomienda el profesor?

Reiniciar Ubuntu después de instalar Guest Additions.

### 31.3. ¿Por qué es importante?

Porque algunos servicios y módulos nuevos pueden necesitar una nueva sesión o reinicio para funcionar correctamente.

### 31.4. ¿Se realizó el reinicio durante el video?

No quedó registrado un reinicio completo después de esta instalación.

El profesor continúa realizando algunas pruebas y recomienda reiniciar si las funciones no trabajan correctamente.

---

## 32. Cerrar la ventana del instalador

La terminal muestra:

```text
Press Return to close this window...
```

### Procedimiento

1. Comprobar que el instalador terminó.
2. Presionar **Enter**.
3. Cerrar la ventana del instalador.
4. Regresar al escritorio de Ubuntu.

### Resultado

El escritorio aparece nuevamente.

---

## 33. Configurar el portapapeles y arrastrar y soltar en Ubuntu

Después de instalar Guest Additions, el profesor revisa la integración.

### 33.1. Ruta utilizada

**Configuración → General → Advanced**

### 33.2. Valores mostrados

| Campo | Configuración |
|---|---|
| Shared Clipboard | Bidirectional |
| Drag'n'Drop | Bidirectional |

### 33.3. Procedimiento

1. Abrir la configuración de **Solo Ubuntu**.
2. Seleccionar **General**.
3. Entrar en **Advanced**.
4. Localizar **Shared Clipboard**.
5. Seleccionar **Bidirectional**.
6. Localizar **Drag'n'Drop**.
7. Seleccionar **Bidirectional**.
8. Confirmar con **OK**.

### 33.4. ¿Qué se espera conseguir?

Permitir:

- Copiar y pegar contenido compatible en ambos sentidos.
- Arrastrar y soltar elementos compatibles entre ambos sistemas.

### 33.5. ¿Quedó garantizado el funcionamiento?

No.

La configuración habilita las funciones, pero debemos comprobarlas.

---

## 34. Notificación de actualizaciones de Ubuntu

Después de recuperar la conexión a Internet, aparece una notificación del sistema.

### 34.1. Mensaje observado

Ubuntu informa que existen actualizaciones de software desde el lanzamiento de Ubuntu 22.04.

### 34.2. Descarga indicada

**688,8 MB**

### 34.3. Opciones disponibles

| Opción | Función |
|---|---|
| Configuración... | Abrir las preferencias de actualización |
| Recordármelo más tarde | Posponer |
| Instalar ahora | Comenzar la instalación |

### 34.4. ¿Por qué aparecen actualizaciones?

En la Clase 04, el profesor había desconectado la red y evitado descargar actualizaciones durante la instalación.

Ahora volvió a conectar Internet y actualizó los índices de los repositorios.

Por eso es coherente que Ubuntu detecte actualizaciones pendientes.

### 34.5. ¿Las instala el profesor?

No observamos una instalación completa de esos 688,8 MB.

La notificación aparece durante el proceso de configuración y prueba de Guest Additions.

---

# PARTE IV — PRUEBAS DE FUNCIONAMIENTO

## 35. Comprobar la adaptación automática de la resolución

Después de instalar Guest Additions en Ubuntu, el profesor prueba cómo responde la pantalla al modificar la ventana de VirtualBox.

### 35.1. Procedimiento

1. Mantener Ubuntu iniciado.
2. Reducir el tamaño de la ventana de VirtualBox.
3. Observar cómo cambia el tamaño del escritorio.
4. Ampliar nuevamente la ventana.
5. Verificar que la pantalla se adapta al nuevo tamaño.

### 35.2. Resultado observado

**La pantalla de Ubuntu se adapta correctamente al modificar el tamaño de la ventana.**

### 35.3. ¿Qué demuestra?

Que la integración gráfica necesaria para el redimensionamiento automático está funcionando durante esa sesión.

### 35.4. ¿Por qué es útil?

Porque permite trabajar con Ubuntu en diferentes tamaños de ventana sin tener que ajustar manualmente la resolución constantemente.

---

## 36. Probar la transferencia de archivos

El profesor intenta transferir un archivo entre el anfitrión y Ubuntu.

### 36.1. Configuración previa

Había seleccionado:

**Drag'n'Drop: Bidirectional**

### 36.2. ¿Qué espera conseguir?

Poder mover un elemento compatible desde un sistema al otro mediante el ratón.

### 36.3. Resultado observado

La transferencia probada no funciona correctamente.

### 36.4. ¿Qué explicación propone el profesor?

Comenta que puede ser necesario reiniciar Ubuntu para que los componentes de integración terminen de funcionar.

### 36.5. ¿Es una causa confirmada?

No.

Se trata de una posible explicación.

El video no demuestra que el reinicio resuelva definitivamente ese problema.

### 36.6. Aprendizaje

Una función puede estar habilitada en VirtualBox y aun así necesitar otras condiciones para funcionar.

Por ejemplo:

- Servicios de sesión activos.
- Compatibilidad del entorno gráfico.
- Componentes correctamente inicializados.
- Compatibilidad del tipo de transferencia.

---

## 37. Reiniciar Ubuntu y repetir las pruebas

El profesor recomienda reiniciar Ubuntu.

Aunque no completa esa prueba de verificación durante el video, es conveniente conocer el procedimiento.

### 37.1. Reiniciar

1. Guardar el trabajo abierto.
2. Abrir el menú del sistema de Ubuntu.
3. Seleccionar las opciones de apagado o energía.
4. Elegir **Reiniciar**.
5. Esperar a que Ubuntu vuelva a iniciar.
6. Introducir la contraseña si se solicita.

### 37.2. Verificar la resolución

1. Reducir la ventana de VirtualBox.
2. Comprobar que Ubuntu se adapta.
3. Ampliar la ventana.
4. Verificar nuevamente el escritorio.

### 37.3. Verificar el portapapeles

1. Copiar un texto en el anfitrión.
2. Abrir un editor en Ubuntu.
3. Pegar el contenido.
4. Copiar otro texto desde Ubuntu.
5. Intentar pegarlo en el anfitrión.

### 37.4. Verificar arrastrar y soltar

1. Preparar un archivo de prueba sin información sensible.
2. Intentar arrastrarlo desde el anfitrión hacia Ubuntu.
3. Comprobar si aparece correctamente.
4. Repetir la transferencia en sentido contrario.

### 37.5. Importante

Estos pasos son una **guía para completar las pruebas**, no acciones que debamos presentar como realizadas por el profesor.

---

# PARTE V — RESUMEN DE RESULTADOS

## 38. Resultado de Guest Additions en Windows 10

| Etapa | Resultado observado |
|---|---|
| Iniciar Windows 10 | Completado |
| Montar CD virtual | Completado |
| Identificar instalador | Completado |
| Ejecutar VBoxWindowsAdditions.exe | Completado |
| Instalar versión 7.0.12 | Completado |
| Reiniciar Windows | Completado |
| Identificar icono de Guest Additions | Completado |
| Configurar portapapeles bidireccional | Completado |
| Configurar arrastrar y soltar bidireccional | Completado |
| Apagar Windows | Completado |
| Preparar nueva instantánea | Mostrado |
| Verificar cada función de intercambio | No documentado individualmente |

---

## 39. Resultado de Guest Additions en Ubuntu

| Etapa | Resultado observado |
|---|---|
| Iniciar Ubuntu | Completado |
| Abrir Terminal | Completado |
| Primer intento de instalar herramientas | Error |
| Detectar problema de disponibilidad de paquetes | Completado |
| Recuperar red NAT | Completado |
| Ejecutar apt-get update | Completado |
| Instalar gcc, make y perl | Completado |
| Montar CD VBox_GAs_7.0.12 | Completado |
| Ejecutar autorun.sh | Completado |
| Autorizar instalación | Completado |
| Compilar módulos del núcleo | Completado según mensajes |
| Recargar servicios de Guest Additions | Completado según mensajes |
| Configurar portapapeles bidireccional | Completado |
| Configurar arrastrar y soltar bidireccional | Completado |
| Probar adaptación de pantalla | Funciona |
| Probar transferencia de archivos | Presenta problemas |
| Reiniciar para repetir pruebas | Recomendado, no verificado |

---

## 40. Diferencias entre la instalación de Windows y Ubuntu

| Característica | Windows 10 | Ubuntu |
|---|---|---|
| Guest Additions | 7.0.12 | 7.0.12 |
| Instalador utilizado | VBoxWindowsAdditions.exe | autorun.sh |
| Método principal | Asistente gráfico | Script e instalador de Linux |
| Permisos administrativos | Ejecutar como administrador | Autenticación de superusuario |
| Compilación mostrada | No | Sí |
| Herramientas previas | No se muestran | gcc, make, perl |
| Reinicio | Realizado | Recomendado |
| Integración bidireccional | Configurada | Configurada |
| Adaptación automática de pantalla | Sin prueba específica documentada | Verificada |
| Transferencia de archivos | Sin prueba específica documentada | Presenta problemas |

---

## 41. Errores y soluciones aprendidas

### 41.1. Error al localizar paquetes de Ubuntu

**Problema**

Ubuntu no encontraba `gcc` y no ofrecía un candidato de instalación para `make`.

**Contexto**

La máquina había tenido su conexión de red deshabilitada anteriormente.

**Acciones realizadas**

1. Abrir la configuración de VirtualBox.
2. Cambiar **Network → Adapter 1 → Attached to:** a **NAT**.
3. Ejecutar:

```bash
sudo apt-get update
```

4. Repetir:

```bash
sudo apt-get install gcc make perl
```

**Resultado**

Ubuntu encuentra los paquetes y completa su instalación.

### 41.2. Problema con arrastrar y soltar en Ubuntu

**Problema**

La transferencia probada no funciona correctamente.

**Configuración**

`Drag'n'Drop: Bidirectional`

**Recomendación del profesor**

Reiniciar Ubuntu y volver a probar.

**Resultado**

No se comprueba durante el video si el reinicio soluciona el problema.

---

## 42. Buenas prácticas aprendidas

### 42.1. Crear una instantánea antes de realizar cambios

Permite conservar un punto de recuperación del sistema limpio.

### 42.2. Crear otra instantánea después de instalar correctamente

Permite conservar el estado posterior a Guest Additions.

### 42.3. Comprobar la conexión antes de instalar paquetes

En Linux, los repositorios remotos necesitan conectividad para descargar software.

### 42.4. Actualizar los índices de paquetes

Es conveniente ejecutar `apt-get update` antes de instalar herramientas desde repositorios.

### 42.5. Utilizar el instalador correspondiente al sistema

Windows y Linux requieren archivos de instalación diferentes.

### 42.6. Reiniciar cuando sea necesario

Los controladores y servicios nuevos pueden necesitar reinicio o una nueva sesión.

### 42.7. Verificar cada función

No basta con instalar Guest Additions; debemos comprobar que las funciones deseadas trabajan correctamente.

### 42.8. No confundir instantáneas con copias de seguridad

Las instantáneas permiten recuperar estados, pero no sustituyen un respaldo independiente de los archivos importantes.

### 42.9. No transferir archivos sensibles durante pruebas

Las funciones de integración crean canales de intercambio entre el anfitrión y el invitado.

Conviene habilitarlas solamente cuando sean necesarias y utilizar archivos de prueba sin información confidencial.

---

## 43. Conclusión de la Clase 05

En esta clase aprendimos que **Guest Additions mejora la integración entre el equipo anfitrión y los sistemas operativos invitados de VirtualBox**.

El profesor demuestra su instalación en dos sistemas:

**Windows 10**

Utiliza el instalador `VBoxWindowsAdditions.exe`, completa el asistente, reinicia Windows y comprueba que aparece el icono de Guest Additions 7.0.12.

Posteriormente configura las opciones de portapapeles compartido y arrastrar y soltar en modo bidireccional, y prepara una nueva instantánea.

**Ubuntu 22.04**

Primero instala las herramientas necesarias para preparar los componentes de Linux.

Durante el procedimiento encuentra errores de disponibilidad de paquetes, recupera la conexión de red, actualiza los índices y completa la instalación de `gcc`, `make` y `perl`.

Después monta el CD de Guest Additions, ejecuta `autorun.sh`, se autentica y observa cómo el instalador construye y recarga los módulos correspondientes.

Finalmente configura la integración bidireccional y comprueba que la resolución de pantalla se adapta correctamente cuando cambia el tamaño de la ventana de VirtualBox.

La transferencia de archivos presenta problemas y el profesor recomienda reiniciar Ubuntu para volver a probarla.

### Resultado final

**El objetivo principal de la clase se cumple: comprender, instalar y comenzar a verificar Guest Additions en Windows 10 y Ubuntu.**

La integración gráfica de Ubuntu queda comprobada. La transferencia mediante arrastrar y soltar queda pendiente de una verificación definitiva.

---

## 44. Referencias

### Repositorio oficial del curso

https://github.com/ConquerBlocks/conquerblocks-linux-terminal

### Documentación de Oracle VirtualBox

**Manual de VirtualBox — Guest Additions**

https://docs.oracle.com/en/virtualization/virtualbox/7.2/user/guestadditions.html

### Documentación de Ubuntu

**Documentación oficial de Ubuntu**

https://documentation.ubuntu.com/

### Material de la clase

**LyT Clase 05 — Instalación Guest Additions en VirtualBox**

Material PDF proporcionado por el profesor.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

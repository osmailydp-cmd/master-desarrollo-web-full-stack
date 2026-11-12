# Clase 04 — Instalación únicamente de Linux o Windows 10

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Tema:** VirtualBox — Instalación y configuración  
**Clase:** 04 — Instalación únicamente de Linux o Windows 10  
**Herramienta:** Oracle VM VirtualBox  
**Sistemas operativos estudiados:** Ubuntu 22.04.3 y Windows 10 Pro  
**Tipo de documentación:** Apuntes teóricos y demostraciones realizadas por el profesor

---

## 1. Introducción

En esta clase aprendemos a instalar sistemas operativos dentro de máquinas virtuales utilizando Oracle VirtualBox.

El objetivo es comprender cómo preparar una computadora virtual para instalar Ubuntu o Windows 10, cómo configurar su almacenamiento y qué consideraciones debemos tener en cuenta durante el arranque.

### 1.1. Contenido previsto de la clase

Según el material proporcionado por el profesor, la clase contempla:

1. Particiones EFI.
2. Instalación únicamente de Ubuntu.
3. Instalación únicamente de Windows 10 u 11.
4. Instalación conjunta de Windows 10 y Ubuntu.

### 1.2. Contenido desarrollado en el video revisado

Durante la clase el profesor muestra:

- Conceptos básicos sobre BIOS, EFI y arranque.
- Creación de una máquina virtual exclusivamente para Ubuntu.
- Preparación de las particiones de Ubuntu.
- Inicio de la instalación de Ubuntu.
- Demostración de Ubuntu previamente instalado.
- Creación de una instantánea de Ubuntu.
- Creación de una máquina virtual exclusivamente para Windows 10.
- Preparación de las particiones de Windows.
- Inicio de la instalación de Windows 10 Pro.
- Demostración de Windows 10 previamente instalado.
- Guardado del estado de Windows.
- Creación de una instantánea de Windows 10.

**Observación importante:** las instalaciones iniciadas durante la grabación son interrumpidas deliberadamente por el profesor para ahorrar tiempo. Posteriormente utiliza otras máquinas virtuales donde Ubuntu y Windows 10 ya estaban instalados.

En el material revisado no se observa una instalación conjunta de ambos sistemas ni la configuración final de un gestor GRUB multiboot.

### 1.3. Repositorio de referencia

Repositorio del curso:

https://github.com/ConquerBlocks/conquerblocks-linux-terminal

---

# PARTE I — FUNDAMENTOS DEL ARRANQUE

## 2. BIOS, UEFI y particiones EFI

Antes de comenzar las instalaciones, el profesor introduce el concepto de particiones EFI y su relación con el arranque de los sistemas operativos.

### 2.1. ¿Qué es la BIOS?

La BIOS (*Basic Input/Output System*) es un tipo de firmware utilizado tradicionalmente en computadoras.

El firmware es software de bajo nivel encargado de realizar funciones esenciales del hardware.

Al encender una computadora, la BIOS comienza el proceso de inicialización y busca un dispositivo desde el cual arrancar.

De forma simplificada:

1. Encendemos la computadora.
2. Se ejecuta el firmware.
3. Se inicializan los dispositivos necesarios.
4. Se identifica un dispositivo de arranque.
5. Se ejecuta el cargador de arranque.
6. Comienza a iniciarse el sistema operativo.

El profesor explica este concepto utilizando la comparación con un pequeño sistema que permite arrancar la computadora.

**Precisión técnica:** la BIOS no es exactamente un sistema operativo completo como Windows o Ubuntu. Es firmware que participa en el arranque y la inicialización del hardware.

### 2.2. ¿Qué es UEFI?

UEFI significa *Unified Extensible Firmware Interface*.

Es una interfaz de firmware moderna utilizada por muchas computadoras actuales.

Cumple funciones relacionadas con el inicio del equipo, pero dispone de capacidades diferentes a las de la BIOS tradicional.

Entre ellas:

- Utilización de aplicaciones de arranque EFI.
- Compatibilidad con particiones de sistema EFI.
- Funciones de administración del arranque.
- Posibilidad de utilizar Secure Boot en equipos compatibles.

UEFI y BIOS tradicional son formas distintas de implementar el firmware de arranque.

### 2.3. ¿Qué es una partición EFI?

La **partición del sistema EFI**, conocida como *EFI System Partition* o **ESP**, es una partición del almacenamiento utilizada por sistemas que arrancan mediante UEFI.

Contiene archivos que el firmware UEFI puede cargar para iniciar el sistema operativo.

Por ejemplo:

- Archivos del cargador de arranque de Windows.
- Archivos de arranque EFI de Ubuntu.
- Otros componentes de inicio compatibles.

Normalmente utiliza el sistema de archivos FAT32.

### 2.4. Diferencia entre firmware y partición EFI

| Elemento | Ubicación | Función |
|---|---|---|
| BIOS tradicional | Firmware del equipo | Inicializar el equipo y comenzar el arranque |
| UEFI | Firmware del equipo | Inicializar el equipo y ejecutar mecanismos modernos de arranque |
| Partición EFI | Disco duro o SSD | Almacenar archivos utilizados durante el arranque UEFI |
| Cargador de arranque | Disco o partición correspondiente | Iniciar el sistema operativo |

**Aprendizaje:** la partición EFI no es la BIOS. El firmware se encuentra asociado al equipo, mientras que la partición EFI está en el almacenamiento.

### 2.5. BIOS, UEFI, MBR y GPT

También debemos distinguir el tipo de firmware del esquema de particiones del disco.

**MBR — Master Boot Record**

Es un esquema de particionado tradicional, utilizado habitualmente con arranque BIOS.

**GPT — GUID Partition Table**

Es un esquema de particionado moderno, utilizado habitualmente con UEFI.

| Configuración | Características habituales |
|---|---|
| BIOS + MBR | Arranque tradicional |
| UEFI + GPT | Arranque moderno con partición EFI |
| BIOS + GPT | Puede requerir una partición BIOS Boot para instalar GRUB |

No debemos asumir que activar o desactivar EFI convierte automáticamente la tabla de particiones del disco.

Son configuraciones relacionadas, pero diferentes.

### 2.6. ¿Qué es GRUB?

GRUB significa *GNU GRand Unified Bootloader*.

Es un cargador y gestor de arranque utilizado frecuentemente por sistemas Linux.

Permite iniciar un sistema operativo y, cuando está configurado para ello, ofrecer un menú para elegir entre varios sistemas instalados.

Por ejemplo:

- Ubuntu.
- Windows.
- Opciones avanzadas de Ubuntu.

**Importante:** GRUB no es exclusivo de las instalaciones multiboot. También puede utilizarse en una instalación donde Ubuntu es el único sistema operativo.

---

# PARTE II — INSTALACIÓN ÚNICAMENTE DE UBUNTU

## 3. Preparación de la máquina virtual Ubuntu

El profesor comienza creando una máquina virtual para instalar exclusivamente Ubuntu.

La llama:

`Instalando Ubuntu Solo`

Esta máquina servirá para demostrar el proceso de instalación desde cero.

### 3.1. Crear una nueva máquina virtual

**Paso 1 — Abrir VirtualBox**

1. Abrir **Oracle VM VirtualBox Administrador**.
2. Localizar el botón para crear una nueva máquina.
3. Hacer clic en **Nueva**.
4. Esperar a que aparezca el asistente de creación.

**Paso 2 — Configurar el sistema operativo**

Introducir los parámetros mostrados por el profesor:

| Campo | Valor |
|---|---|
| Nombre | Instalando Ubuntu Solo |
| Tipo | Linux |
| Versión | Ubuntu (64-bit) |
| Memoria RAM | 4096 MB |
| Disco duro virtual | 25 GB |

**Paso 3 — Finalizar la creación**

1. Revisar los parámetros elegidos.
2. Completar el asistente.
3. Comprobar que aparece la máquina `Instalando Ubuntu Solo`.
4. Verificar que inicialmente se encuentra **Apagada**.

### 3.2. ¿Para qué sirve cada parámetro?

**Nombre**

Identifica la máquina dentro de VirtualBox.

**Tipo: Linux**

Permite identificar la familia del sistema operativo que utilizaremos.

**Versión: Ubuntu (64-bit)**

Selecciona el perfil de una distribución Ubuntu de 64 bits.

**Memoria RAM: 4096 MB**

Asigna 4 GB de RAM virtual mientras la máquina esté funcionando.

**Disco virtual: 25 GB**

Define la capacidad máxima del almacenamiento donde instalaremos Ubuntu.

---

## 4. Configuración del almacenamiento de Ubuntu

El profesor abre la configuración específica de la máquina virtual.

### 4.1. Acceder a Almacenamiento

1. Seleccionar `Instalando Ubuntu Solo`.
2. Hacer clic en **Configuración**.
3. Abrir **Almacenamiento**.
4. Revisar los dispositivos conectados.

### 4.2. Dispositivos utilizados

En la captura aparecen:

**Controlador: IDE**

Tiene conectada la ISO de Ubuntu:

`ubuntu-22.04.3-desktop-amd64.iso`

Tamaño mostrado:

**4,69 GB**

**Controlador: SATA**

Tiene conectado el archivo del disco virtual:

`Instalando Ubuntu Solo.vdi`

### 4.3. Diferencia entre ISO y VDI

| Archivo | Función |
|---|---|
| ISO de Ubuntu | Medio desde el cual se inicia el instalador |
| VDI de Ubuntu | Disco donde se instalará y almacenará el sistema |

Una ISO puede compararse con un DVD de instalación virtual.

Un archivo VDI representa el almacenamiento de una computadora virtual.

Ambos son necesarios en esta demostración, pero cumplen funciones diferentes.

---

## 5. Revisar la configuración EFI de Ubuntu

El profesor entra en:

**Configuración → Sistema → Placa base**

### 5.1. Valores observados

| Campo | Configuración |
|---|---|
| Memoria base | 4096 MB |
| Orden de arranque | Disquete, Óptica y Disco duro habilitados |
| Red en orden de arranque | Deshabilitada |
| Chipset | PIIX3 |
| TPM | Ninguno |
| Dispositivo apuntador | Tableta USB |
| Habilitar I/O APIC | Marcado |
| Habilitar reloj hardware en tiempo UTC | Marcado |
| Habilitar EFI (sólo SO especiales) | **Desmarcado** |
| Habilitar Secure Boot | No habilitado |

### 5.2. ¿Qué hace Habilitar EFI?

Esta opción permite configurar el arranque de la máquina virtual utilizando firmware EFI.

**Marcada**

VirtualBox utiliza EFI para arrancar el sistema invitado.

**Desmarcada**

VirtualBox utiliza el firmware BIOS tradicional.

### 5.3. Decisión del profesor

El profesor muestra la posibilidad de habilitar EFI, pero decide mantener la opción desmarcada.

Por tanto, la máquina queda configurada para utilizar el arranque BIOS tradicional.

Después hace clic en **Aceptar**.

**Aprendizaje:** Ubuntu puede instalarse tanto en equipos BIOS como UEFI, pero debemos preparar correctamente el esquema de particiones y el cargador de arranque según el modo utilizado.

---

## 6. Iniciar Ubuntu desde la ISO

### 6.1. Arrancar la máquina

1. Abrir Oracle VirtualBox Administrador.
2. Seleccionar `Instalando Ubuntu Solo`.
3. Comprobar que la ISO está conectada.
4. Hacer clic en **Iniciar**.
5. Esperar a que se abra la ventana de la máquina virtual.

Inicialmente aparece una pantalla negra durante el proceso de arranque.

### 6.2. Menú GNU GRUB

La ISO muestra un menú:

`GNU GRUB version 2.06`

Las opciones observadas son:

| Opción | Función |
|---|---|
| Try or Install Ubuntu | Probar Ubuntu o comenzar su instalación |
| Ubuntu (safe graphics) | Iniciar utilizando parámetros gráficos más conservadores |
| OEM install (for manufacturers) | Modalidad destinada a fabricantes |
| Test memory | Ejecutar una prueba de memoria |

En una captura se ve resaltada la opción **Ubuntu (safe graphics)**, y posteriormente el instalador aparece funcionando.

No quedó completamente verificado cuál de las entradas del menú fue ejecutada.

### 6.3. GRUB de la ISO frente a GRUB instalado

Hay una diferencia importante:

**GRUB de la ISO**

Permite seleccionar cómo arrancar el medio de instalación.

**GRUB del disco instalado**

Permite arrancar Ubuntu desde su disco virtual y puede ofrecer opciones para varios sistemas operativos.

El menú mostrado aquí corresponde al medio de instalación de Ubuntu.

---

## 7. Ajustar el tamaño de pantalla de VirtualBox

Durante el arranque, el profesor revisa las opciones de visualización de la máquina virtual.

### 7.1. Acceder a View

Con la máquina encendida:

1. Abrir el menú **View**.
2. Buscar **Virtual Screen 1**.
3. Revisar las opciones de escala.

### 7.2. Opciones observadas

| Opción | Función |
|---|---|
| Scaled Mode | Activar el modo escalado |
| Adjust Window Size | Ajustar el tamaño de la ventana |
| Auto-resize Guest Display | Intentar adaptar la resolución del sistema invitado |
| Virtual Screen 1 | Administrar la pantalla virtual |
| Scale to 100% | Mostrar a escala original |
| Scale to 200% | Ampliar la representación visual |

En la captura, **Auto-resize Guest Display** está marcado.

También se observa **Scale to 200%** resaltado, pero la imagen no permite confirmar que el profesor lo haya aplicado.

### 7.3. Diferencia entre escala y resolución

**Escala**

Modifica cómo de grande vemos la imagen.

**Resolución**

Determina las dimensiones, en píxeles, del área de pantalla del sistema invitado.

No debemos confundir ambas configuraciones.

---

## 8. Pantalla de bienvenida del instalador de Ubuntu

Después del arranque, aparece el asistente de instalación.

### 8.1. Seleccionar el idioma

En la ventana **Le damos la bienvenida**, el profesor selecciona:

**Español**

### 8.2. Elegir entre probar e instalar

El instalador ofrece:

**Probar Ubuntu**

Permite ejecutar Ubuntu desde el entorno de instalación sin comenzar inmediatamente la instalación en el disco.

**Instalar Ubuntu**

Inicia el procedimiento para instalar Ubuntu en el almacenamiento seleccionado.

### 8.3. Procedimiento

1. Esperar la pantalla de bienvenida.
2. Seleccionar **Español**.
3. Hacer clic en **Instalar Ubuntu**.
4. Continuar a la configuración del teclado.

---

## 9. Configurar la disposición del teclado de Ubuntu

El instalador presenta la pantalla:

**Disposición del teclado**

### 9.1. Opciones seleccionadas

En las capturas aparece seleccionada:

- Distribución principal: **Spanish**.
- Variante: **Spanish**.

### 9.2. Procedimiento

1. Localizar la lista de distribuciones de la izquierda.
2. Seleccionar **Spanish**.
3. En la lista derecha, seleccionar **Spanish**.
4. Utilizar el campo de prueba si es necesario.
5. Hacer clic en **Continuar**.

### 9.3. Probar el teclado

La pantalla incluye:

**Escriba aquí para probar el teclado**

Permite escribir caracteres para comprobar si coinciden con las teclas físicas.

También contiene:

**Detectar la distribución del teclado**

Esta herramienta ayuda a identificar la distribución mediante pruebas guiadas.

### 9.4. Aprendizaje

El idioma de un sistema operativo y la distribución física del teclado son configuraciones independientes.

Debemos elegir la distribución que corresponda a nuestro teclado físico.

---

## 10. Actualizaciones y otro software

El profesor llega a la pantalla:

**Actualizaciones y otro software**

### 10.1. Tipos de instalación

El instalador presenta:

**Instalación normal**

Incluye navegador, utilidades, paquete de oficina y otras aplicaciones.

**Instalación mínima**

Incluye un conjunto más reducido de herramientas básicas.

### 10.2. Elección del profesor

Selecciona:

**Instalación normal**

### 10.3. Otras opciones

Aparecen dos casillas adicionales:

**Descargar actualizaciones al instalar Ubuntu**

Permite descargar actualizaciones durante el proceso de instalación.

**Instalar programas de terceros para hardware de gráficos y de wifi y formatos multimedia adicionales**

Permite solicitar determinados controladores y componentes adicionales.

### 10.4. Configuración final

| Opción | Estado |
|---|---|
| Instalación normal | Seleccionada |
| Instalación mínima | No seleccionada |
| Descargar actualizaciones al instalar Ubuntu | Desmarcada |
| Instalar programas de terceros | Desmarcada |

### 10.5. ¿Por qué desmarcar las actualizaciones?

El profesor explica que desea evitar demoras relacionadas con descargas durante la instalación.

Desmarcar esta opción puede reducir el tiempo del procedimiento.

Sin embargo, no significa que el sistema nunca necesite actualizaciones.

Después de instalar Ubuntu, es recomendable actualizarlo.

**Aclaración técnica adicional:** la posibilidad de actualizar posteriormente no garantiza que el instalador tenga que efectuar descargas automáticamente. Son operaciones separadas.

---

## 11. Desconectar la red de Ubuntu durante la instalación

Antes de continuar, el profesor decide desconectar la red virtual.

### 11.1. Motivo explicado por el profesor

Según comenta, aunque desmarquemos la opción de descargar actualizaciones, el instalador puede intentar acceder a Internet para determinadas operaciones.

Para evitar esas descargas y agilizar la grabación, decide desconectar el adaptador de red.

Esta es una decisión práctica del profesor, no un requisito obligatorio de Ubuntu.

### 11.2. Procedimiento en VirtualBox

Mientras el instalador está abierto:

1. Acceder a la configuración de la máquina virtual.
2. Abrir **Network**.
3. Seleccionar **Adapter 1**.
4. Localizar **Attached to:**.
5. Cambiar el valor a **Not attached**.
6. Hacer clic en **OK**.
7. Regresar al instalador de Ubuntu.

### 11.3. Configuración observada

| Campo | Valor |
|---|---|
| Network | Sección abierta |
| Adapter 1 | Seleccionado |
| Enable Network Adapter | Marcado |
| Attached to: | Not attached |

### 11.4. ¿Qué significa Not attached?

El dispositivo de red virtual continúa definido, pero queda desconectado de una red.

Esto evita que Ubuntu utilice ese adaptador para establecer conexiones a Internet.

### 11.5. Diferencia respecto a NAT

**NAT**

Permite normalmente que la máquina virtual acceda a la red mediante el anfitrión.

**Not attached**

Deja el adaptador sin una conexión virtual activa.

### 11.6. Aprendizaje

Si queremos evitar completamente las descargas a través de ese adaptador durante una instalación, podemos desconectarlo temporalmente.

Después de instalar Ubuntu, conviene volver a habilitar la conexión y actualizar el sistema.

---

## 12. Elegir el tipo de instalación de Ubuntu

El profesor continúa hasta la pantalla:

**Tipo de instalación**

El instalador indica que no detecta ningún sistema operativo en el disco.

### 12.1. Opciones disponibles

**Borrar disco e instalar Ubuntu**

Permite que Ubuntu prepare automáticamente el almacenamiento.

**Más opciones**

Permite configurar manualmente las particiones.

### 12.2. Elección del profesor

Selecciona:

**Más opciones**

Después pulsa **Continuar**.

### 12.3. ¿Por qué utilizar Más opciones?

Porque permite estudiar:

- Cómo crear particiones.
- Cómo asignar tamaños.
- Cómo seleccionar sistemas de archivos.
- Cómo establecer puntos de montaje.
- Cómo preparar espacio de intercambio.

**Aprendizaje:** el particionado manual ofrece mayor control, pero también requiere comprender cómo funcionará el arranque del sistema.

---

## 13. Pantalla de particionado manual de Ubuntu

El instalador muestra el disco:

`/dev/sda`

Con la identificación:

`/dev/sda ATA VBOX HARDDISK (26.8 GB)`

### 13.1. ¿Qué es /dev/sda?

En Linux, los dispositivos de almacenamiento aparecen representados mediante nombres dentro del directorio `/dev`.

En esta demostración:

- `/dev/sda`: disco virtual completo.
- `/dev/sda1`: primera partición.
- `/dev/sda2`: segunda partición.

### 13.2. ¿Por qué aparecen 26,8 GB si configuramos 25 GB?

La diferencia se debe a las unidades utilizadas para expresar la capacidad.

VirtualBox presenta una capacidad de 25 GiB, equivalente aproximadamente a 26,8 GB decimales.

No significa que el disco haya aumentado de tamaño.

### 13.3. Columnas de la tabla

| Columna | Función |
|---|---|
| Dispositivo | Identifica el disco o partición |
| Tipo | Sistema de archivos o tipo de partición |
| Punto de montaje | Ubicación de uso dentro de Linux |
| ¿Formatear? | Indica si se formateará |
| Tamaño | Capacidad |
| En uso | Espacio utilizado |
| Sistema | Información del sistema detectado |

### 13.4. Botones disponibles

**+**

Crear una partición.

**−**

Eliminar la partición seleccionada.

**Cambiar...**

Modificar determinadas propiedades.

**Nueva tabla de particiones...**

Preparar una nueva tabla de particiones.

**Revertir**

Descartar modificaciones pendientes del particionado.

**Instalar ahora**

Continuar después de preparar el almacenamiento.

### 13.5. Destino del cargador de arranque

El campo:

**Dispositivo donde instalar el cargador de arranque**

Muestra:

`/dev/sda ATA VBOX HARDDISK (26.8 GB)`

El profesor mantiene seleccionado el disco completo `/dev/sda`.

---

## 14. Crear una nueva tabla de particiones

### 14.1. Procedimiento

1. Seleccionar el disco `/dev/sda`.
2. Hacer clic en **Nueva tabla de particiones...**.
3. Leer el mensaje de advertencia.
4. Seleccionar **Continuar**.

### 14.2. Advertencia del instalador

El programa advierte que crear una nueva tabla puede eliminar las particiones previamente existentes cuando los cambios se apliquen.

En esta demostración se trabaja sobre un disco virtual nuevo.

### 14.3. Resultado

Aparece una entrada de:

**espacio libre — 26843 MB**

Todo el disco está disponible para crear las particiones de Ubuntu.

### 14.4. ¿Qué esquema de particiones se creó?

La pantalla no muestra explícitamente si se utiliza MBR o GPT.

Sin embargo, una advertencia posterior sobre la necesidad de una partición **Reserved BIOS boot area** resulta coherente con un escenario de arranque BIOS utilizando GPT.

Por tanto:

- La captura inicial no identifica el esquema.
- La advertencia posterior aporta una pista técnica importante.
- No debemos afirmar que el disco es MBR simplemente porque EFI esté deshabilitado.

---

## 15. Crear la partición raíz de Ubuntu

El profesor selecciona el espacio libre y hace clic en **+**.

Aparece la ventana:

**Crear partición**

### 15.1. Valores utilizados

| Campo | Configuración |
|---|---|
| Tamaño | 20000 MB |
| Tipo de la nueva partición | Primaria |
| Ubicación | Al principio de este espacio |
| Utilizar como | sistema de ficheros ext4 transaccional |
| Punto de montaje | `/` |

### 15.2. Procedimiento paso a paso

1. Seleccionar **espacio libre**.
2. Hacer clic en **+**.
3. Introducir `20000` en **Tamaño**.
4. Seleccionar **Primaria**.
5. Seleccionar **Al principio de este espacio**.
6. En **Utilizar como**, elegir **sistema de ficheros ext4 transaccional**.
7. En **Punto de montaje**, seleccionar `/`.
8. Hacer clic en **OK**.

### 15.3. ¿Qué es ext4?

`ext4` es un sistema de archivos utilizado en Linux.

Permite organizar archivos, directorios y metadatos en una partición.

### 15.4. ¿Qué significa el punto de montaje /?

La barra `/` representa el directorio raíz de Linux.

Todos los demás directorios del sistema se organizan a partir de esa raíz.

Ejemplo simplificado:

```text
/
├── boot/
├── etc/
├── home/
├── usr/
└── var/
```

### 15.5. Resultado

El instalador crea:

`/dev/sda1`

Con los siguientes valores:

| Propiedad | Resultado |
|---|---|
| Partición | /dev/sda1 |
| Sistema de archivos | ext4 |
| Punto de montaje | / |
| Tamaño mostrado | 19999 MB |
| Formatear | Marcado |

Aunque introducimos 20000 MB, el instalador muestra 19999 MB como tamaño final.

Esta diferencia pequeña corresponde al resultado que presenta el particionador.

---

## 16. Crear la partición swap

Después de crear la partición raíz, queda aproximadamente **6842 MB de espacio libre**.

El profesor decide utilizar ese espacio para una partición de intercambio.

### 16.1. ¿Qué es swap?

La *swap*, o área de intercambio, es una zona de almacenamiento que Linux puede utilizar para mover determinadas páginas de memoria.

Se utiliza como complemento de la RAM en ciertas situaciones.

**Importante:** una partición swap no tiene la misma velocidad que la memoria RAM física.

### 16.2. Configuración utilizada

| Campo | Valor |
|---|---|
| Tamaño | 6843 MB |
| Tipo | Primaria |
| Ubicación | Al principio de este espacio |
| Utilizar como | área de intercambio |

### 16.3. Procedimiento

1. Seleccionar el espacio libre restante.
2. Hacer clic en **+**.
3. Mantener el tamaño mostrado de `6843 MB`.
4. Elegir **Primaria**.
5. Seleccionar **Al principio de este espacio**.
6. En **Utilizar como**, seleccionar **área de intercambio**.
7. Hacer clic en **OK**.

### 16.4. Resultado

El instalador crea:

`/dev/sda2`

Con estas propiedades:

| Propiedad | Resultado |
|---|---|
| Partición | /dev/sda2 |
| Tipo | swap |
| Tamaño final | 6841 MB |
| Punto de montaje convencional | No corresponde |

### 16.5. ¿Por qué no tiene punto de montaje /?

Porque swap no se utiliza como un sistema de archivos convencional para guardar documentos.

Cumple una función relacionada con la administración de memoria.

### 16.6. ¿Es obligatorio crear una partición swap?

No.

Linux puede utilizar otros mecanismos, como un archivo swap.

En esta clase, el profesor elige una partición independiente para explicar el proceso.

---

## 17. Distribución final del disco de Ubuntu

Después de crear ambas particiones, el disco queda organizado de la siguiente manera:

| Partición | Tipo | Tamaño aproximado | Función |
|---|---|---:|---|
| `/dev/sda1` | ext4 | 20 GB | Sistema Ubuntu, montado en `/` |
| `/dev/sda2` | swap | 6,8 GB | Intercambio de memoria |
| Espacios residuales | Libre | Aproximadamente 1 MB en cada extremo | Espacio sin asignar |

El dispositivo seleccionado para instalar el cargador de arranque continúa siendo:

`/dev/sda`

### 17.1. Observación

No se observa la creación de:

- Una partición EFI.
- Una partición BIOS Boot.
- Una partición `/home` independiente.

La instalación se prepara únicamente con una partición raíz y otra de intercambio.

Esto será importante al interpretar las advertencias posteriores.

---

## 18. Advertencias sobre EFI y el cargador de arranque

Cuando el profesor pulsa **Instalar ahora**, el instalador presenta advertencias.

Este es uno de los aprendizajes técnicos más importantes de la clase.

### 18.1. Primera advertencia: ausencia de una partición EFI

El instalador muestra en inglés un mensaje indicando que no encontró una partición EFI y que el sistema podría no arrancar correctamente.

Ofrece:

- **Volver**.
- **Continuar**.

### ¿Qué significa?

El instalador detecta que falta una estructura que podría ser necesaria para determinados modos de arranque.

Sin embargo, debemos recordar que el profesor había dejado EFI deshabilitado en VirtualBox.

Por tanto, **la ausencia de una partición EFI no demuestra por sí sola que la instalación BIOS sea incorrecta**.

En un arranque BIOS tradicional no se necesita necesariamente una partición EFI.

### 18.2. Segunda advertencia: Reserved BIOS boot area

El instalador muestra otra advertencia.

Indica que el formato de la tabla de particiones utilizado normalmente requiere una partición separada para el cargador de arranque.

Especifica que debe identificarse como:

**Reserved BIOS boot area**

Y tener al menos aproximadamente:

**1 MB**

### 18.3. ¿Qué es una partición BIOS Boot?

Es una pequeña partición utilizada por GRUB en determinadas instalaciones con:

**Firmware BIOS + disco GPT**

No equivale a una partición EFI.

Su función es proporcionar espacio para determinados componentes de GRUB necesarios durante el arranque.

### 18.4. Diferencia entre EFI y BIOS Boot

| Elemento | EFI System Partition | BIOS Boot Partition |
|---|---|---|
| Modo de arranque | UEFI | BIOS tradicional con GPT |
| Función | Guardar archivos de arranque EFI | Alojar componentes de GRUB para BIOS/GPT |
| Sistema de archivos habitual | FAT32 | No requiere un sistema de archivos convencional |
| Tamaño típico | Decenas o cientos de MB | Aproximadamente 1–2 MB |

### 18.5. ¿Qué hace el profesor?

El profesor continúa con la instalación sin que hayamos observado la creación de ninguna de estas particiones adicionales.

### 18.6. ¿Es recomendable ignorar las advertencias?

No como procedimiento general.

En una instalación que deseamos conservar, debemos revisar por qué aparecen y asegurar una configuración compatible entre:

- Firmware.
- Tabla de particiones.
- Cargador de arranque.
- Particiones disponibles.

En nuestra documentación conservamos fielmente lo que hizo el profesor, pero también registramos que **el instalador avisó de un posible fallo del arranque**.

### 18.7. ¿Se comprobó después que esta instalación arrancaba?

No.

La instalación de esa máquina se interrumpió durante la copia de archivos.

Por tanto, no tenemos evidencia de que esa configuración concreta terminara instalando GRUB correctamente.

---

## 19. Confirmar los cambios del disco de Ubuntu

Después de continuar, aparece:

**¿Desea escribir los cambios en los discos?**

### 19.1. Información mostrada

El instalador indica que modificará el disco:

`SCSI3 (0,0,0) (sda)`

Y formateará:

- Partición 1 como `ext4`.
- Partición 2 como intercambio.

### 19.2. ¿Qué significa esta confirmación?

Hasta este punto, el particionador ha preparado los cambios.

Al confirmar, el instalador procede a aplicarlos al disco virtual.

### 19.3. Procedimiento

1. Revisar la lista de particiones.
2. Confirmar que el destino es el disco virtual deseado.
3. Comprobar los formatos.
4. Hacer clic en **Continuar**.

### 19.4. Precaución

En una computadora física, seleccionar el disco equivocado podría provocar pérdida de información.

En esta demostración se trabaja sobre un disco virtual destinado exclusivamente a Ubuntu.

---

## 20. Configurar la ubicación geográfica

El instalador presenta:

**¿Dónde se encuentra?**

### 20.1. Procedimiento

1. Observar el mapa mundial.
2. Seleccionar una ciudad.
3. Comprobar el nombre de ubicación.
4. Hacer clic en **Continuar**.

### 20.2. Configuración del profesor

**Madrid**

### 20.3. ¿Para qué sirve?

Esta selección determina principalmente la zona horaria utilizada por Ubuntu.

No cambia necesariamente el idioma del sistema.

---

## 21. Crear el usuario de Ubuntu

El instalador muestra:

**¿Quién es usted?**

### 21.1. Campos observados

| Campo | Valor del profesor |
|---|---|
| Su nombre | usuario |
| El nombre de su equipo | usuario-VirtualBox |
| Elija un nombre de usuario | usuario |
| Elija una contraseña | Configurada, no visible |
| Confirme su contraseña | Configurada, no visible |
| Iniciar sesión automáticamente | No seleccionado |
| Solicitar mi contraseña para iniciar sesión | Seleccionado |
| Utilizar Active Directory | Desmarcado |

### 21.2. Su nombre

Identifica de manera descriptiva a la persona que utiliza el equipo.

### 21.3. Nombre del equipo

`usuario-VirtualBox`

Es el nombre con el que Ubuntu identifica la computadora.

También se denomina *hostname*.

### 21.4. Nombre de usuario

`usuario`

Es el identificador de la cuenta que se utilizará para iniciar sesión.

### 21.5. Contraseña

Permite proteger el acceso a la cuenta.

El instalador muestra una advertencia:

**Contraseña débil**

Esto indica que considera poco robusta la contraseña introducida.

**Aprendizaje:** para una instalación real conviene utilizar contraseñas fuertes y no incluirlas en la documentación pública.

### 21.6. Inicio de sesión

El profesor selecciona:

**Solicitar mi contraseña para iniciar sesión**

Esto significa que el sistema solicitará autenticación al entrar en la sesión.

### 21.7. Active Directory

Se trata de una opción de integración con determinados servicios de dominio y administración de identidades.

El profesor la deja desmarcada.

### 21.8. Continuar

Después de configurar los campos, hace clic en **Continuar**.

---

## 22. Copia e instalación de archivos de Ubuntu

El instalador muestra:

**Le damos la bienvenida a Ubuntu**

En la parte inferior aparece:

**Copiando archivos...**

### 22.1. ¿Qué ocurre durante esta fase?

El instalador comienza a preparar el sistema en el disco virtual.

Entre otras operaciones puede:

- Copiar archivos de Ubuntu.
- Instalar paquetes.
- Aplicar configuraciones.
- Preparar componentes de arranque.

### 22.2. ¿Qué debemos hacer?

Cuando queremos completar una instalación:

1. Mantener encendida la máquina virtual.
2. Esperar a que avance la barra.
3. No interrumpir la copia.
4. Permitir que terminen las operaciones.
5. Realizar el reinicio solicitado.
6. Comprobar que Ubuntu arranca desde el disco virtual.

### 22.3. ¿Qué ocurre en el video?

El profesor decide interrumpir esta instalación antes de que finalice.

El motivo es que ya dispone de otra máquina con Ubuntu instalado y quiere agilizar la explicación.

---

## 23. Interrumpir y eliminar la máquina temporal de Ubuntu

### 23.1. Opciones de cierre en VirtualBox

Al solicitar el cierre de la ventana, VirtualBox muestra:

| Opción | Función |
|---|---|
| Save the machine state | Guardar el estado para continuar después |
| Send the shutdown signal | Solicitar un apagado normal |
| Power off the machine | Cortar inmediatamente la alimentación virtual |

### 23.2. Decisión del profesor

Selecciona:

**Power off the machine**

Y confirma con **OK**.

### 23.3. ¿Qué significa?

Se trata de un apagado forzado.

No espera a que Ubuntu termine de instalarse.

### 23.4. ¿Es recomendable?

No cuando queremos conservar una instalación funcional.

En esta demostración el profesor lo hace porque la máquina es temporal y no pretende terminar su instalación.

### 23.5. Eliminar la máquina virtual

Después de detenerla:

1. Regresa a **Oracle VM VirtualBox Administrador**.
2. Selecciona `Instalando Ubuntu Solo`.
3. Inicia su eliminación.
4. VirtualBox muestra una ventana de confirmación.

### 23.6. Opciones de eliminación

**Cancelar**

Cancela la operación.

**Solo borrar**

Quita el registro de la máquina del administrador, pero conserva sus archivos.

**Eliminar todos los archivos**

Elimina la máquina registrada y sus archivos asociados mediante VirtualBox.

### 23.7. Resultado observado

El profesor elimina la máquina temporal de la lista.

La captura no permite comprobar cuál de las dos modalidades de eliminación confirmó finalmente.

### 23.8. Aprendizaje

Las máquinas virtuales son útiles para realizar prácticas repetibles.

Podemos crear un entorno, experimentar, eliminarlo y comenzar nuevamente sin modificar directamente el sistema operativo del equipo anfitrión.

---

## 24. Mostrar Ubuntu previamente instalado

El profesor utiliza otra máquina virtual:

`Solo Ubuntu`

### 24.1. Diferencia entre las máquinas

| Máquina | Finalidad |
|---|---|
| Instalando Ubuntu Solo | Demostrar el procedimiento de instalación |
| Solo Ubuntu | Mostrar Ubuntu desde una instalación ya existente |

### 24.2. Iniciar Solo Ubuntu

1. Abrir VirtualBox.
2. Seleccionar **Solo Ubuntu**.
3. Hacer clic en **Iniciar**.
4. Esperar al arranque.
5. Mostrar el escritorio.

### 24.3. Elementos del escritorio observados

- Entorno de escritorio GNOME.
- Fondo característico de Ubuntu 22.04.
- Panel lateral de aplicaciones.
- Firefox.
- Administrador de archivos.
- Ubuntu Software.
- Menú Actividades.
- Menú de aplicaciones.

### 24.4. ¿Qué demuestra?

Que esta segunda máquina tiene Ubuntu instalado y consigue iniciar correctamente.

**No demuestra que haya terminado la instalación anterior**, porque son máquinas virtuales diferentes.

---

## 25. Crear una instantánea de Ubuntu recién instalado

El profesor recomienda crear una instantánea antes de modificar Ubuntu.

### 25.1. ¿Por qué crearla?

Para conservar una instalación limpia y funcional antes de:

- Instalar aplicaciones.
- Modificar configuraciones.
- Probar herramientas.
- Realizar experimentos.
- Ejecutar procedimientos que puedan generar errores.

### 25.2. Apagar Ubuntu normalmente

El profesor utiliza:

1. Menú del sistema.
2. **Apagar / cerrar sesión**.
3. **Apagar...**.
4. Espera a que la máquina quede apagada.

### 25.3. Abrir Instantáneas

Desde VirtualBox:

1. Seleccionar **Solo Ubuntu**.
2. Abrir el selector de vistas.
3. Seleccionar **Instantáneas**.
4. Localizar **Estado actual**.

### 25.4. Crear el punto de recuperación

El procedimiento es:

1. Seleccionar el estado actual.
2. Hacer clic en **Tomar**.
3. Introducir el nombre.
4. Confirmar la creación.
5. Comprobar que aparece en el árbol.

### 25.5. Nombre de la instantánea

`Ubuntu recién instalado`

### 25.6. Resultado observado

| Campo | Resultado |
|---|---|
| Máquina | Solo Ubuntu |
| Estado | Apagada |
| Instantánea | Ubuntu recién instalado |
| Fecha mostrada | 20/12/2023, 7:19 |
| Elemento inferior | Estado actual (modificado) |

La captura confirma que el punto de recuperación fue creado.

### 25.7. ¿Qué significa Estado actual (modificado)?

Representa el estado de trabajo asociado a la instantánea guardada.

No significa que Ubuntu esté dañado.

### 25.8. Aprendizaje

La instantánea permite regresar a un estado anterior si posteriormente realizamos cambios problemáticos.

No sustituye una copia de seguridad independiente.

---

# PARTE III — INSTALACIÓN ÚNICAMENTE DE WINDOWS 10

## 26. Crear una máquina virtual para Windows 10

Después de Ubuntu, el profesor comienza una demostración de instalación individual de Windows 10.

### 26.1. Abrir el asistente

1. Abrir Oracle VM VirtualBox Administrador.
2. Hacer clic en **Nueva**.
3. Esperar a que aparezca **Crear máquina virtual**.

### 26.2. Nombre y sistema operativo

En la primera pantalla introduce:

| Campo | Valor |
|---|---|
| Nombre | Unicamente Windows 10 |
| Carpeta | /Users/conquerblocks/VirtualBox VMs |
| Imagen ISO | No seleccionado inicialmente |
| Tipo | Microsoft Windows |
| Versión | Windows 10 (64-bit) |

La opción **Omitir instalación desatendida** aparece deshabilitada mientras no hay una ISO seleccionada.

### 26.3. ¿Por qué no selecciona la ISO todavía?

El profesor decide crear primero la máquina virtual y conectar la imagen de instalación más adelante desde la configuración de almacenamiento.

VirtualBox permite realizar ambos procedimientos.

### 26.4. Continuar

Después hace clic en **Siguiente**.

---

## 27. Configurar el hardware de Windows 10

En la pantalla **Hardware**, el profesor establece:

| Campo | Valor |
|---|---|
| Memoria base | 4096 MB |
| Procesadores | 1 |
| Habilitar EFI (sólo SO especiales) | Desmarcado |

### 27.1. Memoria RAM

4096 MB equivalen a 4 GB de memoria virtual asignada.

### 27.2. Procesadores

El profesor asigna un procesador virtual.

### 27.3. EFI

Mantiene EFI deshabilitado.

Esto prepara la máquina para utilizar el arranque BIOS tradicional.

### 27.4. Continuar

Hace clic en **Siguiente**.

---

## 28. Crear el disco duro virtual de Windows

El asistente muestra:

**Disco duro virtual**

### 28.1. Opción seleccionada

**Crear un disco duro virtual ahora**

### 28.2. Tamaño configurado

**50,00 GB**

### 28.3. Reservar tamaño completo

El profesor deja esta casilla desmarcada.

### 28.4. ¿Qué significa?

El archivo del disco virtual puede crecer conforme se almacenan datos, en lugar de reservar inmediatamente todo su tamaño máximo.

### 28.5. Opciones disponibles

| Opción | Función |
|---|---|
| Crear un disco duro virtual ahora | Crear un disco nuevo |
| Usar un archivo de disco duro virtual existente | Asociar un disco ya creado |
| No añadir un disco duro virtual | Crear la máquina sin disco en ese momento |

### 28.6. Continuar

Hace clic en **Siguiente**.

---

## 29. Revisar el resumen de creación

En la pantalla **Resumen** aparecen los parámetros elegidos.

| Parámetro | Valor |
|---|---|
| Nombre | Unicamente Windows 10 |
| Sistema | Windows 10 (64-bit) |
| RAM | 4096 MB |
| Procesadores | 1 |
| EFI | false |
| Tamaño de disco | 50,00 GB |
| Reservar tamaño completo | false |

### Procedimiento

1. Revisar todos los datos.
2. Comprobar que el disco y la RAM son correctos.
3. Hacer clic en **Terminar**.
4. Verificar que la máquina aparece en VirtualBox como **Apagada**.

**Resultado:** la máquina virtual está creada, pero Windows todavía no está instalado.

---

## 30. Configurar el almacenamiento de Windows 10

El profesor abre:

**Configuración → Almacenamiento**

### 30.1. Conectar la ISO

1. Seleccionar `Unicamente Windows 10`.
2. Abrir **Configuración**.
3. Seleccionar **Almacenamiento**.
4. Localizar el controlador SATA.
5. Seleccionar la unidad óptica.
6. Asociar la ISO de Windows 10.
7. Hacer clic en **Aceptar**.

### 30.2. Archivo ISO utilizado

`Win10_22H2_Spanish_x64v1.iso`

### 30.3. Información observada

| Campo | Valor |
|---|---|
| Nombre de ISO | Win10_22H2_Spanish_x64v1.iso |
| Tipo | Imagen |
| Tamaño | 5,74 GB |
| Unidad | Puerto SATA 1 |
| Disco virtual | Unicamente Windows 10.vdi |

### 30.4. ¿Qué significa el nombre?

- `Win10`: Windows 10.
- `22H2`: versión del sistema.
- `Spanish`: idioma español.
- `x64`: arquitectura de 64 bits.
- `.iso`: imagen del medio de instalación.

### 30.5. Diferencia entre VDI e ISO

La ISO contiene el instalador de Windows.

El VDI es el disco donde se instalará Windows y quedarán almacenados sus archivos.

---

## 31. Obtener una ISO de Windows 10 desde Microsoft

El profesor también muestra la página oficial de Microsoft.

### 31.1. Sitio web

https://www.microsoft.com/es-es/software-download/windows10ISO

### 31.2. Opciones mostradas

En la página aparece Windows 10 en español y los botones:

- **32-bit Descargar**.
- **64-bit Descargar**.

### 31.3. Procedimiento explicado

1. Abrir un navegador.
2. Acceder al sitio oficial de Microsoft.
3. Seleccionar la edición disponible.
4. Seleccionar el idioma español.
5. Confirmar la selección.
6. Elegir la arquitectura correspondiente.
7. Descargar la imagen ISO.
8. Guardarla en el equipo anfitrión.
9. Conectarla posteriormente desde VirtualBox.

### 31.4. ¿Qué arquitectura corresponde a la demostración?

**64 bits**

Porque la máquina está configurada como Windows 10 (64-bit).

### 31.5. Vigencia del enlace

En la captura del profesor, Microsoft indica que el enlace de descarga generado es válido durante 24 horas.

Esto significa que el enlace temporal puede caducar, no que una ISO ya descargada deje de funcionar después de ese tiempo.

### 31.6. Nota de actualidad

Windows 10 terminó su soporte general el 14 de octubre de 2025.

La instalación se documenta por su valor didáctico dentro del curso, pero actualmente no conviene utilizar Windows 10 sin las protecciones y actualizaciones aplicables para realizar actividades sensibles.

---

## 32. Iniciar la máquina virtual de Windows 10

### 32.1. Procedimiento

1. Abrir VirtualBox.
2. Seleccionar `Unicamente Windows 10`.
3. Confirmar que la ISO está conectada.
4. Hacer clic en **Iniciar**.
5. Esperar a que se abra la ventana de la máquina virtual.

### 32.2. Estado observado

La primera pantalla aparece negra durante el arranque.

VirtualBox indica:

`Unicamente Windows 10 [Running]`

Después aparece el asistente de instalación de Windows.

---

## 33. Configurar el idioma de instalación de Windows

El instalador presenta:

**Programa de configuración de Windows**

### 33.1. Valores utilizados

| Campo | Configuración |
|---|---|
| Idioma que va a instalar | Español (España, internacional) |
| Formato de hora y moneda | Español (España, internacional) |
| Teclado o método de entrada | Español |

### 33.2. Procedimiento

1. Revisar el idioma.
2. Revisar el formato regional.
3. Revisar la distribución del teclado.
4. Hacer clic en **Siguiente**.

### 33.3. Aprendizaje

Idioma, región y distribución del teclado son configuraciones diferentes.

---

## 34. Iniciar el instalador de Windows

En la siguiente pantalla aparece:

**Instalar ahora**

También aparece:

**Reparar el equipo**

### 34.1. ¿Qué significa cada opción?

**Instalar ahora**

Inicia el proceso de instalación.

**Reparar el equipo**

Permite acceder a herramientas de recuperación y reparación.

### 34.2. Elección del profesor

Selecciona:

**Instalar ahora**

---

## 35. Pantalla Activar Windows

Windows solicita introducir una clave de producto.

### 35.1. ¿Qué es una clave de producto?

Es un identificador de licencia utilizado durante determinados procesos de activación de Windows.

### 35.2. Elección del profesor

Selecciona:

**No tengo clave de producto**

### 35.3. ¿Qué significa?

Permite continuar con la instalación sin introducir una clave en ese momento.

**Importante:** continuar sin clave no significa que Windows quede activado ni que se disponga automáticamente de una licencia.

---

## 36. Seleccionar la edición de Windows 10

El instalador muestra:

**Seleccionar el sistema operativo que quieres instalar**

### 36.1. Ediciones visibles

Entre otras, aparecen:

- Windows 10 Home.
- Windows 10 Home N.
- Windows 10 Home Single Language.
- Windows 10 Education.
- Windows 10 Education N.
- Windows 10 Pro.
- Windows 10 Pro N.

### 36.2. Elección del profesor

**Windows 10 Pro — x64**

### 36.3. Procedimiento

1. Revisar la lista.
2. Seleccionar **Windows 10 Pro**.
3. Comprobar la arquitectura x64.
4. Hacer clic en **Siguiente**.

### 36.4. Aprendizaje

La imagen ISO puede incluir varias ediciones de Windows.

La edición elegida debe corresponder a la licencia que se utilizará cuando sea necesario activar el sistema.

---

## 37. Aceptar los términos de licencia

El instalador muestra:

**Términos de licencia y avisos aplicables**

### Procedimiento

1. Revisar los términos.
2. Marcar **Acepto los términos de licencia**.
3. Hacer clic en **Siguiente**.

---

## 38. Seleccionar el tipo de instalación

El instalador pregunta:

**¿Qué tipo de instalación quieres?**

### 38.1. Actualización

**Actualización: instalar Windows y conservar archivos, configuraciones y aplicaciones**

Esta opción está orientada a determinados escenarios de actualización de una instalación existente.

### 38.2. Personalizada

**Personalizada: instalar solo Windows (avanzado)**

Permite realizar una instalación nueva y elegir el destino del sistema.

### 38.3. Elección del profesor

Selecciona:

**Personalizada: instalar solo Windows (avanzado)**

### 38.4. ¿Por qué?

Porque se trata de un disco virtual nuevo, sin una instalación previa de Windows.

---

## 39. Seleccionar el disco de instalación

Aparece la pantalla:

**¿Dónde quieres instalar Windows?**

### 39.1. Estado inicial

| Nombre | Tamaño total | Espacio disponible |
|---|---|---|
| Espacio sin asignar en la unidad 0 | 50,0 GB | 50,0 GB |

### 39.2. ¿Qué significa espacio sin asignar?

Es espacio del disco que todavía no está incluido en una partición utilizable.

### 39.3. Herramientas disponibles

**Actualizar**

Actualizar la lista de discos.

**Eliminar**

Eliminar una partición.

**Formatear**

Formatear una partición.

**Nuevo**

Crear una partición.

**Extender**

Ampliar una partición cuando sea posible.

**Cargar contr.**

Cargar controladores de almacenamiento si el instalador los necesita.

---

## 40. Crear las particiones de Windows 10

El profesor decide crear una partición desde el espacio sin asignar.

### 40.1. Procedimiento

1. Seleccionar **Espacio sin asignar en la unidad 0**.
2. Hacer clic en **Nuevo**.
3. Revisar el campo **Tamaño**.
4. Mantener el valor `51200 MB`.
5. Hacer clic en **Aplicar**.

### 40.2. ¿Por qué 51200 MB?

El instalador utiliza una cantidad correspondiente a los 50 GiB del disco:

50 × 1024 = 51200 MiB.

La interfaz muestra el campo como MB.

### 40.3. Advertencia de Windows

El instalador informa que podría crear particiones adicionales para asegurar el funcionamiento de determinadas características del sistema.

### 40.4. Elección del profesor

Hace clic en **Aceptar**.

---

## 41. Comprobar las particiones creadas

Después de aplicar los cambios, Windows muestra dos particiones.

### 41.1. Distribución observada

| Partición | Tamaño | Espacio disponible | Tipo |
|---|---:|---:|---|
| Unidad 0 Partición 1: Reservado para el sistema | 50,0 MB | 38,0 MB | Sistema |
| Unidad 0 Partición 2 | 49,9 GB | 49,9 GB | Principal |

### 41.2. Partición reservada para el sistema

Contiene componentes relacionados con el arranque de Windows en esta configuración.

No está destinada a almacenar los documentos habituales del usuario.

### 41.3. Partición principal

Es donde se instalará Windows 10.

### 41.4. Elección del profesor

Selecciona:

**Unidad 0 Partición 2**

Después hace clic en **Siguiente**.

### 41.5. Aprendizaje

En esta demostración, Windows crea automáticamente una partición reservada y otra principal.

El profesor conserva ambas.

**Los tamaños concretos son los observados en el video, no valores obligatorios para todas las instalaciones de Windows.**

---

## 42. Comenzar la instalación de archivos de Windows

Aparece:

**Instalando Windows**

### 42.1. Etapas mostradas

1. Copiando archivos de Windows.
2. Preparando archivos para instalación.
3. Instalando características.
4. Instalando actualizaciones.
5. Acabando.

### 42.2. Estado observado

| Etapa | Estado |
|---|---|
| Copiando archivos de Windows | Completada |
| Preparando archivos para instalación | 0 % |
| Instalando características | Pendiente |
| Instalando actualizaciones | Pendiente |
| Acabando | Pendiente |

### 42.3. ¿Qué ocurre durante esta fase?

Windows comienza a preparar e instalar sus componentes en el disco virtual.

### 42.4. ¿Qué debemos hacer para completar una instalación real?

1. Mantener la máquina encendida.
2. Permitir que avance la instalación.
3. Esperar los reinicios necesarios.
4. Completar las opciones de configuración inicial.
5. Crear o configurar la cuenta de usuario.
6. Llegar al escritorio.
7. Verificar que Windows arranca desde el disco virtual.

### 42.5. ¿Qué hace el profesor?

Interrumpe la instalación para agilizar la grabación.

---

## 43. Interrumpir y eliminar la máquina temporal de Windows

Según explica el profesor, ya dispone de otra máquina virtual con Windows 10 instalado.

Por eso decide detener y eliminar `Unicamente Windows 10`.

### 43.1. Procedimiento descrito

1. Detiene la máquina temporal.
2. Regresa a Oracle VirtualBox Administrador.
3. Selecciona `Unicamente Windows 10`.
4. Inicia su eliminación.
5. Continúa con otra máquina ya instalada.

### 43.2. Importante

La instalación iniciada durante la grabación no termina en esa máquina temporal.

La captura no muestra el tipo exacto de eliminación confirmado.

### 43.3. Recomendación de aprendizaje

Si realizamos esta instalación personalmente y queremos conservarla, debemos dejar que el instalador termine.

Apagarla forzosamente durante la copia de archivos puede dejar el sistema incompleto.

---

## 44. Mostrar Windows 10 previamente instalado

El profesor utiliza otra máquina:

`Windows 10`

Esta no es la misma que `Unicamente Windows 10`.

### 44.1. Configuración observada

| Parámetro | Valor |
|---|---|
| Nombre | Windows 10 |
| Sistema | Windows 10 (64-bit) |
| RAM | 4096 MB |
| Disco virtual | Windows 10.vdi |
| Tamaño del disco | 50,00 GB |
| Memoria de vídeo | 128 MB |
| Controlador gráfico | VBoxSVGA |
| Factor de escala | 2,00 |
| Red | NAT |
| ISO conectada | Win10_22H2_Spanish_x64v1.iso |

### 44.2. Iniciar la máquina

1. Seleccionar **Windows 10**.
2. Hacer clic en **Iniciar**.
3. Esperar el arranque.
4. Acceder al escritorio.

### 44.3. Elementos observados

- Papelera de reciclaje.
- Microsoft Edge.
- Menú Inicio.
- Barra de búsqueda.
- Barra de tareas.
- Reloj y área de notificaciones.

### 44.4. ¿Qué demuestra?

La máquina previamente preparada pudo iniciar Windows y mostrar su escritorio.

No podemos comprobar únicamente con esa captura:

- La activación.
- La edición exacta instalada.
- La versión detallada.
- El funcionamiento de Guest Additions.

Para esas verificaciones serían necesarias otras herramientas dentro del sistema operativo.

---

## 45. Guardar el estado de Windows 10

Después de mostrar el escritorio, el profesor solicita cerrar la máquina virtual.

VirtualBox presenta:

| Opción | Función |
|---|---|
| Save the machine state | Guardar el estado de ejecución |
| Send the shutdown signal | Solicitar un apagado normal |
| Power off the machine | Apagar forzosamente |

### 45.1. Opción seleccionada

**Save the machine state**

### 45.2. ¿Qué significa?

VirtualBox guarda la sesión de ejecución para poder reanudarla más adelante.

Es parecido a hibernar un equipo.

### 45.3. Diferencia respecto a apagar

**Apagar normalmente**

Cierra el sistema operativo.

**Guardar el estado**

Conserva la sesión para reanudarla.

**Power off**

Interrumpe inmediatamente la máquina.

### 45.4. Diferencia respecto a una instantánea

Guardar el estado no es lo mismo que crear una instantánea.

La primera operación permite reanudar una sesión.

La segunda conserva un punto de recuperación dentro del historial de la máquina.

---

## 46. Crear una instantánea de Windows 10

El profesor abre la sección **Instantáneas** para la máquina `Windows 10`.

### 46.1. Procedimiento

1. Abrir Oracle VM VirtualBox Administrador.
2. Seleccionar **Windows 10**.
3. Acceder a **Instantáneas**.
4. Seleccionar el estado actual.
5. Hacer clic en **Tomar**.
6. Introducir un nombre.
7. Confirmar.
8. Verificar que aparece en la lista.

### 46.2. Nombre observado

`Windows recien instalado`

### 46.3. Resultado

| Campo | Valor |
|---|---|
| Máquina | Windows 10 |
| Estado | Guardada |
| Instantánea | Windows recien instalado |
| Fecha mostrada | 20/12/2023, 7:24 |
| Elemento adicional | Estado actual |

### 46.4. ¿Por qué el estado es Guardada?

Porque el profesor había utilizado la opción **Save the machine state**.

### 46.5. ¿Se puede crear una instantánea con una máquina guardada?

Sí.

VirtualBox permite crear instantáneas de máquinas apagadas, guardadas y, mediante mecanismos adecuados, encendidas.

### 46.6. ¿Qué conserva esta instantánea?

Conserva el punto de recuperación correspondiente a Windows 10 en ese momento.

Cuando la máquina tiene su estado de ejecución guardado, ese estado puede formar parte de la instantánea.

### 46.7. Finalidad

El profesor recomienda guardar Windows recién instalado antes de comenzar a instalar programas o realizar modificaciones.

---

# PARTE IV — COMPARACIÓN Y APRENDIZAJES

## 47. Comparación de las máquinas utilizadas

El profesor utilizó cuatro máquinas virtuales relevantes durante las demostraciones.

| Máquina virtual | Sistema | Objetivo | Resultado |
|---|---|---|---|
| Instalando Ubuntu Solo | Ubuntu 22.04.3 | Explicar la instalación desde cero | Interrumpida durante la copia |
| Solo Ubuntu | Ubuntu | Mostrar el sistema funcionando | Escritorio mostrado e instantánea creada |
| Unicamente Windows 10 | Windows 10 Pro | Explicar la instalación desde cero | Interrumpida durante la instalación |
| Windows 10 | Windows 10 | Mostrar el sistema funcionando | Escritorio mostrado e instantánea creada |

### Aprendizaje

Debemos distinguir siempre entre:

- Una instalación iniciada.
- Una instalación completada.
- Una máquina preparada previamente.
- Una comprobación real de funcionamiento.

---

## 48. Comparación del particionado de Ubuntu y Windows

| Elemento | Ubuntu | Windows 10 |
|---|---|---|
| Disco virtual | 25 GiB aproximadamente | 50 GiB |
| Firmware configurado | BIOS tradicional | BIOS tradicional |
| Método de instalación | Manual | Personalizada |
| Partición principal | ext4 montada en `/` | Partición principal de Windows |
| Espacio de intercambio | Partición swap | Windows administra su archivo de paginación mediante sus propias configuraciones |
| Partición adicional observada | swap | Reservado para el sistema |
| Cargador de arranque | GRUB, si se instala correctamente | Windows Boot Manager, según la configuración |
| Instalación del video | Interrumpida | Interrumpida |

### 48.1. Diferencia fundamental

Ubuntu utiliza puntos de montaje como `/`, mientras que Windows presenta normalmente volúmenes con letras de unidad después de instalarse.

### 48.2. Particiones y arranque

Una partición de almacenamiento no cumple necesariamente la misma función que una partición de arranque.

Debemos identificar ambas funciones antes de modificar un disco.

---

## 49. Comparación de las instantáneas creadas

| Elemento | Ubuntu | Windows 10 |
|---|---|---|
| Máquina | Solo Ubuntu | Windows 10 |
| Nombre | Ubuntu recién instalado | Windows recien instalado |
| Estado de la máquina | Apagada | Guardada |
| Fecha mostrada | 20/12/2023, 7:19 | 20/12/2023, 7:24 |
| Objetivo | Conservar instalación limpia | Conservar instalación limpia |

### 49.1. ¿Por qué crear instantáneas?

Porque permiten experimentar y regresar a un punto de recuperación.

### 49.2. ¿Son copias de seguridad independientes?

No.

Las instantáneas pueden depender de los archivos originales de la máquina virtual.

Para protegernos ante daños físicos o pérdida del almacenamiento, necesitamos respaldos independientes.

---

## 50. Instalación conjunta de Windows 10 y Ubuntu

El índice de la Clase 04 anuncia una instalación conjunta de Windows 10 y Ubuntu.

También se menciona la utilización de GRUB como gestor de arranque.

### 50.1. ¿Qué es una instalación multiboot?

Es una configuración en la que varios sistemas operativos pueden arrancar en una misma computadora.

Por ejemplo:

- Windows 10.
- Ubuntu.

Un gestor de arranque permite seleccionar cuál iniciar, siempre que la instalación y la configuración del arranque sean compatibles.

### 50.2. ¿Qué necesitamos comprender?

Entre otros aspectos:

- Esquema de particiones.
- Espacio disponible.
- Compatibilidad de los modos BIOS/UEFI.
- Particiones de arranque.
- Sistema de archivos.
- Gestor de arranque.

### 50.3. ¿Se realizó esta instalación durante el video revisado?

**No se observó la instalación conjunta en las capturas y explicaciones registradas.**

Por tanto, no podemos documentar pasos concretos ni un resultado verificado de esa instalación como si los hubiera realizado el profesor en esta clase.

### 50.4. Relación con otras clases

En la Clase 03 ya estudiamos una demostración de instalación multiboot con Windows y Linux.

Ese contenido se conserva en su documentación correspondiente.

Aquí mantenemos solamente los temas y procedimientos efectivamente revisados de la Clase 04.

---

## 51. Principales aprendizajes de la clase

### 51.1. VirtualBox permite instalar diferentes sistemas operativos

Podemos crear máquinas separadas para Ubuntu y Windows sin reemplazar el sistema operativo anfitrión.

### 51.2. BIOS y UEFI son distintos

Debemos comprender el modo de arranque antes de preparar las particiones.

### 51.3. Una partición EFI no es lo mismo que una partición BIOS Boot

Cada una tiene funciones diferentes según el entorno de arranque.

### 51.4. La ISO es el medio de instalación

No debemos confundirla con el disco VDI donde quedará instalado el sistema.

### 51.5. El particionado manual exige conocer el destino de cada partición

Es importante reconocer el disco, el sistema de archivos y el punto de montaje.

### 51.6. Ubuntu utiliza ext4 y puede utilizar swap

La partición raíz `/` almacena el sistema y swap proporciona espacio de intercambio.

### 51.7. Windows puede crear particiones adicionales

En la instalación observada creó una partición reservada y otra principal.

### 51.8. Las advertencias de arranque deben revisarse

Si el instalador informa que falta una estructura necesaria para GRUB, debemos comprobar la compatibilidad de la configuración antes de continuar.

### 51.9. Desconectar la red puede evitar descargas durante una demostración

El profesor utiliza **Not attached** para reducir operaciones de red durante la instalación de Ubuntu.

### 51.10. No debemos interrumpir instalaciones que queremos conservar

Las máquinas temporales de la clase se apagan porque el profesor ya dispone de instalaciones previamente completadas.

### 51.11. Guardar estado no equivale a crear una instantánea

Son funciones diferentes de VirtualBox.

### 51.12. Las instantáneas deben crearse en puntos estables

Es recomendable conservar una instalación limpia antes de experimentar.

### 51.13. Debemos verificar el funcionamiento real del sistema

Una instalación no se considera completada solamente porque haya comenzado a copiar archivos.

### 51.14. Las prácticas personales y las demostraciones del profesor son diferentes

La documentación de la clase registra lo mostrado por el profesor.

Los ejercicios realizados personalmente deben documentarse por separado.

---

## 52. Resultado final de la clase

Durante la Clase 04 aprendimos a preparar máquinas virtuales para instalar Ubuntu y Windows 10 como sistemas operativos individuales.

El profesor mostró los principales pasos de ambas instalaciones, incluyendo:

- Creación y configuración de máquinas virtuales.
- Selección del sistema operativo.
- Asignación de memoria y almacenamiento.
- Configuración de BIOS/EFI.
- Conexión de imágenes ISO.
- Inicio de instaladores.
- Configuración de idioma y teclado.
- Preparación de particiones.
- Configuración del usuario.
- Inicio de la copia de archivos.
- Comprobación de escritorios previamente instalados.
- Creación de instantáneas de seguridad.

También aprendimos que existen diferencias importantes entre los sistemas de particionado y los mecanismos de arranque utilizados por Windows y Linux.

### Conclusión

**La clase permite comprender el proceso de instalación individual de Ubuntu y Windows 10 en Oracle VirtualBox, así como la importancia de conservar instantáneas después de obtener una configuración estable.**

Las instalaciones nuevas utilizadas durante la grabación fueron interrumpidas por motivos de tiempo. El profesor mostró el funcionamiento de los sistemas utilizando otras máquinas virtuales previamente preparadas.

La instalación conjunta de Windows 10 y Ubuntu figura en el temario, pero no fue desarrollada en el material revisado de esta sesión.

---

## 53. Referencias técnicas oficiales

Las siguientes referencias sirven para ampliar y verificar los conceptos técnicos.

### Oracle VirtualBox

**Crear una máquina virtual**

https://docs.oracle.com/en/virtualization/virtualbox/7.2/user/create-vm.html

**Administración de máquinas virtuales e instantáneas**

https://docs.oracle.com/en/virtualization/virtualbox/7.2/user/working-with-vms.html

### Microsoft

**Particiones para instalaciones BIOS/MBR**

https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-biosmbr-based-hard-drive-partitions

**Instalación de Windows con MBR o GPT**

https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-installing-using-the-mbr-or-gpt-partition-style

**Descarga de Windows 10**

https://www.microsoft.com/es-es/software-download/windows10ISO

### Ubuntu

**UEFI y particiones de arranque**

https://help.ubuntu.com/community/UEFI

**Repositorio del profesor**

https://github.com/ConquerBlocks/conquerblocks-linux-terminal

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

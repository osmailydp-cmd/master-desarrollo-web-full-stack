# Clase 03 — Instalando sistemas operativos Windows y Linux (Multiboot)

## Objetivo

Crear una máquina virtual en Oracle VirtualBox con dos sistemas operativos instalados en un mismo disco virtual:

- **Windows 10 Pro**
- **Ubuntu 22.04.3 LTS**

Configurar un arranque múltiple (**multiboot**) mediante GNU GRUB, conservar ambos sistemas operativos y mejorar su integración con VirtualBox mediante Guest Additions.

---

# PARTE I — CREACIÓN DE LA MÁQUINA VIRTUAL

## 1. Preparar los archivos necesarios

Utilizar:

| Elemento | Configuración |
|---|---|
| Programa | Oracle VirtualBox 7.2.22 |
| Sistema anfitrión | Windows 11 |
| ISO de Windows | `Windows.iso` |
| ISO de Ubuntu | `ubuntu-22.04.3-desktop-amd64.iso` |
| Nombre de la máquina virtual | `PC-Multiboot-Osmaily` |
| Sistemas invitados | Windows 10 Pro y Ubuntu 22.04.3 LTS |

Los archivos ISO se utilizan para instalar los sistemas operativos en el disco virtual.

## 2. Crear la máquina virtual

1. Abrir **Oracle VirtualBox**.
2. Seleccionar **Nueva**.
3. Completar los datos de la máquina virtual.

### 2.1. Virtual Machine Name and Operating System

| Campo | Configuración |
|---|---|
| Name | `PC-Multiboot-Osmaily` |
| ISO Image | `E:\Descargas\ISOS\Windows.iso` |
| Type | Microsoft Windows |
| Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |

**Proceed with Unattended Installation:** al desmarcar esta opción, la instalación se realiza manualmente y permite configurar las opciones de Windows durante el proceso.

### 2.2. Specify Virtual Hardware

| Campo | Configuración |
|---|---|
| Base Memory | 4096 MB |
| Processors | 2 |
| Hard Disk Size | 100 GB |

Crear un disco virtual nuevo con las siguientes características:

| Característica | Configuración |
|---|---|
| Formato | VDI (VirtualBox Disk Image) |
| Tipo de almacenamiento | Reservado dinámicamente |
| Tamaño máximo | 100 GB |
| Archivo | `PC-Multiboot-Osmaily.vdi` |

Seleccionar **Siguiente**, revisar el **Resumen** y hacer clic en **Terminar**.

## 3. Revisar la configuración de la máquina virtual

Con la máquina apagada, seleccionar:

**PC-Multiboot-Osmaily → Configuración**

### 3.1. Sistema

En **Sistema → Placa base**:

- **Use EFI:** desmarcado.

Esta configuración permite utilizar el modo de arranque BIOS tradicional.

### 3.2. Pantalla

En **Pantalla**:

| Campo | Valor |
|---|---|
| Memoria de vídeo | 128 MB |
| Número de monitores | 1 |
| Factor de escala | 100 % |

### 3.3. Almacenamiento

En **Configuración → Almacenamiento**, comprobar:

- Disco virtual `PC-Multiboot-Osmaily.vdi`.
- Unidad óptica con la ISO de Windows.

El disco VDI es de tipo dinámico: comienza ocupando poco espacio físico y aumenta su tamaño conforme se escriben datos.

## 4. Distribución prevista del disco virtual

La máquina tiene un único disco virtual de **100 GB**, que se compartirá entre los dos sistemas operativos.

| Sistema | Espacio aproximado |
|---|---:|
| Windows 10 Pro | 50 GB |
| Ubuntu 22.04.3 LTS | 50 GB |
| Total | 100 GB |

Primero instalaremos Windows y reservaremos el espacio restante para Ubuntu.

---

# PARTE II — INSTALACIÓN DE WINDOWS 10 PRO

## 5. Instalar Windows 10 Pro

Iniciar la máquina virtual desde la ISO de Windows.

### 5.1. Configuración inicial

| Campo | Selección |
|---|---|
| Idioma que va a instalar | Español |
| Formato de hora y moneda | Español (España, internacional) |
| Teclado o método de entrada | Español |

Seleccionar **Siguiente → Instalar ahora**.

Cuando se solicite la clave de producto, seleccionar:

**No tengo clave de producto**

Elegir:

**Windows 10 Pro**

Aceptar los términos de licencia y continuar.

### 5.2. Tipo de instalación

Seleccionar:

**Personalizada: instalar solo Windows (avanzado)**

### 5.3. Crear la partición de Windows

En la pantalla de selección de disco:

1. Seleccionar el **espacio sin asignar** del disco virtual.
2. Hacer clic en **Nuevo**.
3. Introducir **51200 MB**.
4. Seleccionar **Aplicar**.
5. Aceptar la creación automática de particiones adicionales.

Windows crea una partición reservada para el sistema y otra para la instalación.

| Elemento inicial | Tamaño aproximado |
|---|---:|
| Partición reservada para el sistema | 50 MB |
| Partición principal de Windows | 50 GB |
| Espacio sin asignar | 50 GB |

Seleccionar **Unidad 0 Partición 2: Principal** y continuar con **Siguiente**.

**Importante:** conservar sin asignar el espacio restante para instalar Ubuntu posteriormente.

### 5.4. Completar la instalación

Windows copia los archivos, instala las características necesarias y reinicia la máquina virtual.

Continuar con la configuración inicial del sistema operativo.

## 6. Configuración inicial de Windows 10 Pro

Realizar las siguientes selecciones:

| Pantalla | Configuración |
|---|---|
| Región | Uruguay |
| Primera distribución de teclado | Español – Spanish |
| Segunda distribución de teclado | Inglés – English |
| ¿Cómo quiere realizar la configuración? | Configurar para uso personal |
| Inicio de sesión con Microsoft | Cuenta sin conexión |
| Servicios y aplicaciones de Microsoft | Experiencia limitada |
| ¿Quién va a usar este equipo? | Osmaily |
| Contraseña | Configurar contraseña personal |
| Preguntas de seguridad | Configurar tres preguntas |

### 6.1. Configuración adicional

En **Tenga siempre acceso a los datos de exploración recientes**, seleccionar:

**Ahora no**

En **Elegir la configuración de la privacidad para tu dispositivo**, configurar:

| Opción | Configuración |
|---|---|
| Ubicación | No |
| Encontrar mi dispositivo | No |
| Datos de diagnóstico | Interruptor desactivado; enviar datos requeridos |
| Entrada manuscrita y escritura | No |
| Experiencias personalizadas | No |
| Id. de publicidad | No |

Seleccionar **Aceptar**.

En **Personalicemos su experiencia**, seleccionar **Omitir**, sin marcar categorías adicionales.

Finalizar hasta acceder al escritorio de Windows 10 Pro.

## 7. Verificar la instalación y el particionado de Windows

### 7.1. Revisar el disco desde Administración de discos

Desde el escritorio de Windows 10:

1. Localizar el botón **Inicio** en la esquina inferior izquierda.
2. Hacer clic derecho sobre **Inicio**.
3. Seleccionar **Administración de discos**.
4. Revisar la representación gráfica inferior de **Disco 0**.

La distribución identificada fue:

| Elemento | Tamaño | Función |
|---|---:|---|
| Reservado para el sistema | 50 MB | Arranque de Windows |
| Windows (C:) — NTFS | 49,40 GB | Sistema operativo |
| Partición de recuperación | 559 MB | Recuperación de Windows |
| Espacio sin asignar | 50,00 GB | Reservado para Ubuntu |

La unidad `ESD-ISO (D:)` corresponde a la ISO montada en la unidad óptica virtual, no a una partición adicional del disco.

### 7.2. Comprobar el modo BIOS

Desde Windows 10:

1. Presionar **Windows + R**.
2. Escribir:

```text
msinfo32
```

3. Presionar **Enter**.
4. En **Información del sistema → Resumen del sistema**, localizar:

**Modo de BIOS: Heredado**

Esto confirma que Windows utiliza BIOS tradicional.

### 7.3. Comprobar la tabla de particiones MBR

1. Abrir **Administración de discos**.
2. En la parte inferior, localizar el recuadro gris situado a la izquierda de las particiones que dice **Disco 0**.
3. Hacer clic derecho sobre ese recuadro gris.
4. Seleccionar **Propiedades**.
5. Abrir la pestaña **Volúmenes**.

Resultado identificado:

**Estilo de partición: Registro de arranque maestro (MBR)**

| Característica | Resultado |
|---|---|
| Disco | Disco 0 |
| Tipo | Básico |
| Capacidad | 102399 MB |
| Espacio sin asignar | 51202 MB |
| Firmware | BIOS heredado |
| Tabla de particiones | MBR |

Esta combinación **BIOS + MBR** determinará cómo instalaremos Ubuntu y GRUB.

## 8. Crear la primera instantánea de Windows

Apagar Windows 10 correctamente.

En VirtualBox, abrir la sección **Instantáneas** y seleccionar **Tomar**.

| Campo | Valor |
|---|---|
| Nombre | `Multiboot - Windows 10 Pro - Instalación limpia` |
| Fecha registrada | 15/11/2026 — 07:07 |

Esta instantánea conserva el estado de Windows instalado, antes de configurar Guest Additions.

## 9. Instalar Guest Additions en Windows 10

### 9.1. Insertar Guest Additions

Iniciar Windows 10 y, en el menú de la máquina virtual, seleccionar:

**Dispositivos → Insertar imagen de CD de los complementos del invitado...**

Dentro de Windows:

1. Abrir **Explorador de archivos → Este equipo**.
2. Abrir la unidad **VirtualBox Guest Additions**.
3. Ejecutar `VBoxWindowsAdditions.exe`.
4. Aceptar la solicitud de permisos.
5. Seleccionar **Next**.
6. Mantener la ruta de instalación predeterminada.
7. Seleccionar **Install**.
8. Autorizar la instalación de los controladores.
9. Elegir **Reboot now** y finalizar.

### 9.2. Configurar las funciones de integración

**Pantalla**

Comprobar que Windows adapta su resolución cuando cambia el tamaño de la ventana de VirtualBox.

También se puede utilizar:

**Ver → Modo pantalla completa**

**Portapapeles compartido**

Seleccionar:

**Dispositivos → Portapapeles compartido → Bidireccional**

Se verificó que el texto puede copiarse desde Windows 11 a Windows 10 y viceversa.

**Arrastrar y soltar**

Seleccionar:

**Dispositivos → Arrastrar y soltar → Bidireccional**

Se comprobó la transferencia de archivos en ambas direcciones:

- `prueba-compartida.txt`: Windows 11 → Windows 10.
- `window10pro.txt`: Windows 10 → Windows 11.

También se comprobó el movimiento del puntero entre el sistema anfitrión y el invitado.

### 9.3. Crear la segunda instantánea

Apagar Windows 10.

En **VirtualBox → Instantáneas → Tomar**:

| Campo | Valor |
|---|---|
| Nombre | `Multiboot - Windows 10 Pro - Guest Additions configuradas` |
| Fecha registrada | 15/11/2026 — 07:58 |
| Descripción | Windows 10 Pro instalado con BIOS/MBR. Guest Additions instaladas y comprobadas. Espacio reservado para Ubuntu conservado. |

---

# PARTE III — INSTALACIÓN DE UBUNTU 22.04.3 LTS

## 10. Cambiar la ISO de Windows por la de Ubuntu

Con la máquina virtual apagada:

1. Seleccionar **PC-Multiboot-Osmaily**.
2. Abrir **Configuración → Almacenamiento**.
3. Seleccionar la unidad óptica.
4. Retirar la ISO de Windows.
5. Seleccionar la ISO `ubuntu-22.04.3-desktop-amd64.iso`.
6. Confirmar los cambios.

Mantener **Use EFI** desmarcado en **Configuración → Sistema**.

No modificar ni eliminar el disco virtual VDI.

## 11. Iniciar la instalación de Ubuntu

Encender la máquina virtual desde la ISO de Ubuntu.

En el menú de arranque de Ubuntu, seleccionar:

**Try or Install Ubuntu**

La opción **Ubuntu (safe graphics)** utiliza una configuración gráfica más conservadora, destinada a problemas de compatibilidad durante el arranque.

### 11.1. Configuración del instalador

| Campo | Configuración |
|---|---|
| Idioma | Español |
| Distribución de teclado | Spanish |
| Variante | Spanish |
| Tipo de instalación | Instalación normal |
| Descargar actualizaciones durante la instalación | Desmarcado |
| Instalar software de terceros | Desmarcado |

Continuar hasta llegar a **Tipo de instalación**.

## 12. Tipo de instalación

En **Tipo de instalación**, seleccionar:

**Más opciones**

Esta opción permite realizar el particionado manual del disco.

**No seleccionar «Borrar disco e instalar Ubuntu»**, porque eliminaría Windows y las particiones existentes.

## 13. Identificar las particiones existentes

En la pantalla **Tipo de instalación**, el instalador muestra el disco `/dev/sda` y las particiones creadas anteriormente por Windows 10.

### 13.1. Particiones identificadas

| Dispositivo | Tipo | Tamaño | En uso | Acción |
|---|---|---:|---:|---|
| `/dev/sda1` | ntfs | 52 MB | 27 MB | Conservar |
| `/dev/sda2` | ntfs | 53045 MB | 16613 MB | Conservar |
| `/dev/sda3` | ntfs | 586 MB | 496 MB | Conservar |
| espacio libre | Sin asignar | 53688 MB | — | Utilizar para Ubuntu |

No eliminar ni formatear las tres particiones NTFS de Windows.

## 14. Particionado de Ubuntu

Utilizar los **53688 MB de espacio libre** para crear las particiones de Ubuntu.

### 14.1. Crear la partición raíz `/`

1. Seleccionar **espacio libre — 53688 MB**.
2. Hacer clic en **+**.
3. Introducir la siguiente configuración:

| Campo | Valor |
|---|---|
| Tamaño | 45000 MB |
| Tipo de la nueva partición | Lógica |
| Ubicación de la nueva partición | Al principio de este espacio |
| Utilizar como | sistema de ficheros ext4 transaccional |
| Punto de montaje | `/` |

4. Confirmar con **OK**.

### 14.2. Crear la partición swap

1. Seleccionar el **espacio libre** restante.
2. Hacer clic en **+**.
3. Introducir la siguiente configuración:

| Campo | Valor |
|---|---|
| Tamaño | Todo el espacio restante, aproximadamente 8688 MB |
| Tipo de la nueva partición | Lógica |
| Utilizar como | área de intercambio |
| Punto de montaje | No corresponde |

4. Confirmar con **OK**.

### 14.3. Distribución de particiones creada

Después de crear las particiones, el instalador mostró:

| Dispositivo | Función | Sistema de archivos | Tamaño | Acción |
|---|---|---|---:|---|
| `/dev/sda1` | Reservada para el sistema de Windows | ntfs | 52 MB | Conservar |
| `/dev/sda2` | Windows 10 | ntfs | 53045 MB | Conservar |
| `/dev/sda3` | Recuperación de Windows | ntfs | 586 MB | Conservar |
| `/dev/sda4` | Partición extendida | extended | — | Contenedor de particiones lógicas |
| `/dev/sda5` | Ubuntu `/` | ext4 | 44998 MB | Crear y formatear |
| `/dev/sda6` | Ubuntu swap | swap | 8686 MB | Crear como intercambio |

La partición extendida `/dev/sda4` contiene las dos particiones lógicas de Ubuntu y no aparece como una fila independiente en la pantalla del instalador.

### 14.4. Comparación entre Ubuntu individual y multiboot

| Característica | Ubuntu individual | Multiboot actual |
|---|---|---|
| Firmware | BIOS tradicional | BIOS tradicional |
| Tabla de particiones | GPT | MBR |
| Windows instalado previamente | No | Sí |
| Partición raíz `/` | Primaria | Lógica |
| Partición swap | Primaria | Lógica |
| Partición `biosgrub` | Sí | No |

**¿Por qué utilizamos particiones lógicas en el multiboot?**

El disco MBR admite como máximo **cuatro particiones primarias**, o **tres primarias y una extendida que contenga varias particiones lógicas**.

En nuestra máquina ya existen tres particiones de Windows. Nos queda una sola entrada disponible en la tabla MBR.

Si creamos Ubuntu `/` como **Primaria**, ocuparíamos esa cuarta entrada y ya no podríamos crear otra partición independiente para swap.

En cambio, seleccionando **Lógica**, el instalador puede crear una partición extendida que contenga las dos particiones de Ubuntu (`/` y swap).

**Nota sobre `biosgrub`:** En nuestra instalación individual utilizamos BIOS + GPT, por lo que fue necesario crear una partición `biosgrub`. En el multiboot actual utilizamos BIOS + MBR, por lo que no se necesita esa partición.

## 15. Configurar el cargador de arranque

En la pantalla **Tipo de instalación**, localizar:

**Dispositivo donde instalar el cargador de arranque:**

Seleccionar:

`/dev/sda ATA VBOX HARDDISK (107.4 GB)`

### 15.1. Configuración

| Campo | Configuración |
|---|---|
| Cargador de arranque | GNU GRUB |
| Dispositivo donde instalar el cargador de arranque | `/dev/sda` |
| Firmware | BIOS tradicional |
| Tabla de particiones | MBR |
| Partición EFI | No se utiliza |
| Partición `biosgrub` | No se necesita |

### 15.2. Iniciar la instalación

1. Confirmar que las tres particiones NTFS de Windows no están marcadas para formatearse.
2. Verificar que Ubuntu tiene asignadas la partición raíz `/dev/sda5` (ext4) y la partición swap `/dev/sda6`.
3. Mantener `/dev/sda` como dispositivo del cargador de arranque.
4. Seleccionar **Instalar ahora**.

### 15.3. Primera advertencia: partición EFI no encontrada

El instalador muestra:

**Go back to the menu and resume partitioning?**

**No EFI System Partition was found.**

El mensaje advierte que no se encontró una partición EFI y que el sistema podría no arrancar correctamente.

Nuestra instalación utiliza **BIOS tradicional + MBR**, por lo que no requiere una partición EFI.

Para comprobar el modo de arranque:

1. Mantener abierta la advertencia.
2. Presionar **Ctrl + Alt + T** para abrir una terminal.
3. Ejecutar:

```bash
ls /sys/firmware/efi
```

Resultado obtenido:

```text
ls: cannot access '/sys/firmware/efi': No such file or directory
```

La ausencia de ese directorio confirma que Ubuntu arrancó en modo BIOS y no en UEFI.

4. Cerrar la terminal.
5. En la advertencia, seleccionar **Continuar**.

### 15.4. Segunda ventana: confirmar los cambios del disco

El instalador muestra:

**¿Desea escribir los cambios en los discos?**

Indica que se modificará la tabla de particiones de `sda` y que se formatearán:

| Partición | Acción |
|---|---|
| `/dev/sda5` | Formatear como ext4 |
| `/dev/sda6` | Formatear como intercambio |
| `/dev/sda1` | Conservar, sin formatear |
| `/dev/sda2` | Conservar, sin formatear |
| `/dev/sda3` | Conservar, sin formatear |

Las particiones de Windows no aparecen entre las que se formatearán.

Seleccionar **Continuar** para escribir los cambios e iniciar la instalación de Ubuntu.

## 16. Configuración de Ubuntu

Completar los datos solicitados durante la instalación.

| Campo | Configuración |
|---|---|
| Zona horaria | Montevideo |
| Su nombre | Osmaily |
| Nombre del equipo | `pc-multiboot-osmaily` |
| Usuario | `osmaily` |
| Contraseña | Configurar contraseña personal |
| Inicio automático | No |
| Solicitar contraseña | Sí |
| Active Directory | Desmarcado |

1. Seleccionar **Continuar**.
2. Completar la instalación.
3. Seleccionar **Reiniciar ahora**.
4. Retirar la ISO cuando el instalador lo solicite.

---

# PARTE IV — CONFIGURACIÓN GRÁFICA Y VERIFICACIÓN DEL MULTIBOOT

## 17. Comprobar GNU GRUB

Después de finalizar la instalación de Ubuntu y reiniciar la máquina virtual, aparece el menú **GNU GRUB versión 2.06**.

En nuestra instalación se identificaron las siguientes opciones:

```text
Ubuntu
Advanced options for Ubuntu
Memory test (memtest86+.elf)
Memory test (memtest86+.bin, serial console)
Windows 10 (on /dev/sda1)
```

GRUB permite seleccionar qué sistema operativo iniciar.

Seleccionar **Ubuntu** y presionar **Enter**.

Antes de realizar las pruebas de funcionamiento, configuraremos el entorno gráfico de Ubuntu para evitar problemas de visualización.

## 18. Configurar Xorg (X11) para mejorar la experiencia gráfica

En nuestra instalación de Ubuntu 22.04.3 con VirtualBox 7.2.22, la sesión Wayland presentó problemas gráficos: las ventanas no se actualizaban correctamente y era necesario cambiar el tamaño de la ventana de VirtualBox para visualizar las acciones realizadas.

El problema se resolvió cambiando de **Wayland a Xorg (X11)**.

### 18.1. Seleccionar Ubuntu on Xorg antes de iniciar sesión

En la pantalla de inicio de sesión de Ubuntu:

1. Seleccionar el usuario **Osmaily**.
2. Localizar el icono de **engranaje** en la parte inferior derecha.
3. Seleccionar **Ubuntu on Xorg**.
4. Introducir la contraseña e iniciar sesión.

Esto permite utilizar Xorg desde el primer inicio de sesión, antes de realizar la configuración permanente.

### 18.2. Configurar Xorg de forma permanente

Abrir la terminal con **Ctrl + Alt + T** y ejecutar:

```bash
sudo nano /etc/gdm3/custom.conf
```

Introducir la contraseña y presionar **Enter**.

En el archivo, localizar la sección `[daemon]` y la línea:

```ini
#WaylandEnable=false
```

Eliminar el símbolo `#` para que quede:

```ini
[daemon]
WaylandEnable=false
```

Con este cambio, GDM desactiva Wayland y utiliza Xorg para el inicio de sesión gráfico.

### 18.3. Guardar la configuración

En **GNU nano**:

1. Presionar **Ctrl + O** para guardar.
2. Presionar **Enter** para confirmar.
3. Presionar **Ctrl + X** para salir.

### 18.4. Reiniciar y verificar X11

Ejecutar:

```bash
sudo reboot
```

Después de iniciar sesión, abrir una terminal y ejecutar:

```bash
echo $XDG_SESSION_TYPE
```

Resultado esperado:

```text
x11
```

En nuestra práctica, el comando devolvió `x11`, confirmando que la sesión gráfica estaba utilizando Xorg.

Una vez aplicada esta configuración y comprobada después de reiniciar, Ubuntu debería seguir utilizando Xorg en los siguientes inicios.

### 18.5. Resultado de la configuración gráfica

Con **Ubuntu on Xorg**, se comprobó que era posible:

- Abrir y cerrar el explorador de archivos.
- Abrir y cerrar Firefox.
- Utilizar las ventanas normalmente.
- Visualizar los cambios sin modificar constantemente el tamaño de VirtualBox.

Este ajuste se realiza antes de continuar con las pruebas del multiboot y Guest Additions.

## 19. Probar ambos sistemas operativos

### 19.1. Probar Ubuntu

1. Iniciar Ubuntu desde GNU GRUB.
2. Iniciar sesión utilizando Xorg (X11).
3. Abrir el explorador de archivos y Firefox.
4. Comprobar el funcionamiento del escritorio.

Ubuntu inició correctamente y respondió normalmente después del cambio a Xorg.

### 19.2. Probar Windows 10

1. Apagar o reiniciar Ubuntu.
2. Iniciar nuevamente la máquina virtual.
3. En GNU GRUB, seleccionar **Windows 10 (on /dev/sda1)**.
4. Presionar **Enter**.
5. Iniciar sesión en Windows 10.
6. Comprobar que el sistema funciona.

Windows 10 arrancó correctamente desde GRUB y permitió iniciar sesión sin inconvenientes.

---

# PARTE V — GUEST ADDITIONS DE UBUNTU E INSTANTÁNEAS

## 20. Instalar Guest Additions en Ubuntu

Después de corregir el entorno gráfico y comprobar el arranque de ambos sistemas, continuar con la instalación de Guest Additions en Ubuntu.

### 20.1. Instalar las dependencias

Iniciar Ubuntu y abrir la terminal con **Ctrl + Alt + T**.

Actualizar los repositorios:

```bash
sudo apt update
```

Instalar las herramientas necesarias para compilar los módulos de VirtualBox:

```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```

Introducir la contraseña y confirmar la instalación de los paquetes solicitados.

### 20.2. Insertar Guest Additions

En el menú de VirtualBox, seleccionar:

**Dispositivos → Insertar imagen de CD de los complementos del invitado...**

En Ubuntu:

1. Abrir **Archivos**.
2. Localizar la unidad de **VirtualBox Guest Additions**.
3. Abrir la unidad.
4. Ejecutar el instalador `autorun.sh`.
5. Introducir la contraseña de administrador cuando se solicite.
6. Completar la instalación.

Reiniciar Ubuntu:

```bash
sudo reboot
```

### 20.3. Configurar la integración

Después del reinicio, probar:

**Resolución de pantalla**

Modificar el tamaño de la ventana de VirtualBox y comprobar que Ubuntu adapta su resolución.

**Portapapeles compartido**

Seleccionar:

**Dispositivos → Portapapeles compartido → Bidireccional**

Probar la copia de texto entre Windows 11 y Ubuntu.

**Arrastrar y soltar**

Seleccionar:

**Dispositivos → Arrastrar y soltar → Bidireccional**

Probar la transferencia de archivos entre el sistema anfitrión y Ubuntu.

La disponibilidad de estas funciones depende de que los componentes de Guest Additions estén instalados y funcionando correctamente.

## 21. Crear las instantáneas de Ubuntu

Las instantáneas permiten conservar estados importantes de la máquina virtual.

### 21.1. Instantánea de Ubuntu instalado

Después de comprobar el multiboot y dejar estable el entorno gráfico de Ubuntu:

1. Apagar la máquina virtual.
2. Abrir **Instantáneas** en VirtualBox.
3. Seleccionar **Tomar**.
4. Asignar el nombre:

`Multiboot - Ubuntu 22.04.3 - Instalación limpia`

Esta instantánea representa Ubuntu instalado, con GRUB configurado y el funcionamiento gráfico corregido, antes de instalar Guest Additions en Ubuntu.

### 21.2. Instantánea de Guest Additions configuradas

Después de instalar y comprobar Guest Additions en Ubuntu:

1. Apagar la máquina virtual.
2. Abrir **Instantáneas**.
3. Seleccionar **Tomar**.
4. Asignar el nombre:

`Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas`

### 21.3. Registro de instantáneas

| N.º | Nombre | Estado |
|---|---|---|
| 1 | `Multiboot - Windows 10 Pro - Instalación limpia` | Creada |
| 2 | `Multiboot - Windows 10 Pro - Guest Additions configuradas` | Creada |
| 3 | `Multiboot - Ubuntu 22.04.3 - Instalación limpia` | Pendiente de registrar |
| 4 | `Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas` | Pendiente |

---

# PARTE VI — RESUMEN DE LA PRÁCTICA

## 22. Resultado de la instalación multiboot

### 22.1. Configuración general

| Elemento | Resultado |
|---|---|
| Máquina virtual | `PC-Multiboot-Osmaily` |
| Software de virtualización | Oracle VirtualBox 7.2.22 |
| Sistema anfitrión | Windows 11 |
| Primer sistema invitado | Windows 10 Pro |
| Segundo sistema invitado | Ubuntu 22.04.3 LTS |
| Memoria RAM | 4096 MB |
| Procesadores | 2 |
| Disco virtual | VDI dinámico, 100 GB |
| Firmware | BIOS tradicional |
| Tabla de particiones | MBR |
| Cargador de arranque | GNU GRUB 2.06 |
| Entorno gráfico de Ubuntu | Xorg (X11) |

### 22.2. Particiones

| Partición | Sistema | Uso |
|---|---|---|
| `/dev/sda1` | Windows 10 | Reservada para el sistema |
| `/dev/sda2` | Windows 10 | Partición principal |
| `/dev/sda3` | Windows 10 | Recuperación |
| `/dev/sda4` | Disco MBR | Partición extendida |
| `/dev/sda5` | Ubuntu | Raíz `/`, ext4 |
| `/dev/sda6` | Ubuntu | Área de intercambio |

### 22.3. Aprendizajes principales

- Crear una máquina virtual con un único disco para varios sistemas operativos.
- Instalar Windows 10 Pro y reservar espacio para Ubuntu.
- Identificar las diferencias entre BIOS, UEFI, MBR y GPT.
- Crear particiones primarias, extendidas y lógicas.
- Comprender cuándo se necesita una partición `biosgrub`.
- Instalar Ubuntu sin eliminar las particiones de Windows.
- Configurar GNU GRUB para seleccionar el sistema operativo.
- Solucionar problemas gráficos de Ubuntu cambiando de Wayland a Xorg.
- Instalar y configurar Guest Additions.
- Utilizar instantáneas para conservar diferentes estados de la máquina virtual.

### 22.4. Estado de la práctica

| Actividad | Estado |
|---|---|
| Crear la máquina virtual | Completada |
| Instalar Windows 10 Pro | Completada |
| Verificar BIOS y MBR | Completada |
| Instalar Guest Additions en Windows | Completada |
| Crear las dos instantáneas de Windows | Completada |
| Instalar Ubuntu 22.04.3 LTS | Completada |
| Crear particiones raíz y swap | Completada |
| Configurar GNU GRUB | Completada |
| Iniciar Windows 10 desde GRUB | Completada |
| Iniciar Ubuntu desde GRUB | Completada |
| Cambiar Ubuntu a Xorg (X11) | Completada |
| Configurar Xorg permanentemente | Archivo modificado; persistencia por confirmar |
| Instalar Guest Additions en Ubuntu | Pendiente |
| Crear las instantáneas de Ubuntu | Pendiente |

**Resultado actual:** Windows 10 Pro y Ubuntu 22.04.3 LTS están instalados en el mismo disco virtual y ambos pueden iniciarse mediante GNU GRUB. El entorno gráfico de Ubuntu funciona correctamente utilizando Xorg (X11).

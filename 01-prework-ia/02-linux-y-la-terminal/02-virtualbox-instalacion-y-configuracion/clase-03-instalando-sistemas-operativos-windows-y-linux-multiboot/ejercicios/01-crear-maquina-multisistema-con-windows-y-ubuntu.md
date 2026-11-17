# Clase 03 — Instalando sistemas operativos Windows y Linux (Multiboot)

## Objetivo

Crear una máquina virtual en **Oracle VirtualBox 7.2.22** e instalar dos sistemas operativos en un mismo disco virtual:

- Windows 10 Pro
- Ubuntu 22.04.3 LTS

Configurar el arranque múltiple mediante **GNU GRUB**, aprender a administrar particiones y mejorar la integración entre los sistemas operativos mediante **Guest Additions** y carpetas compartidas.

---

# PARTE I — CREACIÓN DE LA MÁQUINA VIRTUAL

## 1. Preparar los archivos necesarios

| Elemento | Configuración |
|---|---|
| Virtualizador | Oracle VirtualBox 7.2.22 |
| Sistema anfitrión | Windows 11 |
| ISO de Windows | `Windows.iso` |
| ISO de Ubuntu | `ubuntu-22.04.3-desktop-amd64.iso` |
| Nombre de la máquina virtual | `PC-Multiboot-Osmaily` |
| Sistemas invitados | Windows 10 Pro y Ubuntu 22.04.3 LTS |

El objetivo es instalar ambos sistemas operativos en un único disco virtual, conservando la posibilidad de iniciar cualquiera de ellos.

## 2. Crear la máquina virtual

Abrir **Oracle VirtualBox** y seleccionar **Nueva**.

### 2.1. Virtual Machine Name and Operating System

Completar la configuración inicial:

| Campo | Valor |
|---|---|
| Name | `PC-Multiboot-Osmaily` |
| ISO Image | `E:\Descargas\ISOS\Windows.iso` |
| Type | Microsoft Windows |
| Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |

**Proceed with Unattended Installation:** cuando está marcada, VirtualBox automatiza parte de la instalación y permite preconfigurar usuario, contraseña y otros parámetros. Al desmarcarla, realizamos la instalación manualmente y configuramos Windows durante el proceso.

### 2.2. Specify Virtual Hardware

| Campo | Valor |
|---|---|
| Base Memory | 4096 MB |
| Processors | 2 |
| Hard Disk Size | 100 GB |

Crear un disco virtual con las siguientes características:

| Característica | Configuración |
|---|---|
| Formato | VDI (VirtualBox Disk Image) |
| Tipo de almacenamiento | Reservado dinámicamente |
| Tamaño máximo | 100 GB |
| Archivo | `PC-Multiboot-Osmaily.vdi` |
| Ruta | `E:\VirtualBox\PC-Multiboot-Osmaily\PC-Multiboot-Osmaily.vdi` |

Seleccionar **Siguiente**, revisar el **Resumen** y pulsar **Terminar**.

En esta versión de VirtualBox, el tamaño del disco se configura dentro de **Specify Virtual Hardware**.

## 3. Revisar la configuración de la máquina virtual

Con la máquina virtual apagada, abrir:

**PC-Multiboot-Osmaily → Configuración**

### 3.1. Sistema

En **Sistema → Placa base**:

| Opción | Configuración |
|---|---|
| Use EFI | Desmarcado |

Esta configuración permite utilizar el firmware **BIOS tradicional**.

### 3.2. Pantalla

| Campo | Valor |
|---|---|
| Memoria de vídeo | 128 MB |
| Número de monitores | 1 |
| Factor de escala | 100 % |

### 3.3. Almacenamiento

En **Configuración → Almacenamiento**, verificar la presencia de:

- Disco virtual `PC-Multiboot-Osmaily.vdi`.
- Unidad óptica con `Windows.iso`.

El disco VDI utiliza almacenamiento dinámico: su archivo físico crece conforme se almacenan datos, hasta el tamaño máximo configurado.

## 4. Planificar la distribución del disco

Se utilizará un único disco virtual de **100 GB**, compartido por ambos sistemas operativos.

| Sistema operativo | Espacio aproximado |
|---|---:|
| Windows 10 Pro | 50 GB |
| Ubuntu 22.04.3 LTS | 50 GB |
| Total | 100 GB |

Primero instalaremos Windows y dejaremos el espacio restante sin asignar para Ubuntu.

---

# PARTE II — INSTALACIÓN Y CONFIGURACIÓN DE WINDOWS 10 PRO

## 5. Instalar Windows 10 Pro

Iniciar la máquina virtual desde la ISO de Windows.

### 5.1. Configuración inicial

| Campo | Selección |
|---|---|
| Idioma que va a instalar | Español |
| Formato de hora y moneda | Español (España, internacional) |
| Teclado o método de entrada | Español |

Seleccionar **Siguiente → Instalar ahora**.

En la pantalla de activación, seleccionar:

**No tengo clave de producto**

En la selección de ediciones, elegir:

**Windows 10 Pro**

Aceptar los términos de licencia y continuar.

### 5.2. Tipo de instalación

Seleccionar:

**Personalizada: instalar solo Windows (avanzado)**

### 5.3. Crear la partición de Windows

En la pantalla de selección de disco:

1. Seleccionar el espacio sin asignar.
2. Pulsar **Nuevo**.
3. Introducir **51200 MB**.
4. Seleccionar **Aplicar**.
5. Aceptar la creación de particiones adicionales por Windows.

Distribución inicial:

| Elemento | Tamaño aproximado |
|---|---:|
| Unidad 0 Partición 1: Reservado para el sistema | 50 MB |
| Unidad 0 Partición 2: Principal | 50 GB |
| Espacio sin asignar | 50 GB |

Seleccionar **Unidad 0 Partición 2: Principal** y pulsar **Siguiente**.

No asignar el espacio restante: se utilizará posteriormente para Ubuntu.

### 5.4. Completar la instalación

Windows copia los archivos, instala las características necesarias y reinicia la máquina virtual.

Continuar con la configuración inicial del sistema.

## 6. Configuración inicial de Windows 10 Pro

Completar las siguientes pantallas:

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

### 6.1. Opciones adicionales

En **Tenga siempre acceso a los datos de exploración recientes**, seleccionar:

**Ahora no**

En **Elegir la configuración de la privacidad para tu dispositivo**:

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

## 7. Verificar Windows y las particiones del disco

### 7.1. Abrir Administración de discos

Desde el escritorio de Windows 10:

1. Localizar el botón **Inicio** en la esquina inferior izquierda.
2. Hacer clic derecho sobre **Inicio**.
3. Seleccionar **Administración de discos**.
4. Revisar la representación gráfica inferior de **Disco 0**.

Distribución identificada:

| Elemento | Tamaño | Función |
|---|---:|---|
| Reservado para el sistema | 50 MB | Arranque de Windows |
| Windows (C:) — NTFS | 49,40 GB | Sistema operativo |
| Partición de recuperación | 559 MB | Recuperación de Windows |
| Espacio sin asignar | 50,00 GB | Reservado para Ubuntu |

La unidad `ESD-ISO (D:)` corresponde a la ISO montada en la unidad óptica virtual; no es una partición del disco.

### 7.2. Verificar el modo BIOS

Desde Windows 10:

1. Presionar **Windows + R**.
2. Escribir:

```text
msinfo32
```

3. Presionar **Enter**.
4. Abrir **Información del sistema → Resumen del sistema**.
5. Localizar el campo **Modo de BIOS**.

Resultado obtenido:

**Modo de BIOS: Heredado**

Esto confirma que Windows utiliza BIOS tradicional.

### 7.3. Verificar la tabla de particiones MBR

1. Abrir **Administración de discos**.
2. Localizar el recuadro gris **Disco 0** situado a la izquierda de las particiones.
3. Hacer clic derecho sobre ese recuadro gris.
4. Seleccionar **Propiedades**.
5. Abrir la pestaña **Volúmenes**.

Resultado obtenido:

**Estilo de partición: Registro de arranque maestro (MBR)**

| Característica | Resultado |
|---|---|
| Disco | Disco 0 |
| Tipo | Básico |
| Capacidad | 102399 MB |
| Espacio sin asignar | 51202 MB |
| Firmware | BIOS heredado |
| Tabla de particiones | MBR |

La combinación **BIOS + MBR** determina el tipo de particionado que utilizaremos para Ubuntu.

## 8. Crear la primera instantánea de Windows

Apagar correctamente Windows 10.

En VirtualBox:

1. Seleccionar **PC-Multiboot-Osmaily**.
2. Abrir **Instantáneas**.
3. Pulsar **Tomar**.
4. Introducir los datos de la instantánea.

**Nombre:**

`Multiboot - Windows 10 Pro - Instalación limpia`

**Fecha registrada:** 15/11/2026 — 07:07.

Esta instantánea conserva Windows 10 Pro instalado, antes de configurar Guest Additions.

## 9. Instalar Guest Additions en Windows 10

### 9.1. Insertar Guest Additions

Iniciar Windows 10.

En el menú de VirtualBox, seleccionar:

**Dispositivos → Insertar imagen de CD de los complementos del invitado...**

En Windows:

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

**Resolución de pantalla**

Modificar el tamaño de la ventana de VirtualBox y comprobar que Windows adapta su resolución.

También utilizar:

**Ver → Modo pantalla completa**

**Portapapeles compartido**

Seleccionar:

**Dispositivos → Portapapeles compartido → Bidireccional**

Se comprobó la copia de texto desde Windows 11 hacia Windows 10 y viceversa.

**Arrastrar y soltar**

Seleccionar:

**Dispositivos → Arrastrar y soltar → Bidireccional**

Se comprobó la transferencia de archivos en ambas direcciones:

| Archivo | Dirección |
|---|---|
| `prueba-compartida.txt` | Windows 11 → Windows 10 |
| `window10pro.txt` | Windows 10 → Windows 11 |

También se verificó el movimiento del puntero entre el sistema anfitrión y el invitado.

### 9.3. Crear la segunda instantánea de Windows

Apagar correctamente Windows 10.

En **VirtualBox → Instantáneas → Tomar**:

**Nombre:**

`Multiboot - Windows 10 Pro - Guest Additions configuradas`

**Descripción:**

Windows 10 Pro instalado con BIOS/MBR. Guest Additions instaladas y comprobadas. Espacio reservado para Ubuntu conservado.

**Fecha registrada:** 15/11/2026 — 07:58.

---

# PARTE III — INSTALACIÓN DE UBUNTU 22.04.3 LTS

## 10. Cambiar la ISO de Windows por la de Ubuntu

Con la máquina virtual apagada:

1. Seleccionar **PC-Multiboot-Osmaily**.
2. Abrir **Configuración → Almacenamiento**.
3. Seleccionar la unidad óptica.
4. Retirar `Windows.iso`.
5. Seleccionar `ubuntu-22.04.3-desktop-amd64.iso`.
6. Confirmar los cambios.

Mantener **Use EFI** desmarcado en la configuración de la máquina virtual.

No modificar ni eliminar el disco virtual VDI.

## 11. Iniciar la instalación de Ubuntu

Encender la máquina virtual desde la ISO de Ubuntu.

En el menú inicial, seleccionar:

**Try or Install Ubuntu**

La opción **Ubuntu (safe graphics)** inicia con parámetros gráficos más conservadores y puede ayudar ante problemas de compatibilidad durante el arranque.

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

En la pantalla **Tipo de instalación**, seleccionar:

**Más opciones**

Esto permite realizar el particionado manual.

No seleccionar **Borrar disco e instalar Ubuntu**, porque eliminaría los sistemas y datos existentes en el disco virtual.

## 13. Identificar las particiones existentes

En la pantalla **Tipo de instalación**, el instalador reconoce el disco `/dev/sda` y las particiones creadas anteriormente por Windows 10.

### 13.1. Particiones identificadas

| Dispositivo | Tipo | Tamaño | En uso | Acción |
|---|---|---:|---:|---|
| `/dev/sda1` | ntfs | 52 MB | 27 MB | Conservar |
| `/dev/sda2` | ntfs | 53045 MB | 16613 MB | Conservar |
| `/dev/sda3` | ntfs | 586 MB | 496 MB | Conservar |
| espacio libre | Sin asignar | 53688 MB | — | Utilizar para Ubuntu |

No eliminar ni formatear ninguna de las tres particiones NTFS de Windows.

## 14. Particionado de Ubuntu

Utilizar los **53688 MB de espacio libre** para crear las particiones de Ubuntu.

### 14.1. Crear la partición raíz `/`

1. Seleccionar **espacio libre — 53688 MB**.
2. Hacer clic en **+**.
3. Completar los siguientes campos:

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
3. Completar los siguientes campos:

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

El mensaje advierte que no existe una partición EFI y que el sistema podría no arrancar correctamente.

Como nuestra instalación utiliza **BIOS tradicional + MBR**, no necesitamos una partición EFI.

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

Esto confirma que Ubuntu arrancó en modo BIOS tradicional, no en UEFI.

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

Las particiones NTFS de Windows no aparecen en la lista de particiones que se formatearán.

Seleccionar **Continuar** para escribir los cambios e iniciar la instalación.

## 16. Configuración de Ubuntu

Completar los datos solicitados:

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

Las opciones identificadas en nuestra instalación fueron:

```text
Ubuntu
Advanced options for Ubuntu
Memory test (memtest86+.elf)
Memory test (memtest86+.bin, serial console)
Windows 10 (on /dev/sda1)
```

GRUB permite seleccionar el sistema operativo que deseamos iniciar.

Seleccionar **Ubuntu** y presionar **Enter**.

Antes de realizar las pruebas de funcionamiento, configuraremos el entorno gráfico de Ubuntu para evitar problemas de visualización.

## 18. Configurar Xorg (X11) para mejorar la experiencia gráfica

En Ubuntu 22.04.3 con VirtualBox 7.2.22, la sesión Wayland presentó problemas gráficos: las ventanas no se actualizaban correctamente y era necesario cambiar el tamaño de la ventana de VirtualBox para visualizar las acciones realizadas.

El problema se resolvió utilizando **Ubuntu on Xorg (X11)**.

### 18.1. Seleccionar Ubuntu on Xorg antes de iniciar sesión

En la pantalla de inicio de sesión de Ubuntu:

1. Seleccionar el usuario **Osmaily**.
2. Localizar el icono de **engranaje**.
3. Seleccionar **Ubuntu on Xorg**.
4. Introducir la contraseña e iniciar sesión.

Esto permite utilizar Xorg desde el primer inicio de sesión, antes de realizar la configuración permanente.

### 18.2. Configurar Xorg de forma permanente

Abrir la terminal con **Ctrl + Alt + T** y ejecutar:

```bash
sudo nano /etc/gdm3/custom.conf
```

Introducir la contraseña y presionar **Enter**.

Dentro del archivo, localizar la sección `[daemon]` y la línea:

```ini
#WaylandEnable=false
```

Eliminar el símbolo `#` para dejar:

```ini
[daemon]
WaylandEnable=false
```

Esta configuración desactiva Wayland en GDM y permite utilizar Xorg como sistema gráfico.

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

Resultado obtenido:

```text
x11
```

Esto confirma que Ubuntu utiliza Xorg (X11).

### 18.5. Resultado de la configuración gráfica

Con Xorg se comprobó que era posible:

- Abrir y cerrar el explorador de archivos.
- Abrir y cerrar Firefox.
- Mover y utilizar las ventanas normalmente.
- Visualizar los cambios sin modificar continuamente el tamaño de VirtualBox.

La configuración permanente evita tener que seleccionar manualmente Ubuntu on Xorg en cada inicio mientras permanezca `WaylandEnable=false` en GDM.

## 19. Probar ambos sistemas operativos

### 19.1. Probar Ubuntu

1. Iniciar Ubuntu desde GNU GRUB.
2. Iniciar sesión utilizando Xorg (X11).
3. Abrir el explorador de archivos y Firefox.
4. Comprobar el funcionamiento del escritorio.

Ubuntu inició correctamente y respondió normalmente después de cambiar a Xorg.

### 19.2. Probar Windows 10

1. Apagar o reiniciar Ubuntu.
2. Iniciar nuevamente la máquina virtual.
3. En GNU GRUB, seleccionar **Windows 10 (on /dev/sda1)**.
4. Presionar **Enter**.
5. Iniciar sesión en Windows 10.
6. Comprobar que funciona correctamente.

Windows 10 arrancó desde GRUB y permitió iniciar sesión sin inconvenientes.

---

# PARTE V — INSTANTÁNEAS Y GUEST ADDITIONS DE UBUNTU

## 20. Crear la primera instantánea de Ubuntu — Instalación limpia

Después de instalar Ubuntu, configurar GNU GRUB, comprobar el arranque de ambos sistemas y corregir la experiencia gráfica mediante Xorg, crear una instantánea antes de instalar Guest Additions.

### 20.1. Crear la instantánea

1. Apagar Ubuntu correctamente.
2. En Oracle VirtualBox, seleccionar **PC-Multiboot-Osmaily**.
3. Abrir **Instantáneas**.
4. Seleccionar **Tomar**.
5. Introducir los siguientes datos.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Instalación limpia`

**Descripción:**

Ubuntu 22.04.3 LTS instalado junto a Windows 10 Pro en BIOS/MBR. GNU GRUB configurado y arranque de ambos sistemas comprobado. Xorg (X11) configurado para mejorar la experiencia gráfica. Guest Additions de Ubuntu aún no instaladas.

6. Confirmar la creación de la instantánea.

Esta instantánea conserva Ubuntu instalado y funcionando, antes de agregar Guest Additions.

## 21. Instalar Guest Additions en Ubuntu

Guest Additions permite mejorar la integración entre Ubuntu y Windows 11 mediante funciones como la adaptación de resolución, el portapapeles compartido y el intercambio de archivos.

### 21.1. Instalar las dependencias

Iniciar Ubuntu desde GNU GRUB.

Abrir la terminal con **Ctrl + Alt + T** y ejecutar:

```bash
sudo apt update
```

Instalar las herramientas necesarias:

```bash
sudo apt install build-essential dkms linux-headers-$(uname -r)
```

Introducir la contraseña y confirmar la instalación de los paquetes.

### 21.2. Insertar Guest Additions

En el menú de VirtualBox, seleccionar:

**Dispositivos → Insertar imagen de CD de los complementos del invitado...**

En Ubuntu:

1. Abrir **Archivos**.
2. Localizar la unidad **VirtualBox Guest Additions**.
3. Abrir la unidad.
4. Ejecutar `autorun.sh`.
5. Autorizar la ejecución e introducir la contraseña cuando se solicite.
6. Completar la instalación.

### 21.3. Reiniciar Ubuntu

Ejecutar:

```bash
sudo reboot
```

Iniciar sesión nuevamente en Ubuntu.

### 21.4. Comprobar la integración gráfica

Modificar el tamaño de la ventana de VirtualBox y comprobar que Ubuntu adapta su resolución.

También comprobar el movimiento del puntero entre Windows 11 y Ubuntu.

### 21.5. Configurar el portapapeles compartido

En el menú de VirtualBox:

**Dispositivos → Portapapeles compartido → Bidireccional**

Probar la copia de texto entre Windows 11 y Ubuntu en ambas direcciones.

**Resultado:** portapapeles compartido funcionando correctamente.

### 21.6. Configurar arrastrar y soltar

En VirtualBox, seleccionar:

**Dispositivos → Arrastrar y soltar → Bidireccional**

Se realizaron pruebas de transferencia de archivos:

| Dirección | Resultado |
|---|---|
| Windows 11 → Ubuntu | Funciona correctamente |
| Ubuntu → Windows 11 | No permite arrastrar el archivo fuera de la ventana de VirtualBox |

La transferencia desde Windows 11 hacia **Archivos → Descargas** de Ubuntu funcionó correctamente.

En la dirección contraria, el archivo no lograba cruzar el borde de la ventana de VirtualBox.

### 21.7. Comprobar el servicio de arrastrar y soltar

Para revisar los componentes de Guest Additions, abrir una terminal y ejecutar:

```bash
pgrep -af VBoxClient
```

Se identificaron procesos relacionados con:

```text
VBoxClient --clipboard
VBoxClient --seamless
VBoxClient --draganddrop
VBoxClient --vmsvga
```

Esto confirmó que los componentes de Guest Additions estaban ejecutándose, incluido el servicio de arrastrar y soltar.

Se reinició el componente:

```bash
pkill -f 'VBoxClient --draganddrop'
```

Después se inició nuevamente:

```bash
VBoxClient --draganddrop
```

La transferencia desde Ubuntu hacia Windows 11 mediante arrastrar y soltar continuó sin funcionar.

Para disponer de un método de intercambio de archivos en ambas direcciones, se configuró una carpeta compartida.

## 22. Configurar una carpeta compartida entre Windows 11 y Ubuntu

La carpeta compartida permite acceder a los mismos archivos desde el sistema anfitrión Windows 11 y desde Ubuntu, sin depender de arrastrar y soltar entre ventanas.

### 22.1. Crear la carpeta en Windows 11

En Windows 11, crear una carpeta llamada:

`VirtualBox-Compartida`

Esta carpeta almacenará los archivos que deseamos intercambiar entre Windows y Ubuntu.

### 22.2. Agregar la carpeta compartida en VirtualBox

Con Ubuntu encendido, seleccionar:

**Dispositivos → Carpetas compartidas → Configuración de carpetas compartidas**

1. Pulsar el icono **+** para agregar una carpeta.
2. En **Ruta de carpeta**, seleccionar `VirtualBox-Compartida`.
3. En **Nombre de carpeta**, introducir `Compartida`.
4. Marcar **Automontar**.
5. Marcar **Hacer permanente**.
6. Mantener **Solo lectura** desmarcado.
7. Confirmar con **Aceptar**.

### 22.3. Conceder permisos al usuario de Ubuntu

Abrir la terminal y ejecutar:

```bash
sudo usermod -aG vboxsf $USER
```

Este comando agrega el usuario actual al grupo `vboxsf`, utilizado para acceder a carpetas compartidas de VirtualBox.

Reiniciar Ubuntu para aplicar el cambio:

```bash
sudo reboot
```

### 22.4. Acceder a la carpeta desde Ubuntu

Abrir **Archivos** y navegar hasta:

**Otras ubicaciones → Equipo → media → sf_Compartida**

La carpeta compartida utiliza como ruta:

```text
/media/sf_Compartida
```

### 22.5. Probar la transferencia de archivos

Realizar las siguientes pruebas:

1. Copiar un archivo desde Windows 11 a `VirtualBox-Compartida`.
2. Abrir la carpeta compartida desde Ubuntu y acceder al archivo.
3. Copiar un archivo desde Ubuntu hacia `sf_Compartida`.
4. Abrir la carpeta desde Windows 11 y comprobar que aparece el archivo.

**Resultado:** carpeta compartida configurada y transferencia de archivos comprobada correctamente en ambas direcciones.

La carpeta compartida quedó como método funcional para intercambiar archivos entre Windows 11 y Ubuntu.

## 23. Crear la segunda instantánea de Ubuntu — Guest Additions configuradas

Después de instalar Guest Additions y completar las pruebas de integración, crear la última instantánea de la máquina virtual.

### 23.1. Crear la instantánea

1. Apagar Ubuntu correctamente.
2. En VirtualBox, seleccionar **PC-Multiboot-Osmaily**.
3. Abrir **Instantáneas**.
4. Seleccionar **Tomar**.
5. Introducir los siguientes datos.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas`

**Descripción:**

Ubuntu 22.04.3 LTS instalado en multiboot con Windows 10 Pro. GNU GRUB y Xorg (X11) configurados. Guest Additions instaladas y comprobadas. Portapapeles compartido, integración gráfica y carpeta compartida bidireccional funcionando correctamente.

6. Confirmar la creación de la instantánea.

### 23.2. Registro final de instantáneas

| N.º | Instantánea | Estado |
|---|---|---|
| 1 | `Multiboot - Windows 10 Pro - Instalación limpia` | Creada |
| 2 | `Multiboot - Windows 10 Pro - Guest Additions configuradas` | Creada |
| 3 | `Multiboot - Ubuntu 22.04.3 - Instalación limpia` | Creada |
| 4 | `Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas` | Creada |

Las instantáneas se crearon respetando el orden:

**Instalación limpia → Guest Additions configuradas**, primero para Windows y después para Ubuntu.

---

# PARTE VI — RESUMEN FINAL DE LA PRÁCTICA

## 24. Resultado de la instalación multiboot

### 24.1. Configuración general

| Elemento | Configuración |
|---|---|
| Máquina virtual | `PC-Multiboot-Osmaily` |
| Virtualizador | Oracle VirtualBox 7.2.22 |
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
| Instantáneas creadas | 4 |

### 24.2. Distribución del disco

| Partición | Sistema | Uso |
|---|---|---|
| `/dev/sda1` | Windows 10 | Reservada para el sistema |
| `/dev/sda2` | Windows 10 | Partición principal |
| `/dev/sda3` | Windows 10 | Recuperación |
| `/dev/sda4` | Disco MBR | Partición extendida |
| `/dev/sda5` | Ubuntu | Raíz `/`, ext4 |
| `/dev/sda6` | Ubuntu | Área de intercambio |

### 24.3. Resultado de las pruebas

| Función | Resultado |
|---|---|
| Iniciar Windows 10 desde GRUB | Correcto |
| Iniciar Ubuntu desde GRUB | Correcto |
| Funcionamiento de Windows 10 | Correcto |
| Funcionamiento de Ubuntu con Xorg | Correcto |
| Guest Additions de Windows 10 | Instaladas y comprobadas |
| Guest Additions de Ubuntu | Instaladas y comprobadas |
| Portapapeles compartido | Funciona |
| Arrastrar y soltar Windows 11 → Windows 10 | Funciona |
| Arrastrar y soltar Windows 10 → Windows 11 | Funciona |
| Arrastrar y soltar Windows 11 → Ubuntu | Funciona |
| Arrastrar y soltar Ubuntu → Windows 11 | No funciona |
| Carpeta compartida Windows 11 ↔ Ubuntu | Funciona en ambas direcciones |
| Instantáneas | 4 creadas |

### 24.4. Aprendizajes principales

- Crear una máquina virtual con un único disco para varios sistemas operativos.
- Instalar Windows 10 Pro y reservar espacio para Ubuntu.
- Diferenciar BIOS, UEFI, MBR y GPT.
- Identificar particiones primarias, extendidas y lógicas.
- Comprender cuándo se necesita una partición `biosgrub`.
- Instalar Ubuntu sin eliminar Windows.
- Configurar GNU GRUB como gestor de arranque.
- Resolver problemas gráficos de Ubuntu cambiando de Wayland a Xorg (X11).
- Instalar Guest Additions en Windows y Ubuntu.
- Configurar el portapapeles compartido.
- Probar arrastrar y soltar entre anfitrión e invitados.
- Configurar carpetas compartidas y permisos mediante el grupo `vboxsf`.
- Crear instantáneas para conservar diferentes estados de la máquina virtual.

### 24.5. Estado final de la práctica

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
| Probar el arranque de Windows y Ubuntu | Completada |
| Configurar Xorg (X11) | Completada |
| Crear la primera instantánea de Ubuntu | Completada |
| Instalar Guest Additions en Ubuntu | Completada |
| Comprobar las funciones de integración | Completada |
| Configurar la carpeta compartida | Completada |
| Comprobar transferencias por carpeta compartida | Completada |
| Crear la segunda instantánea de Ubuntu | Completada |

## Conclusión

Se creó una máquina virtual multiboot con **Windows 10 Pro y Ubuntu 22.04.3 LTS**, instalados en un mismo disco virtual con tabla de particiones MBR y firmware BIOS tradicional.

**GNU GRUB** permite seleccionar el sistema operativo durante el arranque, y ambos sistemas fueron iniciados y comprobados correctamente.

En Ubuntu se configuró **Xorg (X11)** para mejorar la experiencia gráfica y se instalaron **Guest Additions** para integrar el sistema con VirtualBox.

La carpeta compartida permitió intercambiar archivos entre Windows 11 y Ubuntu en ambas direcciones.

Finalmente, se crearon **cuatro instantáneas**, conservando los estados de instalación limpia y Guest Additions configuradas de ambos sistemas operativos.

**Resultado: práctica de instalación y configuración multiboot completada.**

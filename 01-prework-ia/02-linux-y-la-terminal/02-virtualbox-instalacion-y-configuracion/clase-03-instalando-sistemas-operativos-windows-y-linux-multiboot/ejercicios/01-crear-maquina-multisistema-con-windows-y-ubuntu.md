# Guía práctica — Instalación Multiboot de Windows 10 Pro y Ubuntu 22.04.3 en VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase:** 03 — Instalación de sistemas operativos Windows y Linux Multiboot  
**Tipo:** Guía de práctica personal  
**Objetivo:** Instalar Windows 10 Pro y Ubuntu 22.04.3 en un mismo disco virtual utilizando BIOS/MBR, configurar GRUB y crear cuatro instantáneas de recuperación.

---

# PARTE I — CONFIGURACIÓN DE LA MÁQUINA VIRTUAL

## 1. Crear la máquina virtual

Abrir **Oracle VirtualBox Administrador → Nueva**.

### 1.1. Virtual Machine Name and Operating System

| Campo | Configuración |
|---|---|
| VM Name | `PC-Multiboot-Osmaily` |
| VM Folder | `E:\VirtualBox` |
| ISO Image | `E:\Descargas\ISOS\Windows.iso` |
| OS | Microsoft Windows |
| OS Distribution | Windows |
| OS Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |

### 1.2. Specify Virtual Hardware

| Campo | Configuración |
|---|---|
| Base Memory | 4096 MB |
| Number of CPUs | 2 |
| Use EFI | Desmarcado |
| Hard Disk Size | 100,00 GB |

Seleccionar **Siguiente → Terminar**.

### 1.3. Verificar el disco virtual

Abrir **Configuración → Almacenamiento**.

| Campo | Resultado comprobado |
|---|---|
| Nombre | `PC-Multiboot-Osmaily.vdi` |
| Tipo (Formato) | Normal (VDI) |
| Virtual size | 100,00 GB |
| Actual size inicial | 2,00 MB |
| Detalles de almacenamiento | Almacenamiento reservado dinámicamente |
| Puerto | SATA 0 |
| Imagen ISO | `Windows.iso` |

### 1.4. Configuración de pantalla

Abrir **Configuración → Pantalla**.

| Campo | Configuración |
|---|---|
| Video Memory | 128 MB |
| Number of Virtual Monitors | 1 |
| Scale Factor | 100 % |

---

## 2. Distribución del disco virtual

| Sistema | Espacio previsto |
|---|---:|
| Windows 10 Pro y particiones auxiliares | 50 GB |
| Ubuntu 22.04.3 y swap | 50 GB |
| **Total** | **100 GB** |

| Característica | Configuración |
|---|---|
| Disco | Un único VDI |
| Firmware | BIOS tradicional |
| Use EFI | Desmarcado |
| Tabla de particiones | MBR |
| Gestor de arranque final | GNU GRUB |

---

# PARTE II — INSTALACIÓN DE WINDOWS 10 PRO

## 3. Iniciar el instalador de Windows

Seleccionar `PC-Multiboot-Osmaily` → **Iniciar**.

### 3.1. Programa de configuración de Windows

| Campo | Selección |
|---|---|
| Idioma que va a instalar | Español (España, internacional) |
| Formato de hora y moneda | Español (España, internacional) |
| Teclado o método de entrada | Español |

Seleccionar **Siguiente → Instalar ahora**.

### 3.2. Opciones de instalación

| Pantalla | Selección |
|---|---|
| Activar Windows | No tengo clave de producto |
| Edición | Windows 10 Pro — x64 |
| Términos de licencia | Aceptar |
| Tipo de instalación | Personalizada: instalar solo Windows (avanzado) |

---

## 4. Particionado de Windows

### 4.1. Crear la partición

En **¿Dónde quieres instalar Windows?**:

1. Seleccionar **Espacio sin asignar en la unidad 0**.
2. Seleccionar **Nuevo**.
3. Introducir `51200 MB`.
4. Seleccionar **Aplicar**.
5. Aceptar la creación de particiones adicionales.

### 4.2. Particiones creadas

| Partición | Tamaño | Tipo | Acción |
|---|---:|---|---|
| Unidad 0 Partición 1: Reservado para el sistema | 50 MB | Sistema | Conservar |
| Unidad 0 Partición 2 | 50,0 GB | Principal | Instalar Windows |
| Espacio sin asignar en la unidad 0 | 50,0 GB | Sin asignar | Reservar para Ubuntu |

### 4.3. Instalar Windows

1. Seleccionar **Unidad 0 Partición 2 — 50,0 GB — Principal**.
2. Pulsar **Siguiente**.
3. Completar la instalación.
4. Permitir los reinicios automáticos.

No crear ni formatear particiones en el espacio reservado para Ubuntu.

---

## 5. Configuración inicial de Windows

Completar las siguientes pantallas del asistente de Windows 10.

### 5.1. Región y distribuciones del teclado

| Orden | Pantalla | Selección |
|---|---|---|
| 1 | Empecemos por la región. ¿Es correcta? | Uruguay → Sí |
| 2 | ¿Esta es la distribución de teclado correcta? | Español — Spanish → Sí |
| 3 | ¿Quieres agregar una segunda distribución del teclado? | Agregar distribución |
| 4 | Seleccionar segunda distribución | Inglés — English |
| 5 | Confirmar la distribución | Seleccionar la opción de teclado en inglés y continuar |

### 5.2. Configuración de la cuenta

| Orden | Pantalla | Selección |
|---|---|---|
| 1 | ¿Cómo quiere realizar la configuración? | Configurar para uso personal |
| 2 | Inicio de sesión con Microsoft | Cuenta sin conexión |
| 3 | Inicie sesión para disfrutar de la gama completa de servicios y aplicaciones de Microsoft | Experiencia limitada |
| 4 | ¿Quién va a usar este equipo? | `Osmaily` |
| 5 | Crear una contraseña | Introducir contraseña personal |
| 6 | Confirmar contraseña | Repetir contraseña |
| 7 | Primera pregunta de seguridad | Seleccionar pregunta, introducir respuesta y pulsar Siguiente |
| 8 | Segunda pregunta de seguridad | Seleccionar pregunta, introducir respuesta y pulsar Siguiente |
| 9 | Tercera pregunta de seguridad | Seleccionar pregunta, introducir respuesta y pulsar Siguiente |

No registrar la contraseña ni las respuestas de seguridad en GitHub.

### 5.3. Configuración de Microsoft Edge

| Pantalla | Selección |
|---|---|
| Tenga siempre acceso a los datos de exploración recientes | Ahora no |

### 5.4. Configuración de privacidad

Pantalla: **Elegir la configuración de la privacidad para tu dispositivo**.

| Opción | Configuración seleccionada |
|---|---|
| Ubicación | No |
| Encontrar mi dispositivo | No |
| Datos de diagnóstico | Interruptor desactivado; pantalla muestra «Enviar Datos de diagnóstico requeridos» |
| Entrada manuscrita y escritura | No |
| Experiencias personalizadas | No |
| Id. de publicidad | No |

Después de revisar las seis opciones, seleccionar **Aceptar**.

### 5.5. Personalización de la experiencia

Pantalla: **Personalicemos su experiencia**.

| Opción | Selección |
|---|---|
| Entretenimiento | Desmarcado |
| Juegos | Desmarcado |
| Escuela | Desmarcado |
| Creatividad | Desmarcado |
| Empresa | Desmarcado |
| Familia | Desmarcado |

Seleccionar **Omitir**.

### 5.6. Finalización de la configuración

1. Continuar con las pantallas de preparación de Windows.
2. Esperar a que aparezca el escritorio.
3. Comprobar que se inició sesión con el usuario `Osmaily`.

---

## 6. Verificar Windows

### 6.1. Comprobar las particiones

1. Desde el **escritorio de Windows 10**, localizar el botón **Inicio** (logotipo de Windows) en la esquina inferior izquierda de la barra de tareas.
2. Hacer **clic derecho sobre el botón Inicio**.
3. En el menú que aparece, seleccionar **Administración de discos**.
4. En la ventana **Administración de discos**, localizar **Disco 0** en la parte inferior.
5. Comprobar las particiones.

**Resultados verificados:**

| Partición | Tamaño | Estado |
|---|---:|---|
| Reservado para el sistema | 50 MB | Correcto |
| Windows (C:) — NTFS | 49,40 GB | Correcto |
| Disco 0 Partición 3 — Recuperación | 559 MB | Correcto |
| Espacio no asignado | 50,00 GB | Reservado para Ubuntu |
| **Disco 0** | **100,00 GB** | En pantalla |

**Estado: Completado.**

### 6.2. Comprobar el firmware

1. Desde el **escritorio de Windows 10**, presionar **Windows + R**.
2. En la ventana **Ejecutar**, escribir `msinfo32`.
3. Presionar **Enter**.
4. Se abrirá **Información del sistema**.
5. En el panel izquierdo, seleccionar **Resumen del sistema**.
6. En el panel derecho, localizar **Modo de BIOS**.
7. Comprobar el valor.

**Resultado verificado:**

| Campo | Valor |
|---|---|
| Modo de BIOS | **Heredado** |

**Estado: Completado.**

### 6.3. Comprobar MBR

1. Desde el **escritorio de Windows 10**, hacer clic derecho sobre el botón **Inicio**, situado en la esquina inferior izquierda de la barra de tareas.
2. Seleccionar **Administración de discos**.
3. En la parte inferior izquierda, localizar el recuadro gris **Disco 0**, donde aparece **Básico — 100,00 GB — En pantalla**.
4. Hacer **clic derecho directamente sobre el recuadro gris Disco 0**, no sobre las particiones.
5. Seleccionar **Propiedades**.
6. Abrir la pestaña **Volúmenes**.
7. Localizar **Estilo de partición**.

**Resultados verificados:**

| Campo | Valor |
|---|---|
| Disco | Disco 0 |
| Tipo | Básico |
| Estado | En pantalla |
| Estilo de partición | **Registro de arranque maestro (MBR)** |
| Capacidad | 102399 MB |
| Espacio sin asignar | 51202 MB |
| Espacio reservado | 0 MB |

**Estado: Completado.**

### 6.4. Lista de comprobación

- [x] Windows 10 Pro inicia correctamente.
- [x] El usuario funciona.
- [x] El disco utiliza MBR.
- [x] El modo de BIOS es Heredado / Legacy.
- [x] Queda espacio sin asignar para Ubuntu.

**Resultado: verificación de Windows 10 Pro completada.**

---

## 7. Instantánea 1 — Windows 10 Pro: instalación limpia

1. Apagar Windows normalmente.
2. Abrir **Oracle VirtualBox Administrador**.
3. Seleccionar `PC-Multiboot-Osmaily`.
4. Abrir **Instantáneas**.
5. Seleccionar **Estado actual**.
6. Seleccionar **Tomar**.

**Nombre:**

`Multiboot - Windows 10 Pro - Instalación limpia`

**Descripción:**

Windows 10 Pro instalado con BIOS tradicional y particiones MBR. Espacio sin asignar reservado para Ubuntu. Instalación limpia antes de Guest Additions.

---

## 8. Instalar Guest Additions en Windows 10

Iniciar Windows 10 desde `PC-Multiboot-Osmaily`.

### 8.1. Insertar el CD

1. En la ventana de VirtualBox, abrir **Dispositivos**.
2. Seleccionar **Insertar imagen de CD de los complementos del invitado...**.
3. Dentro de Windows 10, abrir el **Explorador de archivos**.
4. Seleccionar **Este equipo**.
5. Abrir la unidad **VirtualBox Guest Additions**.

### 8.2. Ejecutar el instalador

1. Ejecutar `VBoxWindowsAdditions.exe`.
2. Aceptar el control de cuentas de usuario.
3. Seleccionar **Next**.
4. Mantener la ubicación predeterminada.
5. Seleccionar **Next → Install**.
6. Aceptar la instalación de los controladores.
7. Seleccionar **Reboot now → Finish**.
8. Esperar a que Windows 10 reinicie.

**Resultado:** Guest Additions 7.2.22 instalado.

### 8.3. Comprobar Guest Additions

| Función | Procedimiento | Resultado |
|---|---|---|
| Adaptación de pantalla | Redimensionar la ventana de VirtualBox | Comprobado |
| Pantalla completa | Seleccionar **Ver → Modo pantalla completa** | Comprobado |
| Integración del ratón | Mover el puntero entre Windows 11 y Windows 10 | Comprobado |
| Portapapeles compartido | **Dispositivos → Portapapeles compartido → Bidireccional** | Comprobado |
| Arrastrar y soltar | **Dispositivos → Arrastrar y soltar → Bidireccional** | Comprobado |

### 8.4. Comprobar el portapapeles bidireccional

**Windows 11 → Windows 10**

1. Abrir el **Bloc de notas** de Windows 11.
2. Escribir un texto de prueba.
3. Seleccionar el texto y presionar **Ctrl + C**.
4. Abrir el **Bloc de notas** de Windows 10.
5. Presionar **Ctrl + V**.
6. Comprobar que se pega el texto.

**Windows 10 → Windows 11**

1. Escribir un texto en el **Bloc de notas** de Windows 10.
2. Seleccionarlo y presionar **Ctrl + C**.
3. Abrir el **Bloc de notas** de Windows 11.
4. Presionar **Ctrl + V**.
5. Comprobar que se pega el texto.

**Resultado:** portapapeles comprobado en ambos sentidos.

### 8.5. Comprobar Arrastrar y soltar

**Windows 11 → Windows 10**

1. Abrir el **Explorador de archivos** de Windows 11.
2. Seleccionar `prueba-compartida.txt`.
3. Arrastrar el archivo hacia el escritorio de Windows 10.
4. Comprobar que aparece en el escritorio.

**Windows 10 → Windows 11**

1. Crear un archivo de texto `window10pro.txt` en Windows 10.
2. Arrastrarlo desde Windows 10 hacia una carpeta de Windows 11.
3. Comprobar que aparece en la carpeta de destino.

**Resultado:** transferencia de archivos comprobada en ambos sentidos.

### 8.6. Lista de comprobación

- [x] Guest Additions 7.2.22 instalado.
- [x] Windows 10 reiniciado.
- [x] Adaptación automática de pantalla comprobada.
- [x] Modo de pantalla completa comprobado.
- [x] Integración del ratón comprobada.
- [x] Portapapeles Windows 11 → Windows 10 comprobado.
- [x] Portapapeles Windows 10 → Windows 11 comprobado.
- [x] Arrastrar y soltar Windows 11 → Windows 10 comprobado.
- [x] Arrastrar y soltar Windows 10 → Windows 11 comprobado.

**Resultado: instalación y configuración de Guest Additions completadas.**

---

## 9. Instantánea 2 — Windows 10 Pro: Guest Additions

### 9.1. Crear la instantánea

1. Apagar Windows 10 normalmente.
2. Abrir **Oracle VirtualBox Administrador**.
3. Seleccionar `PC-Multiboot-Osmaily`.
4. Abrir **Instantáneas**.
5. Seleccionar **Estado actual**.
6. Hacer clic en **Tomar**.
7. Introducir el nombre y la descripción.
8. Confirmar la creación.

### 9.2. Datos de la instantánea

| Campo | Valor |
|---|---|
| Nombre | `Multiboot - Windows 10 Pro - Guest Additions configuradas` |
| Fecha | 15/11/2026 |
| Hora | 07:58 |
| Estado de la máquina virtual | Apagada |
| Resultado | Instantánea creada correctamente |

**Descripción:**

Windows 10 Pro instalado con BIOS/MBR. Guest Additions instaladas y comprobadas. Espacio reservado para Ubuntu conservado.

### 9.3. Verificar las instantáneas

En **Oracle VirtualBox Administrador → Instantáneas**, comprobar:

| N.º | Instantánea | Estado |
|---|---|---|
| 1 | `Multiboot - Windows 10 Pro - Instalación limpia` | Creada |
| 2 | `Multiboot - Windows 10 Pro - Guest Additions configuradas` | Creada |

### 9.4. Lista de comprobación

- [x] Windows 10 apagado correctamente.
- [x] Segunda instantánea creada.
- [x] Nombre de la instantánea verificado.
- [x] Descripción registrada.
- [x] Primera instantánea conservada.
- [x] Máquina virtual apagada.

**Resultado: configuración de Windows 10 Pro completada y respaldada mediante dos instantáneas.**

---

# PARTE III — INSTALACIÓN DE UBUNTU 22.04.3

## 10. Cambiar la imagen ISO

Con la máquina virtual apagada:

1. Seleccionar `PC-Multiboot-Osmaily`.
2. Abrir **Configuración → Almacenamiento**.
3. Seleccionar la unidad óptica.
4. Sustituir `Windows.iso` por `ubuntu-22.04.3-desktop-amd64.iso`.
5. Confirmar con **Aceptar**.

---

## 11. Iniciar el instalador de Ubuntu

1. Iniciar la máquina virtual.
2. Seleccionar **Try or Install Ubuntu**.
3. Esperar a que cargue el entorno gráfico.
4. Seleccionar **Instalar Ubuntu**.

### 11.1. Configuración

| Campo | Selección |
|---|---|
| Idioma | Español |
| Disposición del teclado | Spanish |
| Variante | Spanish |
| Tipo de instalación | Normal |
| Descargar actualizaciones durante la instalación | Desmarcado |
| Software de terceros | Desmarcado |

### 11.2. Si aparecen problemas gráficos

1. Abrir **Máquina → Reiniciar**.
2. Esperar al menú de arranque de la ISO.
3. Seleccionar **Ubuntu (safe graphics)**.
4. Presionar **Enter**.
5. Continuar con **Instalar Ubuntu**.

Si ya comenzó la escritura de particiones, no reiniciar forzadamente sin revisar el problema.

---

## 12. Tipo de instalación

En **Tipo de instalación**, seleccionar:

**Más opciones**

No seleccionar **Borrar disco e instalar Ubuntu**.

---

## 13. Identificar las particiones existentes

En la pantalla **Tipo de instalación**, el instalador de Ubuntu muestra el disco `/dev/sda` y las particiones creadas anteriormente por Windows 10.

### 13.1. Particiones identificadas

| Dispositivo | Tipo | Tamaño | En uso | Acción |
|---|---|---:|---:|---|
| `/dev/sda1` | ntfs | 52 MB | 27 MB | Conservar |
| `/dev/sda2` | ntfs | 53045 MB | 16613 MB | Conservar |
| `/dev/sda3` | ntfs | 586 MB | 496 MB | Conservar |
| espacio libre | Sin asignar | 53688 MB | — | Utilizar para Ubuntu |

No eliminar ni formatear las tres particiones NTFS de Windows.

---

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

### 14.3. Distribución de particiones esperada

| Dispositivo | Función | Sistema de archivos | Acción |
|---|---|---|---|
| `/dev/sda1` | Reservada para el sistema de Windows | ntfs | Conservar |
| `/dev/sda2` | Windows 10 | ntfs | Conservar |
| `/dev/sda3` | Recuperación de Windows | ntfs | Conservar |
| `/dev/sda4` | Partición extendida | extended | Contenedor de las particiones lógicas |
| `/dev/sda5` | Ubuntu `/` | ext4 | Crear y formatear |
| `/dev/sda6` | Ubuntu swap | linux-swap | Crear como intercambio |

Los números de las nuevas particiones pueden variar según el instalador.

### 14.4. ¿Cuándo se necesita una partición `biosgrub`?

En la instalación individual anterior de Ubuntu creamos una partición **Área reservada de la BIOS de arranque**, identificada como `biosgrub`.

Su necesidad depende del firmware y del tipo de tabla de particiones.

| Configuración | Tabla de particiones | ¿Necesita `biosgrub`? |
|---|---|---|
| Ubuntu individual anterior — BIOS tradicional | GPT | Sí |
| Multiboot actual — BIOS tradicional | MBR | No |
| Instalación con UEFI | GPT | No; utiliza una partición EFI (ESP) |

**Resumen:**

- **BIOS + GPT:** crear una partición `biosgrub` para GRUB.
- **BIOS + MBR:** no necesita una partición `biosgrub`.
- **UEFI + GPT:** utilizar una partición EFI, normalmente montada en `/boot/efi`.

En nuestra instalación multiboot utilizamos **BIOS tradicional + MBR**, por lo que únicamente creamos las particiones raíz `/` y swap para Ubuntu.

---

## 15. Configurar el cargador de arranque

En la misma pantalla **Tipo de instalación**, localizar:

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

1. Confirmar que las particiones de Windows no están marcadas para formatearse.
2. Verificar que Ubuntu tiene asignada la partición raíz `/` y el área de intercambio swap.
3. Mantener `/dev/sda` como dispositivo del cargador de arranque.
4. Seleccionar **Instalar ahora**.
5. Revisar los cambios que muestra el instalador.
6. Confirmar para comenzar la instalación de Ubuntu.

---

## 16. Configuración de Ubuntu

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
4. Retirar la ISO cuando corresponda.

---

# PARTE IV — VERIFICACIÓN DEL MULTIBOOT

## 17. Comprobar GRUB

Después de instalar Ubuntu, debería aparecer un menú semejante a:

```text
Ubuntu
Advanced options for Ubuntu
Windows 10 (on /dev/sda...)
```

Los nombres pueden variar.

### 17.1. Probar Ubuntu

1. Seleccionar **Ubuntu**.
2. Iniciar sesión.
3. Verificar el escritorio.

### 17.2. Probar Windows

1. Reiniciar Ubuntu.
2. Seleccionar la entrada de **Windows** en GRUB.
3. Confirmar que Windows 10 Pro inicia correctamente.

### 17.3. Si Windows no aparece en GRUB

1. Iniciar Ubuntu.
2. Abrir la terminal con **Ctrl + Alt + T**.
3. Ejecutar:

```bash
sudo update-grub
```

4. Reiniciar y comprobar.

Si Windows continúa sin aparecer, revisar `os-prober` antes de modificar el disco.

---

## 18. Instantánea 3 — Ubuntu: instalación limpia

Después de verificar ambos sistemas:

1. Apagar la máquina virtual.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Instalación limpia`

**Descripción:**

Windows 10 Pro y Ubuntu 22.04.3 instalados en un único disco virtual MBR, utilizando BIOS tradicional. Arranque dual mediante GRUB comprobado. Ubuntu sin Guest Additions configuradas.

---

# PARTE V — GUEST ADDITIONS EN UBUNTU

## 19. Instalar Guest Additions

Iniciar Ubuntu desde GRUB.

### 19.1. Comprobar Internet

Abrir la terminal con **Ctrl + Alt + T**.

```bash
ping -c 4 google.com
```

Si no existe conexión, revisar:

**Dispositivos → Red → Conectar adaptador de red**

### 19.2. Instalar dependencias

Ejecutar:

```bash
sudo apt-get update
```

```bash
sudo apt-get install gcc make perl
```

```bash
sudo apt-get install linux-headers-$(uname -r)
```

### 19.3. Insertar Guest Additions

1. Abrir **Dispositivos** en VirtualBox.
2. Seleccionar **Insertar imagen de CD de los complementos del invitado...**.
3. Abrir la unidad `VBox_GAs_7.2.22`.
4. Hacer clic derecho en `autorun.sh`.
5. Seleccionar **Ejecutar como un programa**.
6. Introducir la contraseña.
7. Esperar a que termine la instalación.
8. Presionar **Enter** para cerrar.
9. Reiniciar Ubuntu.

### 19.4. Comprobar funciones

| Función | Comprobación |
|---|---|
| Pantalla | Redimensionar ventana |
| Ratón | Mover entre anfitrión e invitado |
| Portapapeles | Activar Bidireccional y copiar texto |
| Arrastrar y soltar | Activar Bidireccional y probar archivos |

---

## 20. Instantánea 4 — Ubuntu: Guest Additions

Después de verificar Guest Additions:

1. Apagar Ubuntu normalmente.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas`

**Descripción:**

Windows 10 Pro y Ubuntu 22.04.3 instalados con BIOS/MBR y arranque dual mediante GRUB. Guest Additions instaladas y verificadas en ambos sistemas operativos.

---

# PARTE VI — VERIFICACIÓN FINAL

## 21. Lista de comprobación

- [x] Máquina virtual creada.
- [x] Disco VDI dinámico de 100 GB.
- [x] Use EFI desmarcado.
- [x] Windows 10 Pro instalado y escritorio comprobado.
- [x] Primera distribución del teclado: Español.
- [x] Segunda distribución del teclado: Inglés.
- [x] Disco MBR comprobado.
- [x] BIOS Heredado/Legacy comprobado.
- [x] Particiones de Windows verificadas: 50 MB reservada, 49,40 GB principal, 559 MB recuperación y 50 GB sin asignar.
- [x] Instantánea 1 — Windows limpio.
- [x] Guest Additions de Windows instaladas.
- [x] Instantánea 2 — Windows con Guest Additions.
- [ ] Ubuntu 22.04.3 instalado.
- [ ] Particiones de Windows conservadas.
- [ ] Partición raíz `/` creada.
- [ ] Partición swap creada.
- [ ] GRUB instalado en `/dev/sda`.
- [ ] Ubuntu inicia correctamente.
- [ ] Windows inicia correctamente.
- [ ] Instantánea 3 — Ubuntu limpio.
- [ ] Guest Additions de Ubuntu instaladas.
- [ ] Instantánea 4 — Ubuntu con Guest Additions.

---

## 22. Resumen de instantáneas

| N.º | Nombre | Contenido |
|---|---|---|
| 1 | `Multiboot - Windows 10 Pro - Instalación limpia` | Windows recién instalado |
| 2 | `Multiboot - Windows 10 Pro - Guest Additions configuradas` | Windows con Guest Additions |
| 3 | `Multiboot - Ubuntu 22.04.3 - Instalación limpia` | Windows y Ubuntu con GRUB |
| 4 | `Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas` | Ambos sistemas con Guest Additions |

---

## 23. Resultado esperado

| Elemento | Configuración final |
|---|---|
| Máquina virtual | `PC-Multiboot-Osmaily` |
| Disco | VDI dinámico de 100 GB |
| Firmware | BIOS tradicional |
| Use EFI | Desmarcado |
| Tabla de particiones | MBR |
| Sistema operativo 1 | Windows 10 Pro |
| Sistema operativo 2 | Ubuntu 22.04.3 |
| Gestor de arranque | GNU GRUB |
| Guest Additions | Windows y Ubuntu |
| Instantáneas | 4 |

**Objetivo final:** iniciar una única máquina virtual y elegir Windows 10 Pro o Ubuntu 22.04.3 mediante GRUB.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

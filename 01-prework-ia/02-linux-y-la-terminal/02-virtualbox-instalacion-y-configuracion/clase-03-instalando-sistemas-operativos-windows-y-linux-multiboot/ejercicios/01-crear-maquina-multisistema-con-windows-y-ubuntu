# Guía práctica — Instalación Multiboot de Windows 10 Pro y Ubuntu 22.04.3 en VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase:** 03 — Instalación de sistemas operativos Windows y Linux Multiboot  
**Tipo:** Guía de práctica personal  
**Objetivo:** Instalar Windows 10 Pro y Ubuntu 22.04.3 en un mismo disco virtual, configurar el arranque dual mediante GRUB y crear cuatro instantáneas de recuperación.

---

# PARTE I — CREACIÓN DE LA MÁQUINA VIRTUAL

## 1. Configuración de la máquina virtual

Abrir **Oracle VirtualBox Administrador → Nueva**.

### 1.1. Virtual machine name and operating system

| Campo | Configuración |
|---|---|
| VM Name | `PC-Multiboot-Osmaily` |
| VM Folder | `E:\VirtualBox` |
| ISO Image | Seleccionar ISO de Windows 10 |
| OS | Microsoft Windows |
| OS Distribution | Windows |
| OS Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |

### 1.2. Specify virtual hardware

| Campo | Configuración |
|---|---|
| Base Memory | 4096 MB |
| Number of CPUs | 2 |
| Use EFI | Marcado |

### 1.3. Specify virtual hard disk

| Campo | Configuración |
|---|---|
| Opción | Create a New Virtual Hard Disk |
| Disk Size | 100,00 GB |
| Formato | VDI (VirtualBox Disk Image) |
| Reservar completamente | Desmarcado |
| Split Disk Into 2 GB Parts | Desmarcado |

Seleccionar **Terminar**.

---

## 2. Distribución del disco virtual

| Sistema | Espacio aproximado |
|---|---:|
| Windows 10 Pro y particiones auxiliares | 50 GB |
| Ubuntu 22.04.3 y swap | 50 GB |
| **Total** | **100 GB** |

Se utilizará un único disco VDI dinámico.

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
| Activar Windows | No tengo clave de producto, si corresponde |
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
5. Aceptar la creación de las particiones adicionales.

### 4.2. Particiones esperadas

| Partición | Acción |
|---|---|
| Sistema EFI | Conservar |
| Reservada de Microsoft (MSR) | Conservar |
| Principal | Instalar Windows |
| Recuperación, si aparece | Conservar |
| Espacio sin asignar | Reservar para Ubuntu |

### 4.3. Instalar Windows

1. Seleccionar la partición **Principal** de Windows.
2. Pulsar **Siguiente**.
3. Completar la instalación y los reinicios.

No crear particiones en el espacio reservado para Ubuntu.

---

## 5. Configuración inicial de Windows

### 5.1. Región y distribuciones del teclado

| Pantalla | Selección |
|---|---|
| Región | Uruguay |
| Primera distribución del teclado | Español — Spanish |
| Segunda distribución del teclado | Inglés — English |

### 5.2. Usuario y privacidad

| Campo | Configuración |
|---|---|
| Tipo de cuenta | Cuenta sin conexión, si está disponible |
| Usuario | `Osmaily` |
| Contraseña | Configurar contraseña personal |
| Ubicación | No |
| Encontrar mi dispositivo | No |
| Datos de diagnóstico | Requeridos |
| Experiencias personalizadas | No |
| Identificador de publicidad | No |
| Opciones adicionales | Omitir |

Completar el asistente hasta llegar al escritorio.

---

## 6. Comprobar Windows

### 6.1. Verificar las particiones

1. Hacer clic derecho en **Inicio**.
2. Seleccionar **Administración de discos**.
3. Identificar las particiones de Windows.
4. Comprobar que quedan aproximadamente 50 GB **No asignados**.

No crear ni formatear un volumen en ese espacio.

### 6.2. Comprobar el firmware

1. Presionar **Windows + R** dentro de Windows 10.
2. Escribir `msinfo32`.
3. Presionar **Enter**.
4. En **Información del sistema**, abrir **Resumen del sistema**.
5. Buscar **Modo de BIOS**.

| Campo | Resultado esperado |
|---|---|
| Modo de BIOS | UEFI |

### 6.3. Verificaciones

- [ ] Windows 10 Pro inicia correctamente.
- [ ] El usuario funciona.
- [ ] Las particiones de Windows están creadas.
- [ ] Queda espacio sin asignar para Ubuntu.
- [ ] El modo de BIOS es UEFI.

---

## 7. Instantánea 1 — Windows 10 Pro: instalación limpia

1. Apagar Windows normalmente.
2. Abrir **Oracle VirtualBox Administrador**.
3. Seleccionar `PC-Multiboot-Osmaily`.
4. Abrir **Instantáneas**.
5. Seleccionar **Estado actual**.
6. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Windows 10 Pro - Instalación limpia`

**Descripción:**

Windows 10 Pro recién instalado en modo UEFI/GPT. Particiones verificadas. Espacio sin asignar para Ubuntu. Guest Additions pendientes de instalar.

---

## 8. Instalar Guest Additions en Windows 10

Iniciar Windows.

### 8.1. Insertar el CD

1. En VirtualBox, abrir **Dispositivos**.
2. Seleccionar **Insertar imagen de CD de los complementos del invitado...**.
3. Abrir el **Explorador de archivos** de Windows.
4. Entrar en **Este equipo**.
5. Abrir la unidad **VirtualBox Guest Additions**.

### 8.2. Ejecutar el instalador

1. Ejecutar `VBoxWindowsAdditions.exe`.
2. Aceptar el control de cuentas de usuario.
3. Seleccionar **Next**.
4. Mantener la ubicación predeterminada.
5. Seleccionar **Next → Install**.
6. Aceptar la instalación de controladores cuando se solicite.
7. Seleccionar **Reboot now → Finish**.

### 8.3. Verificar Guest Additions

| Función | Comprobación |
|---|---|
| Adaptación de pantalla | Redimensionar la ventana de VirtualBox |
| Integración del ratón | Mover el puntero entre anfitrión e invitado |
| Portapapeles compartido | **Dispositivos → Portapapeles compartido → Bidireccional** |
| Arrastrar y soltar | **Dispositivos → Arrastrar y soltar → Bidireccional** |

- [ ] Guest Additions instalado.
- [ ] Windows reiniciado.
- [ ] Pantalla adaptándose correctamente.
- [ ] Integración del ratón funcionando.
- [ ] Portapapeles bidireccional comprobado.

---

## 9. Instantánea 2 — Windows 10 Pro: Guest Additions

1. Apagar Windows normalmente.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Windows 10 Pro - Guest Additions configuradas`

**Descripción:**

Windows 10 Pro instalado en UEFI/GPT. Guest Additions instaladas y verificadas. Espacio sin asignar conservado para Ubuntu.

---

# PARTE III — INSTALACIÓN DE UBUNTU 22.04.3

## 10. Cambiar la imagen ISO

Con la máquina virtual apagada:

1. Seleccionar `PC-Multiboot-Osmaily`.
2. Abrir **Configuración → Almacenamiento**.
3. Seleccionar la unidad óptica virtual.
4. Sustituir la ISO de Windows por `ubuntu-22.04.3-desktop-amd64.iso`.
5. Mantener **Use EFI** marcado.
6. Confirmar con **Aceptar**.

---

## 11. Iniciar el instalador de Ubuntu

1. Iniciar la máquina virtual.
2. En el menú GNU GRUB de la ISO, seleccionar **Try or Install Ubuntu**.
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

Si el instalador presenta pantalla negra, imagen distorsionada, parpadeo constante o deja de responder:

1. En VirtualBox, abrir **Máquina → Reiniciar**.
2. Confirmar el reinicio.
3. Esperar al menú GNU GRUB de la ISO.
4. Seleccionar **Ubuntu (safe graphics)**.
5. Presionar **Enter**.
6. Continuar con **Instalar Ubuntu**.

Si la instalación ya comenzó a modificar el disco, no reiniciar de forma forzada sin revisar el problema.

---

## 12. Tipo de instalación

En **Tipo de instalación**, seleccionar:

**Más opciones**

No seleccionar **Borrar disco e instalar Ubuntu**.

---

## 13. Identificar las particiones

En `/dev/sda` deberían aparecer las particiones creadas por Windows.

| Partición | Acción |
|---|---|
| EFI System Partition — FAT32 | Conservar |
| Microsoft Reserved (MSR) | Conservar |
| Windows — NTFS | Conservar |
| Recuperación | Conservar |
| Espacio libre | Utilizar para Ubuntu |

No eliminar ni formatear las particiones de Windows.

---

## 14. Crear las particiones de Ubuntu

### 14.1. Partición raíz `/`

Seleccionar **espacio libre → +**.

| Campo | Valor |
|---|---|
| Tamaño | 45000 MB |
| Tipo | Primaria, si aparece |
| Ubicación | Al principio de este espacio |
| Utilizar como | sistema de ficheros ext4 transaccional |
| Punto de montaje | `/` |

Confirmar con **OK**.

### 14.2. Partición swap

Seleccionar **espacio libre → +**.

| Campo | Valor |
|---|---|
| Tamaño | Todo el espacio restante |
| Tipo | Primaria, si aparece |
| Utilizar como | área de intercambio |
| Punto de montaje | No corresponde |

Confirmar con **OK**.

---

## 15. Configurar la partición EFI

Localizar la **EFI System Partition** creada por Windows.

| Campo | Configuración |
|---|---|
| Partición EFI | Existente, FAT32 |
| Punto de montaje | `/boot/efi`, si el instalador requiere asignarlo |
| Formatear | No |

No crear una segunda partición EFI ni una partición `biosgrub`.

### 15.1. Comprobación final

| Partición | Formatear |
|---|---|
| EFI — FAT32 | No |
| MSR | No |
| Windows — NTFS | No |
| Recuperación | No |
| Ubuntu `/` — ext4 | Sí |
| Ubuntu swap | Crear como área de intercambio |

Comprobar los cambios y seleccionar **Instalar ahora**.

Si el instalador indica que se eliminará una partición de Windows, cancelar antes de confirmar.

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

# PARTE IV — COMPROBACIÓN DEL ARRANQUE DUAL

## 17. Verificar GRUB

Después del reinicio debería aparecer un menú semejante a:

```text
Ubuntu
Advanced options for Ubuntu
Windows Boot Manager
```

### 17.1. Probar Ubuntu

1. Seleccionar **Ubuntu**.
2. Iniciar sesión.
3. Comprobar que llega al escritorio.

### 17.2. Probar Windows

1. Reiniciar la máquina.
2. Seleccionar **Windows Boot Manager**.
3. Comprobar que Windows 10 Pro inicia correctamente.

### 17.3. Si Windows no aparece en GRUB

1. Iniciar Ubuntu.
2. Abrir la terminal con **Ctrl + Alt + T**.
3. Ejecutar:

```bash
sudo update-grub
```

4. Reiniciar y comprobar nuevamente.

Si Windows continúa sin aparecer, revisar `os-prober` y las entradas UEFI antes de modificar las particiones.

---

## 18. Instantánea 3 — Ubuntu 22.04.3: instalación limpia

Después de comprobar que ambos sistemas arrancan:

1. Apagar la máquina virtual normalmente.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Instalación limpia`

**Descripción:**

Windows 10 Pro y Ubuntu 22.04.3 instalados en un mismo disco VDI con UEFI/GPT. Arranque dual verificado. Ubuntu recién instalado, antes de configurar Guest Additions.

---

# PARTE V — GUEST ADDITIONS EN UBUNTU

## 19. Instalar Guest Additions

Iniciar Ubuntu desde GRUB.

### 19.1. Comprobar Internet

Abrir la terminal con **Ctrl + Alt + T**.

Ejecutar:

```bash
ping -c 4 google.com
```

Si no hay conexión, comprobar **Dispositivos → Red → Conectar adaptador de red**.

### 19.2. Instalar dependencias

Ejecutar en este orden:

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

1. En VirtualBox, abrir **Dispositivos**.
2. Seleccionar **Insertar imagen de CD de los complementos del invitado...**.
3. Abrir la unidad `VBox_GAs_7.2.22`.
4. Hacer clic derecho en `autorun.sh`.
5. Seleccionar **Ejecutar como un programa**.
6. Introducir la contraseña.
7. Esperar a que termine la instalación.
8. Presionar **Enter** para cerrar el instalador.
9. Reiniciar Ubuntu.

### 19.4. Verificar funciones

| Función | Comprobación |
|---|---|
| Pantalla | Redimensionar ventana |
| Ratón | Mover entre anfitrión e invitado |
| Portapapeles | **Dispositivos → Portapapeles compartido → Bidireccional** |
| Arrastrar y soltar | **Dispositivos → Arrastrar y soltar → Bidireccional** |

Comprobar que el portapapeles funciona en ambos sentidos.

Si Arrastrar y soltar falla, se puede utilizar una carpeta compartida.

---

## 20. Instantánea 4 — Ubuntu 22.04.3: Guest Additions

Después de verificar Guest Additions:

1. Apagar Ubuntu normalmente.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas`

**Descripción:**

Windows 10 Pro y Ubuntu 22.04.3 instalados y funcionando mediante GRUB. Guest Additions configuradas en ambos sistemas operativos. Instalación multiboot finalizada.

---

# PARTE VI — VERIFICACIÓN FINAL

## 21. Lista de comprobación

- [ ] Máquina virtual creada.
- [ ] Disco VDI dinámico de 100 GB.
- [ ] EFI activado.
- [ ] Windows 10 Pro instalado.
- [ ] Primera distribución del teclado: Español.
- [ ] Segunda distribución del teclado: Inglés.
- [ ] Particiones de Windows verificadas.
- [ ] Espacio reservado para Ubuntu.
- [ ] Windows instalado en modo UEFI.
- [ ] **Instantánea 1:** Windows 10 Pro — Instalación limpia.
- [ ] Guest Additions de Windows instaladas y verificadas.
- [ ] **Instantánea 2:** Windows 10 Pro — Guest Additions configuradas.
- [ ] Ubuntu 22.04.3 instalado.
- [ ] Partición EFI de Windows conservada.
- [ ] Partición raíz `/` creada.
- [ ] Partición swap creada.
- [ ] Ubuntu inicia desde GRUB.
- [ ] Windows inicia desde GRUB.
- [ ] **Instantánea 3:** Ubuntu 22.04.3 — Instalación limpia.
- [ ] Guest Additions de Ubuntu instaladas y verificadas.
- [ ] **Instantánea 4:** Ubuntu 22.04.3 — Guest Additions configuradas.

---

## 22. Resumen de instantáneas

| N.º | Nombre | Contenido |
|---|---|---|
| 1 | `Multiboot - Windows 10 Pro - Instalación limpia` | Windows recién instalado |
| 2 | `Multiboot - Windows 10 Pro - Guest Additions configuradas` | Windows con Guest Additions |
| 3 | `Multiboot - Ubuntu 22.04.3 - Instalación limpia` | Windows y Ubuntu con GRUB, antes de Guest Additions de Ubuntu |
| 4 | `Multiboot - Ubuntu 22.04.3 - Guest Additions configuradas` | Ambos sistemas con Guest Additions |

Las cuatro instantáneas pertenecen a la misma máquina virtual y representan estados sucesivos del disco compartido.

---

## 23. Resultado esperado

| Elemento | Resultado |
|---|---|
| Máquina virtual | `PC-Multiboot-Osmaily` |
| Disco | 100 GB VDI dinámico |
| Sistema 1 | Windows 10 Pro |
| Sistema 2 | Ubuntu 22.04.3 |
| Firmware | UEFI |
| Tabla de particiones | GPT |
| Gestor de arranque | GNU GRUB |
| Guest Additions | Windows y Ubuntu |
| Instantáneas | 4 puntos de recuperación |

**Objetivo final:** iniciar una única máquina virtual y seleccionar Windows 10 Pro o Ubuntu 22.04.3 mediante GRUB, conservando instantáneas anteriores y posteriores a Guest Additions.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**

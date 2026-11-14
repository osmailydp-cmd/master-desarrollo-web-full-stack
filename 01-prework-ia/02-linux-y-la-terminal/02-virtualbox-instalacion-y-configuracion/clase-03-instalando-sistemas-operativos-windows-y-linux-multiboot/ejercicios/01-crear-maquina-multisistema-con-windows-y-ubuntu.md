# Guía práctica — Instalación Multiboot de Windows 10 Pro y Ubuntu 22.04.3 en VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack  
**Módulo:** Linux y la Terminal  
**Clase:** 03 — Instalación de sistemas operativos Windows y Linux Multiboot  
**Tipo:** Guía de práctica personal  
**Objetivo:** Instalar Windows 10 Pro y Ubuntu 22.04.3 en un mismo disco virtual utilizando BIOS/MBR, configurar GRUB e implementar cuatro instantáneas de recuperación.

---

# PARTE I — CREACIÓN DE LA MÁQUINA VIRTUAL

## 1. Configuración de VirtualBox

Abrir **Oracle VirtualBox Administrador → Nueva**.

### 1.1. Virtual Machine Name and Operating System

| Campo | Configuración |
|---|---|
| VM Name | `PC-Multiboot-Osmaily` |
| VM Folder | `E:\VirtualBox` |
| ISO Image | `Windows.iso` |
| OS | Microsoft Windows |
| OS Distribution | Windows |
| OS Version | Windows 10 (64-bit) |
| Proceed with Unattended Installation | Desmarcado |

### 1.2. Specify Virtual Hardware

| Campo | Configuración |
|---|---|
| Base Memory | 4096 MB |
| Number of CPUs | 2 |
| Use EFI | **Desmarcado** |
| Hard Disk Size | 100,00 GB |

Seleccionar **Siguiente → Terminar**.

### 1.3. Verificar el disco virtual

Abrir **Configuración → Almacenamiento**.

| Campo | Resultado esperado |
|---|---|
| Nombre | `PC-Multiboot-Osmaily.vdi` |
| Tipo (Formato) | Normal (VDI) |
| Virtual size | 100,00 GB |
| Detalles de almacenamiento | Almacenamiento reservado dinámicamente |
| Imagen ISO | `Windows.iso` |

### 1.4. Configuración de pantalla

Abrir **Configuración → Pantalla**.

| Campo | Configuración |
|---|---|
| Video Memory | 128 MB |
| Number of Virtual Monitors | 1 |
| Scale Factor | 100 % |
| Graphics Controller | VBoxSVGA, si aparece |
| Enable 3D Acceleration | Desmarcado, si aparece |

---

## 2. Distribución del disco virtual

| Sistema | Espacio aproximado |
|---|---:|
| Windows 10 Pro y particiones auxiliares | 50 GB |
| Ubuntu 22.04.3 y swap | 50 GB |
| **Total** | **100 GB** |

| Característica | Configuración |
|---|---|
| Disco | Un único VDI |
| Firmware | BIOS tradicional |
| Tabla de particiones | MBR |
| Gestor de arranque final | GNU GRUB |

---

# PARTE II — INSTALACIÓN DE WINDOWS 10 PRO

## 3. Iniciar el instalador

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
5. Aceptar la creación de particiones adicionales.

### 4.2. Particiones esperadas

| Partición | Acción |
|---|---|
| Reservada para el sistema, si aparece | Conservar |
| Principal — NTFS | Instalar Windows |
| Recuperación, si aparece | Conservar |
| Espacio sin asignar | Reservar para Ubuntu |

### 4.3. Instalar Windows

1. Seleccionar la partición **Principal** destinada a Windows.
2. Pulsar **Siguiente**.
3. Completar la instalación.
4. Permitir los reinicios automáticos.

No crear ni formatear particiones en el espacio reservado para Ubuntu.

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

## 6. Verificar Windows

### 6.1. Comprobar las particiones

1. Hacer clic derecho en **Inicio**.
2. Seleccionar **Administración de discos**.
3. Identificar las particiones de Windows.
4. Comprobar que quedan aproximadamente 50 GB **No asignados**.

### 6.2. Comprobar el firmware

1. Presionar **Windows + R** dentro de Windows 10.
2. Escribir `msinfo32`.
3. Presionar **Enter**.
4. Abrir **Resumen del sistema**.
5. Buscar **Modo de BIOS**.

| Campo | Resultado esperado |
|---|---|
| Modo de BIOS | Heredado / Legacy |

### 6.3. Comprobar MBR

1. Presionar **Windows + X**.
2. Seleccionar **Administración de discos**.
3. Hacer clic derecho sobre el recuadro **Disco 0**.
4. Seleccionar **Propiedades**.
5. Abrir la pestaña **Volúmenes**.
6. Buscar **Estilo de partición**.

| Campo | Resultado esperado |
|---|---|
| Estilo de partición | Registro de arranque maestro (MBR) |

### 6.4. Lista de comprobación

- [ ] Windows 10 Pro inicia correctamente.
- [ ] El usuario funciona.
- [ ] El disco utiliza MBR.
- [ ] El modo de BIOS es Heredado / Legacy.
- [ ] Queda espacio sin asignar para Ubuntu.

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

Iniciar Windows.

### 8.1. Insertar el CD

1. Abrir **Dispositivos**.
2. Seleccionar **Insertar imagen de CD de los complementos del invitado...**.
3. Abrir **Explorador de archivos**.
4. Entrar en **Este equipo**.
5. Abrir **VirtualBox Guest Additions**.

### 8.2. Ejecutar el instalador

1. Ejecutar `VBoxWindowsAdditions.exe`.
2. Aceptar el control de cuentas de usuario.
3. Seleccionar **Next**.
4. Mantener la ubicación predeterminada.
5. Continuar con **Next → Install**.
6. Aceptar los controladores solicitados.
7. Seleccionar **Reboot now → Finish**.

### 8.3. Comprobar Guest Additions

| Función | Comprobación |
|---|---|
| Pantalla | Redimensionar la ventana |
| Ratón | Mover entre anfitrión e invitado |
| Portapapeles | Dispositivos → Portapapeles compartido → Bidireccional |
| Arrastrar y soltar | Dispositivos → Arrastrar y soltar → Bidireccional |

- [ ] Instalación completada.
- [ ] Windows reiniciado.
- [ ] Pantalla adaptándose correctamente.
- [ ] Ratón funcionando.
- [ ] Portapapeles comprobado en ambos sentidos.

---

## 9. Instantánea 2 — Windows 10 Pro: Guest Additions

1. Apagar Windows.
2. Abrir **Oracle VirtualBox Administrador → Instantáneas**.
3. Seleccionar **Estado actual**.
4. Hacer clic en **Tomar**.

**Nombre:**

`Multiboot - Windows 10 Pro - Guest Additions configuradas`

**Descripción:**

Windows 10 Pro instalado con BIOS/MBR. Guest Additions instaladas y comprobadas. Espacio reservado para Ubuntu conservado.

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

El disco virtual debería aparecer como `/dev/sda`.

| Elemento | Acción |
|---|---|
| Partición reservada de Windows | Conservar |
| Windows — NTFS | Conservar |
| Recuperación, si aparece | Conservar |
| Espacio libre | Utilizar para Ubuntu |

No eliminar ni formatear ninguna partición de Windows.

---

## 14. Particionado de Ubuntu

Utilizar el espacio libre restante del disco.

### 14.1. Partición raíz `/`

Seleccionar **espacio libre → +**.

| Campo | Valor |
|---|---|
| Tamaño | 45000 MB |
| Tipo | Lógica, si está disponible |
| Ubicación | Al principio de este espacio |
| Utilizar como | sistema de ficheros ext4 transaccional |
| Punto de montaje | `/` |

Confirmar con **OK**.

### 14.2. Partición swap

Seleccionar el espacio libre restante → **+**.

| Campo | Valor |
|---|---|
| Tamaño | Todo el espacio restante |
| Tipo | Lógica, si está disponible |
| Utilizar como | área de intercambio |
| Punto de montaje | No corresponde |

Confirmar con **OK**.

### 14.3. Comprobación final

| Partición | Formatear |
|---|---|
| Reservada de Windows | No |
| Windows — NTFS | No |
| Recuperación, si aparece | No |
| Ubuntu `/` — ext4 | Sí |
| Ubuntu swap | Crear como intercambio |

**En MBR, utilizar particiones lógicas para Ubuntu cuando el instalador las ofrezca permite evitar el límite de cuatro particiones primarias.** El instalador puede crear automáticamente una partición extendida para alojarlas.

Si no ofrece la opción lógica y ya existen varias particiones primarias, no confirmar cambios hasta revisar la distribución.

---

## 15. Configurar el cargador de arranque

En la pantalla de particionado, localizar:

**Dispositivo donde instalar el cargador de arranque**

Seleccionar:

`/dev/sda`

| Campo | Configuración |
|---|---|
| Cargador | GNU GRUB |
| Disco de instalación | `/dev/sda` |
| Partición EFI | No se utiliza |
| Partición biosgrub | No se necesita en MBR |

Seleccionar **Instalar ahora** y revisar los cambios antes de confirmarlos.

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

- [ ] Máquina virtual creada.
- [ ] Disco VDI dinámico de 100 GB.
- [ ] Use EFI desmarcado.
- [ ] Windows 10 Pro instalado.
- [ ] Primera distribución del teclado: Español.
- [ ] Segunda distribución del teclado: Inglés.
- [ ] Disco MBR comprobado.
- [ ] BIOS Heredado/Legacy comprobado.
- [ ] Espacio reservado para Ubuntu.
- [ ] Instantánea 1 — Windows limpio.
- [ ] Guest Additions de Windows instaladas.
- [ ] Instantánea 2 — Windows con Guest Additions.
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

# Clase 06 — WSL (Windows Subsystem for Linux)

## 1. Objetivo de la clase

Conocer **Windows Subsystem for Linux (WSL)** como una alternativa para utilizar Linux desde Windows, aprender a instalarlo y configurar un entorno de trabajo para programación.

## 2. Material de referencia

**Repositorio oficial del curso — ConquerBlocks:**

https://github.com/ConquerBlocks/conquerblocks-linux-terminal

**Documentación oficial de Microsoft — Instalación de WSL:**

https://learn.microsoft.com/es-es/windows/wsl/install

**Material del profesor:**

`LyT-Clase-06-WSL-Windows-Subsystem-for-Linux.pdf`

## 3. ¿Qué es WSL?

**WSL (Windows Subsystem for Linux)** es una tecnología de Microsoft que permite utilizar un entorno Linux directamente en Windows, sin necesidad de configurar una instalación multiboot.

Permite trabajar con una terminal Linux y utilizar herramientas habituales de desarrollo.

WSL 2 utiliza un kernel Linux y permite ejecutar distribuciones como Ubuntu.

## 4. Instalación de WSL

Según el material de clase, la instalación se realiza desde Windows 10.

1. Abrir **PowerShell como administrador**.
2. Ejecutar:

```powershell
wsl --install
```

3. Reiniciar Windows cuando lo solicite.

### 4.1. Configuración adicional en caso de error

El profesor indica habilitar **Virtual Machine Platform** desde PowerShell como administrador:

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

También revisar las características opcionales desde **Turn Windows features on or off**:

- Windows Subsystem for Linux.
- PowerShell 2.0.
- Virtual Machine Platform.

Reiniciar Windows después de realizar los cambios necesarios.

## 5. Configuración inicial de Ubuntu

Después de instalar Ubuntu mediante WSL:

1. Abrir Ubuntu.
2. Crear el usuario de Linux.
3. Establecer una contraseña personal.
4. Acceder al entorno Linux.

Es importante conservar el nombre de usuario y recordar la contraseña para las operaciones administrativas.

## 6. Configurar Ubuntu en Windows Terminal

El material propone configurar Ubuntu como perfil predeterminado desde las opciones de Windows Terminal.

Esto permite abrir directamente la terminal Linux al iniciar Windows Terminal.

## 7. Integración con Visual Studio Code

Como contenido adicional, la clase contempla la configuración de **Visual Studio Code para trabajar con WSL**.

Esta integración permite utilizar VS Code junto con el entorno Linux de Windows.

## 8. Conceptos principales

| Concepto | Descripción |
|---|---|
| WSL | Subsistema de Windows para Linux |
| WSL 2 | Versión de WSL que utiliza un kernel Linux |
| PowerShell | Terminal utilizada para ejecutar los comandos de instalación |
| Ubuntu | Distribución Linux utilizada en la clase |
| Windows Terminal | Aplicación para acceder al entorno Linux |
| Virtual Machine Platform | Característica de Windows necesaria para WSL 2 |
| Visual Studio Code | Editor que puede integrarse con WSL |

## 9. Conclusión

WSL ofrece una alternativa para utilizar Linux desde Windows sin necesidad de instalar ambos sistemas en arranque dual.

En esta clase se estudian la instalación de WSL, la configuración inicial de Ubuntu, su utilización mediante Windows Terminal y la integración con Visual Studio Code.

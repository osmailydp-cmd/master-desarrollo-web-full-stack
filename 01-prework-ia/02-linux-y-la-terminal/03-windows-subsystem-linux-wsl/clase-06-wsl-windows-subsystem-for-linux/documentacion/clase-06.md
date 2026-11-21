# Clase 06 — WSL (Windows Subsystem for Linux)

## 1. Objetivo

Aprender a instalar y configurar **Windows Subsystem for Linux (WSL)** para utilizar Ubuntu desde Windows, trabajar con la terminal Linux e integrar el entorno con Visual Studio Code.

## 2. Material de referencia

- **Repositorio de ConquerBlocks:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **Documentación oficial de Microsoft:** https://learn.microsoft.com/es-es/windows/wsl/install
- **PDF del profesor:** `LyT-Clase-06-WSL-Windows-Subsystem-for-Linux.pdf`

## 3. ¿Qué es WSL?

**WSL (Windows Subsystem for Linux)** permite ejecutar un entorno Linux dentro de Windows sin necesidad de configurar un arranque multiboot.

Proporciona acceso a comandos, herramientas y aplicaciones de Linux desde Windows.

| Tecnología | Característica |
|---|---|
| WSL 1 | Ejecuta herramientas Linux mediante una capa de compatibilidad. |
| WSL 2 | Utiliza un kernel Linux dentro de una máquina virtual ligera. |

En la práctica del profesor, Visual Studio Code identificó el entorno como **Ubuntu (WSL 1)**.

## 4. Instalar WSL y Ubuntu

Desde Windows:

1. Buscar **Windows PowerShell**.
2. Seleccionar **Ejecutar como administrador**.
3. Ejecutar:

```powershell
wsl --install
```

El instalador realiza las siguientes operaciones:

1. Instala **Plataforma de máquina virtual**.
2. Instala **Subsistema de Windows para Linux**.
3. Instala **Ubuntu**.

Al finalizar, aparece el mensaje:

> La operación solicitada se realizó correctamente. Los cambios se aplicarán una vez que se reinicie el sistema.

Reiniciar Windows desde **Inicio → Reiniciar**.

### 4.1. Configuración adicional en caso de error

El profesor muestra el siguiente comando para habilitar *Virtual Machine Platform* desde PowerShell como administrador:

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

También propone revisar las características de Windows mediante **Turn Windows features on or off**, especialmente:

- Windows Subsystem for Linux.
- Virtual Machine Platform.
- PowerShell 2.0.

## 5. Configurar el usuario de Ubuntu

Después del reinicio, abrir **Ubuntu**.

La terminal solicita crear una cuenta Linux.

| Mensaje | Acción |
|---|---|
| `Enter new UNIX username:` | Introducir el usuario, por ejemplo `usuario`. |
| `New password:` | Establecer una contraseña personal. |
| `Retype new password:` | Repetir la contraseña. |

La contraseña no se visualiza mientras se escribe.

Al finalizar correctamente aparece:

```text
Installation successful!
```

Y se muestra la terminal:

```bash
usuario@BIENVENIDOS7AA1:~$
```

## 6. Configurar Ubuntu en Windows Terminal

### 6.1. Abrir Ubuntu

1. Abrir **Windows Terminal**.
2. Seleccionar la flecha **⌄** situada junto al botón **+**.
3. Elegir **Ubuntu**.

Se abrirá una pestaña con la terminal de Linux.

### 6.2. Establecer Ubuntu como perfil predeterminado

1. Seleccionar la flecha **⌄** junto a **+**.
2. Entrar en **Configuración → Inicio**.
3. En **Perfil predeterminado**, seleccionar **Ubuntu** (icono naranja).
4. Pulsar **Guardar**.
5. Cerrar Windows Terminal y confirmar **Cerrar todo**.
6. Abrir nuevamente Windows Terminal.

**Resultado:** Windows Terminal inicia directamente con Ubuntu.

## 7. Instalar Visual Studio Code

1. Acceder a https://code.visualstudio.com/Download.
2. Descargar **Visual Studio Code para Windows**.
3. Ejecutar el instalador.
4. Aceptar la licencia y mantener la carpeta de instalación predeterminada.
5. Continuar con la carpeta predeterminada del menú Inicio.

### 7.1. Tareas adicionales

En **Seleccione las Tareas Adicionales**, el profesor mantiene:

| Opción | Estado |
|---|---|
| Crear un acceso directo en el escritorio | Desmarcado |
| Abrir con Code desde el menú contextual de archivos | Desmarcado |
| Abrir con Code desde el menú contextual de directorios | Desmarcado |
| Registrar Code como editor para tipos de archivo admitidos | Marcado |
| Agregar a PATH (disponible después de reiniciar) | Marcado |

Seleccionar **Siguiente**, completar la instalación y pulsar **Finalizar**.

## 8. Instalar la extensión WSL en VS Code

La extensión **WSL**, publicada por Microsoft, permite utilizar Visual Studio Code conectado al entorno Linux.

Hay dos formas de instalarla:

- **Desde la notificación:** seleccionar **Install** en la recomendación de WSL.
- **Desde Extensions:** hacer clic en el icono de extensiones, buscar `wsl`, seleccionar **WSL — Microsoft** y pulsar **Install**.

El profesor utiliza la sección **Extensions** y confirma la instalación de la extensión.

## 9. Conectar Visual Studio Code con Ubuntu

1. Cerrar y abrir nuevamente Visual Studio Code.
2. En la esquina inferior izquierda, pulsar **Open a Remote Window** (símbolo `><`).
3. Seleccionar **Connect to WSL**.
4. Comprobar el indicador en la barra inferior:

```text
WSL: Ubuntu
```

En la práctica del profesor, al colocar el ratón sobre el indicador aparece:

```text
Running in Ubuntu (WSL 1)
```

### 9.1. Abrir la terminal integrada

En Visual Studio Code:

**Terminal → New Terminal**

Se abre una terminal `bash` conectada a Ubuntu.

## 10. Crear un proyecto desde Ubuntu

En Windows Terminal, con Ubuntu abierto, ejecutar:

```bash
ls
mkdir proyecto
cd proyecto
code .
```

| Comando | Función |
|---|---|
| `ls` | Listar archivos y carpetas. |
| `mkdir proyecto` | Crear la carpeta `proyecto`. |
| `cd proyecto` | Acceder a la carpeta. |
| `code .` | Abrir la carpeta actual en Visual Studio Code. |

La carpeta se encuentra en:

```text
/home/usuario/proyecto
```

En Visual Studio Code aparece:

```text
PROYECTO [WSL: UBUNTU]
```

### 10.1. Autorizar la carpeta

Cuando aparece el mensaje **Do you trust the authors of the files in this folder?**, seleccionar:

**Yes, I trust the authors**

Esta opción habilita las funciones completas del editor para una carpeta de confianza.

### 10.2. Crear el archivo Python

Dentro de la carpeta `proyecto`, crear:

```text
prueba.py
```

VS Code recomienda instalar la extensión **Python** de Microsoft para trabajar con este lenguaje.

## 11. Verificar la terminal integrada del proyecto

Con la carpeta `proyecto` abierta en VS Code:

1. Seleccionar **Terminal → New Terminal**.
2. Comprobar que se abre una terminal `bash`.
3. Verificar que la ruta actual corresponde al proyecto:

```bash
usuario@BIENVENIDOS7AA1:~/proyecto$
```

Esto confirma que estamos trabajando dentro de Ubuntu desde Visual Studio Code.

## 12. Resumen de comandos

| Comando | Función |
|---|---|
| `wsl --install` | Instalar WSL y una distribución Linux predeterminada. |
| `dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart` | Habilitar Virtual Machine Platform. |
| `ls` | Mostrar el contenido del directorio. |
| `mkdir proyecto` | Crear una carpeta. |
| `cd proyecto` | Cambiar al directorio `proyecto`. |
| `code .` | Abrir el directorio actual en VS Code. |

## 13. Resultado de la clase

En la demostración del profesor se consiguió:

- Instalar WSL y Ubuntu en Windows.
- Crear el usuario de Linux.
- Configurar Ubuntu como perfil predeterminado en Windows Terminal.
- Instalar Visual Studio Code y la extensión WSL.
- Conectar VS Code con Ubuntu.
- Crear una carpeta de proyecto y un archivo Python.
- Abrir la terminal Linux integrada directamente en el proyecto.

**Nota sobre mi práctica:** intenté instalar WSL en una máquina virtual Windows 10 Pro de VirtualBox. La instalación se interrumpió debido a problemas de rendimiento y a que la opción de virtualización anidada no estaba disponible. Por ello, el procedimiento anterior documenta principalmente la demostración del profesor.

## 14. Conclusión

WSL permite trabajar con herramientas de Linux desde Windows e integrarlas con Visual Studio Code.

Mediante la extensión WSL, podemos editar proyectos en VS Code y utilizar la terminal, las herramientas y el sistema de archivos de Ubuntu sin configurar un sistema multiboot.

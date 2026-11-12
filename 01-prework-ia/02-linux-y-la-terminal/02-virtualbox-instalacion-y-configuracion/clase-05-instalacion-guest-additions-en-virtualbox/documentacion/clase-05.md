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
- Limitaciones para copiar y pegar contenido entre

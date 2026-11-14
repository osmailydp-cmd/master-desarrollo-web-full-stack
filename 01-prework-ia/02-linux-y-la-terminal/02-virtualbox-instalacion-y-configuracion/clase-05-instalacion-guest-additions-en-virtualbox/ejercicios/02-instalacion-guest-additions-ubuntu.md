# Práctica 03 — Instalación y configuración de Ubuntu 22.04.3 en Oracle VirtualBox

**Curso:** Máster en Desarrollo Web Full Stack
**Módulo:** Linux y la Terminal
**Tema:** VirtualBox — Instalación y configuración
**Clase:** 04 — Instalación únicamente de Linux o Windows 10
**Tipo:** Práctica personal
**Sistema anfitrión:** Windows 11
**Sistema operativo invitado:** Ubuntu Desktop 22.04.3 LTS (64 bits)
**Máquina virtual:** `PC-Ubuntu-Osmaily`
**Fecha de la práctica:** 12 de noviembre de 2026

---

## 1. Objetivo de la práctica

Instalar Ubuntu 22.04.3 Desktop en una máquina virtual previamente creada en Oracle VirtualBox, utilizando una instalación manual y configurando las particiones del disco virtual.

Durante el procedimiento seguimos como referencia la instalación demostrada por el profesor en la Clase 04, pero realizamos algunas modificaciones necesarias para nuestro entorno.

En particular, solucionamos un problema relacionado con la instalación del cargador de arranque GRUB al utilizar un esquema de particiones GPT con firmware BIOS tradicional.

### Objetivos específicos

- Arrancar Ubuntu desde una imagen ISO.
- Comprender las opciones del menú GNU GRUB.
- Seleccionar el idioma de instalación.
- Configurar la distribución del teclado.
- Seleccionar el tipo de instalación.
- Desconectar temporalmente Internet.
- Comprender el particionado manual de Linux.
- Crear particiones ext4 y swap.
- Identificar y corregir advertencias relacionadas con EFI y BIOS Boot.
- Configurar el cargador de arranque.
- Seleccionar la zona horaria.
- Crear un usuario local.
- Completar la instalación.
- Reiniciar y comprobar el funcionamiento de Ubuntu.
- Configurar las opciones iniciales de privacidad.
- Crear una instantánea de seguridad del sistema instalado.

---

## 2. Configuración previa de la máquina virtual

Antes de iniciar la instalación, habíamos creado la máquina virtual en la práctica de la Clase 02.

### 2.1. Características

| Campo                                | Configuración       |
| ------------------------------------ | ------------------- |
| VM Name                              | `PC-Ubuntu-Osmaily` |
| VM Folder                            | `E:\VirtualBox`     |
| OS                                   | Linux               |
| OS Distribution                      | Ubuntu              |
| OS Version                           | Ubuntu (64-bit)     |
| Base Memory                          | 4096 MB             |
| Number of CPUs                       | 1                   |
| Use EFI                              | Desmarcado          |
| Disk Size                            | 25,00 GB            |
| Formato de disco                     | VDI                 |
| Reservar completamente               | Desmarcado          |
| Split Disk Into 2 GB Parts           | Desmarcado          |
| Proceed with Unattended Installation | Desmarcado          |

### 2.2. Imagen ISO utilizada

`ubuntu-22.04.3-desktop-amd64.iso`

La ISO se conectó posteriormente desde:

**Configuración → Almacenamiento**

No fue seleccionada durante la creación de la máquina virtual.

### 2.3. Configuración de almacenamiento

| Controlador       | Archivo                            |
| ----------------- | ---------------------------------- |
| Controlador: IDE  | `ubuntu-22.04.3-desktop-amd64.iso` |
| Controlador: SATA | `PC-Ubuntu-Osmaily.vdi`            |

El controlador IDE contenía el medio de instalación y el controlador SATA contenía el disco donde instalaríamos Ubuntu.

### 2.4. Estado inicial

La máquina virtual estaba creada y preparada para iniciar la instalación, pero todavía no contenía un sistema operativo instalado.

---

# PARTE I — INICIO DEL INSTALADOR

## 3. Iniciar la máquina virtual

Desde Oracle VirtualBox Administrador:

1. Seleccionamos `PC-Ubuntu-Osmaily`.
2. Hicimos clic en **Iniciar**.
3. Esperamos a que la máquina arrancara desde la ISO de Ubuntu.

### 3.1. Resultado

Apareció el menú:

**GNU GRUB version 2.06**

Este menú permite seleccionar distintas opciones de arranque del medio de instalación.

---

## 4. Menú de arranque GNU GRUB

El menú presentó las siguientes opciones:

| Opción                          | Función                                         |
| ------------------------------- | ----------------------------------------------- |
| Try or Install Ubuntu           | Probar o instalar Ubuntu                        |
| Ubuntu (safe graphics)          | Iniciar con opciones gráficas de compatibilidad |
| OEM install (for manufacturers) | Instalación orientada a fabricantes             |
| Test memory                     | Comprobar la memoria                            |

### 4.1. Comparación con el profesor

En la demostración de la Clase 04, el profesor tenía resaltada la segunda opción:

`Ubuntu (safe graphics)`

En nuestra máquina virtual también observamos esa opción seleccionada.

### 4.2. ¿Qué significa safe graphics?

Es un modo de arranque que utiliza opciones gráficas de compatibilidad.

Puede resultar útil cuando el entorno de instalación presenta problemas relacionados con los gráficos.

### 4.3. Resultado de nuestra práctica

Continuamos con el arranque y accedimos correctamente al asistente gráfico de instalación de Ubuntu.

---

## 5. Pantalla de bienvenida

El instalador mostró:

**Le damos la bienvenida**

### 5.1. Idioma seleccionado

`Español`

### 5.2. Opciones disponibles

- **Probar Ubuntu**
- **Instalar Ubuntu**

### 5.3. Diferencia entre ambas opciones

**Probar Ubuntu**

Permite utilizar Ubuntu desde un entorno temporal, sin instalarlo necesariamente en el disco.

**Instalar Ubuntu**

Inicia el proceso de instalación del sistema operativo.

### 5.4. Opción seleccionada

Hicimos clic en:

**Instalar Ubuntu**

### 5.5. Resultado

El instalador avanzó a la configuración del teclado.

---

## 6. Configurar la disposición del teclado

La siguiente pantalla se titulaba:

**Disposición del teclado**

### 6.1. Selección realizada

| Campo        | Valor   |
| ------------ | ------- |
| Distribución | Spanish |
| Variante     | Spanish |

Esta selección coincidía con la que observamos durante la demostración del profesor.

### 6.2. Opciones adicionales

El instalador también mostraba:

- Spanish (Latin American).
- Spanish-Spanish (Windows).
- Otras variantes del teclado español.

### 6.3. Comprobación disponible

La pantalla incluía el campo:

**Escriba aquí para probar el teclado**

Este campo permite comprobar que las teclas producen los caracteres esperados.

### 6.4. Continuar

Mantuvimos la distribución seleccionada y avanzamos con **Continuar**.

---

# PARTE II — OPCIONES DE INSTALACIÓN

## 7. Actualizaciones y otro software

El instalador mostró:

**Actualizaciones y otro software**

En esta pantalla se decide qué conjunto de aplicaciones se instalará inicialmente y si se descargarán componentes adicionales.

### 7.1. Opciones disponibles

**Instalación normal**

Incluye un conjunto de aplicaciones como navegador web, utilidades, programas de oficina y reproductores multimedia.

**Instalación mínima**

Instala un conjunto más reducido de aplicaciones y herramientas básicas.

### 7.2. Selección realizada

Elegimos:

**Instalación normal**

### 7.3. Otras opciones

Aparecían las casillas:

- **Descargar actualizaciones al instalar Ubuntu**
- **Instalar programas de terceros para hardware de gráficos y de wifi y formatos multimedia adicionales**

### 7.4. Configuración final

| Campo                                        | Estado          |
| -------------------------------------------- | --------------- |
| Instalación normal                           | Seleccionada    |
| Instalación mínima                           | No seleccionada |
| Descargar actualizaciones al instalar Ubuntu | No seleccionada |
| Instalar programas de terceros               | Desmarcada      |

---

## 8. Desconectar Internet durante la instalación

Durante la Clase 04, el profesor explicó que había decidido desconectar la red de la máquina virtual.

### 8.1. Motivo

Su objetivo era evitar que Ubuntu intentara descargar actualizaciones durante la instalación y reducir el tiempo del procedimiento.

Esta decisión no es un requisito obligatorio de Ubuntu.

### 8.2. Procedimiento utilizado por el profesor

El profesor accedió a la configuración de red de VirtualBox y utilizó:

**Network → Adapter 1 → Attached to: Not attached**

### 8.3. Diferencia encontrada en nuestra práctica

Intentamos realizar el mismo cambio desde nuestra versión de VirtualBox.

Abrimos:

**Configuración → Red → Adaptador 1**

El campo **Conectar a** mostraba inicialmente:

`NAT`

Sin embargo, mientras la máquina virtual estaba funcionando, el desplegable únicamente ofrecía:

- `NAT`
- `Adaptador puente`

La opción **No conectado** no aparecía.

### 8.4. Solución aplicada

En lugar de interrumpir la instalación, desconectamos el cable de red virtual desde la ventana de la máquina.

**Procedimiento realizado:**

1. Cerramos la ventana de configuración.
2. Regresamos a `PC-Ubuntu-Osmaily`.
3. Abrimos el menú **Dispositivos**.
4. Entramos en **Red**.
5. Utilizamos la opción **Conectar adaptador de red** para desconectar el adaptador.
6. Regresamos al instalador.

### 8.5. ¿Qué diferencia existe entre ambos métodos?

**Not attached / No conectado**

Modifica el modo de conexión del adaptador virtual.

**Desconectar el cable virtual**

Mantiene configurado el adaptador, en nuestro caso NAT, pero desactiva temporalmente su conexión.

Ambos procedimientos permiten impedir el acceso a la red mediante ese adaptador.

### 8.6. Verificación

El estado del adaptador indicó que el cable estaba desconectado.

Además, bajo la casilla **Descargar actualizaciones al instalar Ubuntu** apareció el mensaje:

**No disponible porque no hay conexión a Internet.**

### 8.7. Resultado

**La conexión a Internet quedó desactivada correctamente, sin apagar ni reiniciar la máquina virtual.**

### 8.8. Aprendizaje

Las opciones disponibles en VirtualBox pueden variar según la versión del programa y el estado de ejecución de la máquina virtual.

Cuando no es posible modificar el modo de conexión, se puede utilizar la desconexión del cable virtual como alternativa.

**Importante:** antes de instalar Guest Additions y sus dependencias, será necesario volver a conectar Internet.

---

## 9. Seleccionar el tipo de instalación

Después de continuar, apareció:

**Tipo de instalación**

El instalador indicó:

**En este equipo no se ha detectado actualmente ningún sistema operativo. ¿Qué quiere hacer?**

### 9.1. Opciones disponibles

**Borrar disco e instalar Ubuntu**

Permite utilizar automáticamente el disco seleccionado para instalar Ubuntu.

**Más opciones**

Permite administrar manualmente las particiones del disco.

### 9.2. Selección realizada

Elegimos:

**Más opciones**

### 9.3. ¿Por qué?

Queríamos reproducir el particionado manual mostrado por el profesor y comprender cómo se distribuye el almacenamiento en Linux.

---

# PARTE III — PARTICIONADO DEL DISCO

## 10. Identificar el disco virtual

El instalador mostró el dispositivo:

`/dev/sda`

Con la descripción:

`ATA VBOX HARDDISK (26.8 GB)`

### 10.1. ¿Qué representa /dev/sda?

Es el identificador del disco virtual que Linux detecta dentro de la máquina.

Aunque en VirtualBox habíamos creado un disco de 25 GB, el instalador lo mostraba como aproximadamente 26,8 GB.

Esto se explica por las diferencias entre unidades decimales y binarias utilizadas para expresar capacidades de almacenamiento.

### 10.2. ¿Es el disco físico de Windows 11?

No.

`/dev/sda` corresponde al disco virtual asociado a:

`PC-Ubuntu-Osmaily.vdi`

Las operaciones realizadas dentro de Ubuntu afectan a ese disco virtual.

---

## 11. Crear una nueva tabla de particiones

Inicialmente, el instalador mostraba el disco `/dev/sda` sin particiones configuradas.

### 11.1. Procedimiento

1. Seleccionamos `/dev/sda`.
2. Hicimos clic en **Nueva tabla de particiones...**.
3. Apareció una ventana de confirmación.

### 11.2. Mensaje mostrado

**¿Crear una nueva tabla de particiones vacía en este dispositivo?**

El instalador advirtió que se eliminarían las particiones existentes si continuábamos.

### 11.3. Acción realizada

Seleccionamos:

**Continuar**

### 11.4. Resultado

El instalador mostró el espacio disponible del disco:

`26843 MB`

### 11.5. Aprendizaje

Una tabla de particiones permite organizar cómo se divide el almacenamiento de un disco.

Los esquemas habituales son MBR y GPT.

El esquema utilizado influye en los requisitos del cargador de arranque.

---

## 12. Primer esquema de particiones

Inicialmente intentamos reproducir exactamente las particiones que había creado el profesor.

### 12.1. Primera partición: sistema Ubuntu

Seleccionamos el espacio libre y pulsamos el botón **+**.

Configuramos:

| Campo                      | Valor                                  |
| -------------------------- | -------------------------------------- |
| Tamaño                     | 20000 MB                               |
| Tipo de la nueva partición | Primaria                               |
| Ubicación                  | Al principio de este espacio           |
| Utilizar como              | sistema de ficheros ext4 transaccional |
| Punto de montaje           | `/`                                    |

### 12.2. ¿Qué significa ext4?

`ext4` es un sistema de archivos utilizado habitualmente en Linux.

Permite organizar y almacenar los archivos del sistema operativo y de los usuarios.

### 12.3. ¿Qué significa el punto de montaje /?

La barra `/` representa la raíz del sistema de archivos Linux.

Es el punto principal a partir del cual se organiza la estructura de directorios.

### 12.4. Resultado

La partición apareció como:

`/dev/sda1`

Con un tamaño aproximado de:

`19999 MB`

### 12.5. Segunda partición: área de intercambio

Utilizamos el espacio restante para crear otra partición.

Seleccionamos:

**Utilizar como: área de intercambio**

### 12.6. ¿Qué es swap?

Es un espacio de almacenamiento que Linux puede utilizar para determinadas operaciones de gestión de memoria.

Puede servir como respaldo cuando existe presión sobre la memoria RAM, aunque es considerablemente más lento que la memoria física.

### 12.7. Resultado del primer particionado

| Partición   | Tipo | Tamaño   |
| ----------- | ---- | -------- |
| `/dev/sda1` | ext4 | 19999 MB |
| `/dev/sda2` | swap | 6841 MB  |

### 12.8. Cargador de arranque

En el campo:

**Dispositivo donde instalar el cargador de arranque**

Mantuvimos:

`/dev/sda ATA VBOX HARDDISK (26.8 GB)`

---

# PARTE IV — ADVERTENCIAS Y CORRECCIÓN DEL ARRANQUE

## 13. Primera comprobación con la terminal

Antes de confirmar definitivamente la instalación, decidimos comprobar el esquema del disco.

### 13.1. Abrir una terminal desde el entorno de instalación

Aunque Ubuntu todavía no estaba instalado, el medio ISO había iniciado un entorno temporal de Linux.

Esto permitía acceder a herramientas como la terminal.

Abrimos la terminal mediante:

`Ctrl + Alt + T`

### 13.2. Primer intento de consulta

Intentamos ejecutar:

```bash
sudo parted -l
```

En el primer intento se escribió accidentalmente el número `1` en lugar de la letra `l` minúscula.

La terminal respondió:

```text
parted: invalid option -- '1'
```

### 13.3. Corrección

Ejecutamos correctamente:

```bash
sudo parted -l
```

### 13.4. Resultado observado

La terminal mostró:

```text
Disk /dev/sda: 26.8GB
Partition Table: unknown
```

También apareció:

```text
Error: /dev/sda: unrecognised disk label
```

### 13.5. Interpretación

En ese momento, las modificaciones del particionador todavía no se habían aplicado definitivamente al disco.

El resultado no permitía confirmar la tabla de particiones preparada por el instalador.

Por ese motivo continuamos revisando las advertencias de arranque antes de escribir los cambios.

---

## 14. Primera advertencia: falta una partición EFI

Al pulsar **Instalar ahora**, apareció el siguiente mensaje:

**Go back to the menu and resume partitioning?**

El instalador indicó:

```text
No EFI System Partition was found.
This system will likely not be able to boot successfully,
and the installation process may fail.
```

### 14.1. ¿Qué significa?

Indica que el instalador no encuentra una partición del sistema EFI.

Estas particiones se utilizan en instalaciones que arrancan mediante firmware UEFI.

### 14.2. ¿Por qué nos llamó la atención?

Porque durante la creación de nuestra máquina virtual habíamos dejado desmarcada la opción:

**Use EFI**

Por tanto, esperábamos utilizar BIOS tradicional.

### 14.3. ¿Qué hicimos?

En lugar de continuar inmediatamente, elegimos:

**Volver**

Decidimos comprobar primero el modo de arranque real de Ubuntu.

---

## 15. Comprobar si Ubuntu arrancó en BIOS o UEFI

Abrimos nuevamente la terminal del entorno temporal de Ubuntu.

### 15.1. Comando utilizado

```bash
ls /sys/firmware/efi
```

### 15.2. ¿Qué comprueba?

Permite verificar si existe el directorio relacionado con el arranque mediante firmware EFI.

### 15.3. Resultado obtenido

La terminal respondió:

```text
ls: cannot access '/sys/firmware/efi': No such file or directory
```

### 15.4. Interpretación

Esto confirmó que nuestra sesión había arrancado en **modo BIOS tradicional**, no en modo UEFI.

### 15.5. Aprendizaje

No basta con interpretar cualquier advertencia del instalador de manera aislada.

Es importante comprobar el modo real de arranque antes de decidir qué particiones crear.

---

## 16. Segunda advertencia: falta el área reservada BIOS Boot

Después de comprobar el modo BIOS, volvimos a pulsar **Instalar ahora**.

Cuando apareció la advertencia EFI, seleccionamos **Continuar**.

Entonces apareció una segunda advertencia:

**Go back to the menu and correct this problem?**

El mensaje indicaba:

```text
The partition table format in use on your disks normally
requires you to create a separate partition for boot loader code.
```

También explicaba que la partición debía estar marcada como:

`Reserved BIOS boot area`

Y que debía tener un tamaño mínimo de:

`1 MB`

### 16.1. ¿Qué significa?

Cuando GRUB se instala en una máquina que utiliza BIOS tradicional con una tabla de particiones GPT, necesita una pequeña partición especial para determinados componentes de arranque.

Esta partición se conoce como:

**BIOS Boot Partition**

### 16.2. Diferencia con una partición EFI

| BIOS Boot                                          | EFI System Partition                        |
| -------------------------------------------------- | ------------------------------------------- |
| Utilizada para determinadas instalaciones BIOS/GPT | Utilizada para instalaciones UEFI           |
| Tipo `biosgrub`                                    | Tipo EFI System Partition                   |
| No requiere punto de montaje                       | Normalmente se monta en `/boot/efi`         |
| Puede ocupar unos pocos MB                         | Habitualmente necesita bastante más espacio |
| Almacena componentes de GRUB                       | Almacena archivos de arranque UEFI          |

### 16.3. Comparación con el profesor

Durante la Clase 04, el profesor recibió ambas advertencias y decidió continuar.

En nuestra práctica preferimos corregir el problema antes de instalar Ubuntu.

---

## 17. Corregir el esquema de particiones

Seleccionamos:

**Volver**

Regresamos a la pantalla del particionador.

### 17.1. Eliminar las particiones preparadas

Como todavía no habíamos instalado Ubuntu, reorganizamos el disco virtual.

Eliminamos las particiones preparadas mediante el botón **−**.

### 17.2. Nuevo objetivo

Crear tres particiones:

1. Área reservada para el arranque BIOS.
2. Partición raíz ext4.
3. Área de intercambio swap.

---

## 18. Crear la partición BIOS Boot

Seleccionamos el espacio libre y abrimos el cuadro:

**Crear partición**

### 18.1. Configuración realizada

Introdujimos inicialmente un tamaño de:

`2 MB`

### 18.2. Tipo de partición

En el desplegable **Utilizar como**, seleccionamos exactamente la opción:

**Área reservada de la BIOS de arranque**

### 18.3. Confirmar la creación

Hicimos clic en **OK**.

### 18.4. Resultado observado

El instalador creó:

`/dev/sda1`

Con tipo:

`biosgrub`

### 18.5. Diferencia entre el tamaño solicitado y el mostrado

Aunque introdujimos **2 MB**, el particionador mostró finalmente:

`1 MB`

No pudimos confirmar la causa exacta de esa diferencia a partir de las capturas.

Conservamos el resultado porque coincidía con el mínimo indicado por la advertencia.

### 18.6. ¿Requiere punto de montaje?

No.

La partición BIOS Boot no se monta como un directorio normal de Ubuntu.

### 18.7. ¿Es lo mismo que /boot?

No.

La partición BIOS Boot reserva espacio para componentes del cargador de arranque en sistemas BIOS/GPT.

El directorio `/boot` contiene archivos relacionados con el arranque de Linux, como núcleos e imágenes de arranque.

Son conceptos diferentes.

---

## 19. Crear nuevamente la partición raíz

Después de crear `biosgrub`, preparamos la partición principal de Ubuntu.

### 19.1. Configuración

| Campo               | Valor       |
| ------------------- | ----------- |
| Sistema de archivos | ext4        |
| Punto de montaje    | `/`         |
| Tamaño final        | 19999 MB    |
| Dispositivo         | `/dev/sda2` |

### 19.2. Resultado

La partición quedó destinada a almacenar Ubuntu y los archivos asociados al sistema.

---

## 20. Crear nuevamente la partición swap

Utilizamos el espacio restante para crear el área de intercambio.

### 20.1. Configuración

**Utilizar como: área de intercambio**

### 20.2. Resultado

El instalador creó:

`/dev/sda3`

Con un tamaño de:

`6840 MB`

---

## 21. Esquema final de particiones

Después de corregir el particionado, la tabla quedó de la siguiente manera:

| Dispositivo | Tipo       |   Tamaño | Función                         |
| ----------- | ---------- | -------: | ------------------------------- |
| `/dev/sda1` | `biosgrub` |     1 MB | Área reservada de arranque BIOS |
| `/dev/sda2` | ext4       | 19999 MB | Sistema Ubuntu, montado en `/`  |
| `/dev/sda3` | swap       |  6840 MB | Área de intercambio             |

También aparecían espacios residuales de aproximadamente 1 MB.

### 21.1. Cargador de arranque

Mantuvimos:

`/dev/sda ATA VBOX HARDDISK (26.8 GB)`

### 21.2. ¿Por qué es importante esta selección?

Porque indica el disco donde se instalará el cargador de arranque GRUB.

En nuestra configuración, el destino corresponde al disco virtual principal de Ubuntu.

### 21.3. Resultado

El esquema quedó preparado para una instalación de Ubuntu con firmware BIOS tradicional y una partición especial `biosgrub`.

---

## 22. Verificar nuevamente las advertencias

Con el particionado corregido, hicimos clic en:

**Instalar ahora**

### 22.1. Primera advertencia

Volvió a aparecer el mensaje relacionado con la ausencia de una partición EFI.

Como habíamos comprobado que Ubuntu estaba utilizando BIOS tradicional, seleccionamos:

**Continuar**

### 22.2. Segunda advertencia

**La advertencia sobre Reserved BIOS boot area ya no apareció.**

Esto indicaba que el instalador reconocía la partición BIOS Boot que habíamos creado.

### 22.3. Confirmación importante

El instalador avanzó hasta la pantalla de confirmación de escritura de los cambios.

---

## 23. Confirmar los cambios del disco

La pantalla mostró:

**¿Desea escribir los cambios en los discos?**

### 23.1. Disco afectado

`SCSI3 (0,0,0) (sda)`

### 23.2. Operaciones indicadas

El instalador informó que prepararía las siguientes particiones:

| Partición    | Tipo indicado |
| ------------ | ------------- |
| Partición #1 | biosgrub      |
| Partición #2 | ext4          |
| Partición #3 | intercambio   |

### 23.3. ¿Por qué revisamos esta ventana?

Porque esta confirmación supone aplicar los cambios de particionado al disco virtual.

Antes de continuar, comprobamos que correspondían a las tres particiones que habíamos preparado.

### 23.4. Acción realizada

Hicimos clic en:

**Continuar**

### 23.5. Resultado

El instalador aceptó la configuración y avanzó a la selección de la zona horaria.

---

# PARTE V — CONFIGURACIÓN DE UBUNTU

## 24. Seleccionar la zona horaria

El instalador mostró:

**¿Dónde se encuentra?**

### 24.1. Configuración realizada

Seleccionamos:

`Montevideo`

### 24.2. Zona horaria

`America/Montevideo`

### 24.3. Diferencia con el profesor

Durante la demostración, el profesor seleccionó Madrid.

En nuestra práctica elegimos Montevideo porque corresponde a nuestra ubicación.

### 24.4. ¿Para qué sirve?

La zona horaria permite mostrar correctamente la hora local y registrar eventos del sistema con su referencia temporal.

### 24.5. Continuar

Hicimos clic en **Continuar**.

---

## 25. Crear la cuenta de usuario

El instalador mostró:

**¿Quién es usted?**

Esta pantalla permite definir la identidad del usuario y el nombre interno del equipo.

### 25.1. Configuración definitiva

| Campo                                       | Valor               |
| ------------------------------------------- | ------------------- |
| Su nombre                                   | `Osmaily`           |
| El nombre de su equipo                      | `pc-ubuntu-osmaily` |
| Elija un nombre de usuario                  | `osmaily`           |
| Elija una contraseña                        | Configurada         |
| Confirme su contraseña                      | Confirmada          |
| Iniciar sesión automáticamente              | Desmarcado          |
| Solicitar mi contraseña para iniciar sesión | Seleccionado        |
| Utilizar Active Directory                   | Desmarcado          |

### 25.2. Diferencia entre el nombre de VirtualBox y el nombre de Ubuntu

**Nombre de la máquina virtual**

`PC-Ubuntu-Osmaily`

Este nombre se utiliza en Oracle VirtualBox para identificar la máquina.

**Nombre del equipo**

`pc-ubuntu-osmaily`

Este nombre identifica internamente al sistema Ubuntu, por ejemplo, en servicios de red y en la terminal.

**Nombre de usuario**

`osmaily`

Identifica la cuenta personal dentro del sistema Linux.

### 25.3. Cambio realizado durante la práctica

Inicialmente, Ubuntu propuso:

`osmaily-VirtualBox`

Decidimos sustituirlo por:

`pc-ubuntu-osmaily`

para mantener una nomenclatura coherente con el nombre de la máquina virtual.

### 25.4. Ejemplo de terminal

Después de iniciar sesión, normalmente podremos encontrar un indicador parecido a:

```bash
osmaily@pc-ubuntu-osmaily:~$
```

### 25.5. Contraseña

Introdujimos una contraseña y confirmamos que coincidía.

El instalador mostró:

**Contraseña aceptable**

No incluimos la contraseña en el portafolio por motivos de seguridad.

### 25.6. Inicio de sesión

Seleccionamos:

**Solicitar mi contraseña para iniciar sesión**

De esta manera, Ubuntu solicitará autenticación al acceder a la cuenta.

### 25.7. Resultado

Todos los campos quedaron validados correctamente.

Hicimos clic en **Continuar**.

---

## 26. Instalar los archivos del sistema

Después de configurar la cuenta, Ubuntu comenzó a completar la instalación.

La ventana mostró:

**Instalando el sistema**

### 26.1. ¿Qué ocurre durante esta etapa?

El instalador realiza operaciones como:

- Copiar archivos del sistema operativo.
- Configurar paquetes.
- Preparar componentes del sistema.
- Aplicar los ajustes regionales.
- Configurar la cuenta de usuario.
- Instalar los componentes de arranque.

### 26.2. Comportamiento observado

En determinado momento, la ventana del instalador mostró un área blanca amplia.

Sin embargo, en la parte inferior permanecía visible el estado de instalación.

No apareció un mensaje de error asociado a esa pantalla.

### 26.3. Acción realizada

Dejamos que el instalador completara el procedimiento sin interrumpirlo.

---

# PARTE VI — FINALIZACIÓN Y PRIMER ARRANQUE

## 27. Instalación terminada

Después de completar la instalación, apareció una ventana titulada:

**Instalación terminada**

Con el mensaje:

**La instalación se ha completado. Necesita reiniciar el equipo para poder usar la nueva instalación.**

### 27.1. Acción disponible

**Reiniciar ahora**

### 27.2. Resultado

El instalador había terminado sin mostrar un error final.

Seleccionamos **Reiniciar ahora** para comprobar que el sistema podía arrancar.

---

## 28. Reiniciar Ubuntu

Ubuntu inició el proceso de reinicio.

### 28.1. ¿Qué queríamos comprobar?

Que el sistema operativo pudiera arrancar después de instalarse en el disco virtual.

Esta comprobación era especialmente importante porque habíamos corregido previamente las advertencias de GRUB.

### 28.2. Resultado observado

Ubuntu mostró la pantalla de inicio de sesión.

No fue necesario realizar una intervención manual adicional con la ISO durante el reinicio observado.

---

## 29. Primer inicio de sesión

La pantalla de autenticación mostró el nombre:

**Osmaily**

### 29.1. Procedimiento

1. Seleccionamos la cuenta de usuario.
2. Introdujimos la contraseña.
3. Confirmamos el inicio de sesión.

### 29.2. Resultado

Ubuntu permitió acceder correctamente al entorno gráfico.

### 29.3. ¿Qué verificamos?

- La instalación finalizó.
- El sistema arrancó después del reinicio.
- La cuenta de usuario fue creada.
- La autenticación funcionó.
- El entorno de escritorio se cargó.

### 29.4. Importancia

Esta comprobación demuestra que el sistema operativo pudo iniciar correctamente después del particionado que preparamos.

---

# PARTE VII — CONFIGURACIÓN INICIAL DESPUÉS DE INSTALAR

## 30. Asistente de bienvenida

Después del primer inicio de sesión apareció:

**Le damos la bienvenida a Ubuntu**

Este asistente permite completar distintas opciones iniciales del sistema.

Durante nuestra práctica revisamos las pantallas de Ubuntu Pro, información del sistema, privacidad y finalización.

---

## 31. Ubuntu Pro

El asistente mostró la sección:

**Ubuntu Pro**

### 31.1. ¿Qué es?

Es un servicio de Canonical que ofrece prestaciones adicionales relacionadas con mantenimiento y actualizaciones de seguridad.

No es obligatorio para utilizar Ubuntu en esta práctica.

### 31.2. Opciones mostradas

- Activar Ubuntu Pro.
- Omitir por ahora.

### 31.3. Situación observada

Como habíamos desconectado Internet, la pantalla indicó que se necesitaba conexión para activar Ubuntu Pro.

### 31.4. Opción seleccionada

**Omitir por ahora**

### 31.5. Resultado

Continuamos sin activar Ubuntu Pro.

---

## 32. Ayudar a mejorar Ubuntu

La siguiente pantalla se titulaba:

**Ayudar a mejorar Ubuntu**

Ubuntu preguntó si deseábamos enviar información del sistema a Canonical.

### 32.1. Información mencionada

La pantalla explicaba que podía incluir datos relacionados con:

- Modelo del ordenador.
- Programas instalados.
- Ubicación aproximada configurada.

### 32.2. Opciones disponibles

- Sí, enviar información del sistema a Canonical.
- No enviar información del sistema.

### 32.3. Selección realizada

**No enviar información del sistema**

### 32.4. Resultado

Avanzamos con **Siguiente** sin habilitar el envío de información del sistema.

---

## 33. Privacidad

El asistente mostró la pantalla:

**Privacidad**

### 33.1. Configuración disponible

**Servicios de ubicación**

Esta función permite que determinadas aplicaciones soliciten información sobre la ubicación geográfica del equipo.

### 33.2. Selección realizada

**Servicios de ubicación: desactivado**

### 33.3. ¿Afecta a la zona horaria?

No.

Mantener desactivados los servicios de ubicación no impide que Ubuntu utilice la zona horaria configurada manualmente:

`America/Montevideo`

### 33.4. Resultado

Continuamos con **Siguiente**.

---

## 34. Finalizar el asistente

La última pantalla mostró:

**Listo para comenzar**

Y el mensaje:

**¡Está listo para comenzar!**

### 34.1. Información mostrada

Ubuntu indicó que podíamos utilizar la aplicación **Software** para instalar programas.

### 34.2. Comportamiento observado

Apareció un indicador de carga mientras intentaba mostrar contenido relacionado con aplicaciones.

Como la máquina no tenía conexión a Internet, ese contenido no se mostró inmediatamente.

### 34.3. Acción realizada

Hicimos clic en:

**Hecho**

### 34.4. Resultado

Se cerró el asistente y accedimos al escritorio de Ubuntu.

---

# PARTE VIII — COMPROBACIONES DEL SISTEMA

## 35. Verificar el escritorio de Ubuntu

Después de completar el asistente, apareció el escritorio de Ubuntu 22.04.3.

### 35.1. Elementos observados

En el escritorio pudimos identificar:

- Barra superior de Ubuntu.
- Menú **Actividades**.
- Barra lateral de aplicaciones.
- Firefox.
- Thunderbird.
- Archivos.
- Aplicaciones de Ubuntu.
- Papelera.
- Fondo de escritorio de Ubuntu 22.04.

### 35.2. Resultado

El entorno gráfico quedó disponible para utilizar el sistema operativo.

### 35.3. ¿Qué significa?

Que Ubuntu pudo iniciar sesión y cargar correctamente el escritorio.

Esto confirma el funcionamiento básico de la instalación.

---

## 36. Comportamiento gráfico observado

Durante la primera sesión detectamos un comportamiento visual que conviene documentar.

### 36.1. Síntoma

Al cambiar el tamaño de la ventana de VirtualBox, la imagen del escritorio de Ubuntu presentó parpadeos temporales.

### 36.2. ¿Qué ocurrió después?

El parpadeo desapareció sin realizar modificaciones.

### 36.3. Posibles explicaciones

El comportamiento puede estar relacionado con:

- La integración gráfica entre VirtualBox y Ubuntu.
- La configuración del controlador gráfico.
- Cambios de tamaño o resolución de la ventana.
- La ausencia de Guest Additions en esta etapa.

### 36.4. ¿Se confirmó una causa?

No.

No realizamos una prueba que permitiera establecer una causa única.

### 36.5. Resultado

El escritorio permaneció visible y utilizable después del parpadeo.

### 36.6. Aprendizaje

Es importante diferenciar un síntoma observado de una causa confirmada.

La instalación posterior de Guest Additions permitirá comprobar si mejora el comportamiento gráfico.

---

# PARTE IX — INSTANTÁNEA DE SEGURIDAD

## 37. Apagar Ubuntu antes de crear la instantánea

Después de comprobar que Ubuntu funcionaba, decidimos conservar el estado inicial del sistema.

### 37.1. Objetivo

Crear un punto de recuperación antes de instalar Guest Additions y realizar cambios adicionales.

### 37.2. Procedimiento

1. Abrimos el menú del sistema de Ubuntu.
2. Seleccionamos las opciones de apagado.
3. Apagamos Ubuntu correctamente.
4. Esperamos a que VirtualBox mostrara la máquina como apagada.

### 37.3. Resultado

`PC-Ubuntu-Osmaily`

**Estado: Apagada**

---

## 38. Crear la instantánea

Desde Oracle VirtualBox Administrador:

1. Seleccionamos `PC-Ubuntu-Osmaily`.
2. Abrimos la sección **Instantáneas**.
3. Seleccionamos el estado actual.
4. Hicimos clic en **Tomar**.
5. Introdujimos el nombre de la instantánea.
6. Confirmamos la operación.

### 38.1. Nombre utilizado

`Ubuntu 22.04.3 - Instalación limpia`

### 38.2. Resultado

La instantánea apareció en el administrador de VirtualBox.

Debajo figuraba:

**Estado actual (modificado)**

### 38.3. ¿Es normal ese estado?

Sí.

VirtualBox muestra el estado actual como la rama de trabajo posterior al punto de recuperación creado.

Esto no indica un error.

### 38.4. ¿Qué conserva la instantánea?

Permite recuperar el estado de la máquina virtual correspondiente al momento de su creación.

En nuestro caso, se tomó después de completar:

- Instalación de Ubuntu.
- Creación del usuario.
- Configuración de zona horaria.
- Configuración inicial de privacidad.
- Primer inicio de sesión.
- Verificación del escritorio.

Y antes de instalar Guest Additions.

### 38.5. ¿Por qué es importante?

Porque ahora podremos experimentar con nuevas configuraciones y disponer de un punto al cual regresar si alguna modificación provoca problemas.

### 38.6. Aclaración

Una instantánea no sustituye una copia de seguridad independiente de archivos importantes.

---

# PARTE X — RESUMEN DE LA PRÁCTICA

## 39. Configuración final del sistema

| Elemento                               | Valor                              |
| -------------------------------------- | ---------------------------------- |
| Máquina virtual                        | `PC-Ubuntu-Osmaily`                |
| Sistema operativo                      | Ubuntu 22.04.3 Desktop             |
| Arquitectura                           | 64 bits                            |
| Memoria RAM                            | 4096 MB                            |
| Procesadores virtuales                 | 1                                  |
| Disco virtual                          | VDI de 25 GB                       |
| Firmware                               | BIOS tradicional                   |
| Imagen ISO utilizada                   | `ubuntu-22.04.3-desktop-amd64.iso` |
| Tipo de instalación                    | Manual                             |
| Idioma                                 | Español                            |
| Distribución del teclado               | Spanish / Spanish                  |
| Instalación                            | Normal                             |
| Actualizaciones durante la instalación | No descargadas                     |
| Internet durante la instalación        | Desconectado                       |
| Particionado                           | Manual                             |
| Cargador de arranque                   | GRUB                               |
| Zona horaria                           | Montevideo                         |
| Nombre del equipo                      | `pc-ubuntu-osmaily`                |
| Usuario                                | `osmaily`                          |
| Inicio de sesión                       | Con contraseña                     |
| Ubuntu Pro                             | Omitido                            |
| Envío de información a Canonical       | Desactivado                        |
| Servicios de ubicación                 | Desactivados                       |
| Guest Additions                        | Pendientes de instalar             |

---

## 40. Particiones definitivas

| Partición   | Tipo     |   Tamaño | Función                  |
| ----------- | -------- | -------: | ------------------------ |
| `/dev/sda1` | biosgrub |     1 MB | Área reservada BIOS Boot |
| `/dev/sda2` | ext4     | 19999 MB | Sistema operativo Ubuntu |
| `/dev/sda3` | swap     |  6840 MB | Área de intercambio      |

**Destino del cargador de arranque:** `/dev/sda`.

---

## 41. Problemas encontrados y soluciones

| Problema                                                        | Solución aplicada                                                    | Resultado             |
| --------------------------------------------------------------- | -------------------------------------------------------------------- | --------------------- |
| La opción «No conectado» no aparecía en la configuración de red | Desconectar el adaptador desde Dispositivos → Red                    | Internet desconectado |
| Confusión entre el número 1 y la letra l en un comando          | Corregir el comando `parted -l`                                      | Consulta ejecutada    |
| El instalador advirtió que faltaba una partición EFI            | Verificar el modo de arranque mediante `/sys/firmware/efi`           | Confirmado BIOS       |
| El instalador advirtió que faltaba Reserved BIOS boot area      | Crear una partición de tipo biosgrub                                 | Advertencia eliminada |
| Tamaño mostrado diferente del introducido para BIOS Boot        | Conservar partición biosgrub de 1 MB, que cumplía el mínimo indicado | Partición aceptada    |
| Parpadeo temporal del escritorio                                | Observar el comportamiento sin introducir cambios adicionales        | Desapareció           |

---

## 42. Diferencias respecto al profesor

En esta práctica seguimos como referencia el procedimiento de la Clase 04, pero realizamos algunas adaptaciones.

### 42.1. Máquina virtual

**Profesor:** `Instalando Ubuntu Solo`.

**Nuestra práctica:** `PC-Ubuntu-Osmaily`.

### 42.2. Conexión de red

**Profesor:** modificó el adaptador mediante `Not attached`.

**Nuestra práctica:** desconectamos el cable virtual desde **Dispositivos → Red**.

### 42.3. Zona horaria

**Profesor:** Madrid.

**Nuestra práctica:** Montevideo.

### 42.4. Cuenta de usuario

**Profesor:** utilizó una cuenta de demostración.

**Nuestra práctica:** configuramos la cuenta `osmaily` y el nombre de equipo `pc-ubuntu-osmaily`.

### 42.5. Arranque BIOS/GPT

**Profesor:** mostró las advertencias sobre EFI y BIOS Boot y continuó con la demostración.

**Nuestra práctica:** comprobamos el modo BIOS y corregimos el particionado creando una partición `biosgrub`.

### 42.6. Finalización

**Profesor:** interrumpió la instalación demostrativa para mostrar otra máquina Ubuntu previamente instalada.

**Nuestra práctica:** completamos toda la instalación, reiniciamos, iniciamos sesión, configuramos Ubuntu y verificamos el escritorio.

---

## 43. Lista final de comprobación

- [x] Crear y configurar la máquina virtual.
- [x] Conectar la ISO de Ubuntu.
- [x] Iniciar desde GRUB.
- [x] Seleccionar Español.
- [x] Seleccionar Instalar Ubuntu.
- [x] Configurar el teclado.
- [x] Seleccionar Instalación normal.
- [x] Deshabilitar descargas durante la instalación.
- [x] Desconectar Internet.
- [x] Seleccionar Más opciones.
- [x] Preparar el particionado manual.
- [x] Comprobar el modo BIOS.
- [x] Crear la partición biosgrub.
- [x] Crear la partición ext4 para `/`.
- [x] Crear la partición swap.
- [x] Configurar GRUB en `/dev/sda`.
- [x] Confirmar los cambios del disco.
- [x] Seleccionar Montevideo.
- [x] Crear el usuario local.
- [x] Completar la instalación.
- [x] Reiniciar Ubuntu.
- [x] Iniciar sesión correctamente.
- [x] Completar el asistente de bienvenida.
- [x] Comprobar el escritorio.
- [x] Apagar Ubuntu correctamente.
- [x] Crear la instantánea de instalación limpia.
- [ ] Instalar Guest Additions.
- [ ] Verificar la integración de pantalla, ratón y portapapeles.

---

## 44. Resultado final

**Instalación y configuración de Ubuntu 22.04.3 completadas correctamente en Oracle VirtualBox.**

La máquina virtual pudo:

- Arrancar desde la ISO.
- Instalar Ubuntu mediante particionado manual.
- Reconocer la partición BIOS Boot.
- Completar el proceso de instalación.
- Reiniciar correctamente.
- Mostrar la pantalla de inicio de sesión.
- Autenticar al usuario creado.
- Cargar el escritorio.
- Completar el asistente de bienvenida.

Finalmente, creamos la instantánea:

`Ubuntu 22.04.3 - Instalación limpia`

Con esta instantánea conservamos el estado inicial del sistema antes de instalar Guest Additions.

---

## 45. Conclusión

Esta práctica permitió comprender el proceso completo de instalación manual de Ubuntu en una máquina virtual.

Además de reproducir los pasos del profesor, encontramos y resolvimos situaciones importantes:

- Diferencias entre versiones de VirtualBox.
- Desconexión de la red durante una instalación.
- Identificación de discos y particiones.
- Diferencias entre BIOS y UEFI.
- Necesidad de una partición BIOS Boot al utilizar BIOS con GPT.
- Configuración de GRUB.
- Creación de una cuenta local.
- Configuración inicial de privacidad.
- Verificación del arranque y del escritorio.

El aprendizaje más importante fue comprender que **una instalación aparentemente correcta puede presentar problemas de arranque si no se configura adecuadamente el esquema de particiones y el cargador GRUB**.

Corregimos ese problema antes de completar la instalación y verificamos que Ubuntu pudo iniciar correctamente.

**Con esta práctica cerramos la instalación de Ubuntu de la Clase 04.**

---

## 46. Siguiente práctica

**Clase 05 — Instalación de Guest Additions en Ubuntu**

En la siguiente práctica utilizaremos la máquina virtual que acabamos de instalar para:

1. Recuperar la conexión a Internet.
2. Actualizar los índices de paquetes de Ubuntu.
3. Instalar las herramientas necesarias.
4. Montar el CD de Guest Additions.
5. Ejecutar el instalador de Linux.
6. Reiniciar Ubuntu.
7. Comprobar la adaptación de la resolución.
8. Configurar el portapapeles compartido.
9. Probar arrastrar y soltar.
10. Crear una nueva instantánea si la instalación termina correctamente.

---

**Portafolio de aprendizaje — Máster en Desarrollo Web Full Stack.**


# Ubuntu — Configurar los manuales `man` en inglés y español

## 1. Objetivo

Configurar Ubuntu para que los manuales de Linux se muestren **en inglés por defecto**, pero permitiendo consultar su versión en español cuando sea necesario.

Esta configuración afecta únicamente a los manuales `man`, sin necesidad de cambiar el idioma del sistema operativo.

**Entorno utilizado:** Ubuntu 22.04.3 LTS, ejecutado en VirtualBox.

## 2. Actualizar los paquetes

Abrir la terminal y ejecutar:

```bash
sudo apt update
```

Este comando actualiza la información de los paquetes disponibles en los repositorios de Ubuntu.

## 3. Instalar los manuales en español

Ejecutar:

```bash
sudo apt install manpages-es
```

El paquete `manpages-es` proporciona traducciones al español de diversas páginas del manual de Linux.

**Nota:** no todos los comandos tienen documentación traducida. Algunos manuales continuarán apareciendo en inglés.

## 4. Consultar la configuración regional

Ejecutar:

```bash
locale
```

En nuestro Ubuntu, se observó la configuración regional:

```text
LANG=es_UY.UTF-8
LANGUAGE=es_UY:es
```

Esto significa que el sistema tiene configurado el español de Uruguay como idioma principal.

Cuando existen páginas traducidas, `man` puede seleccionarlas automáticamente según esta configuración.

## 5. Cambiar temporalmente el idioma predeterminado de `man`

Para establecer el inglés como idioma predeterminado de los manuales en la terminal actual:

```bash
export MANOPT="-L en"
```

La variable de entorno `MANOPT` permite establecer opciones que `man` utilizará automáticamente.

En este caso, `-L en` indica que se debe solicitar la documentación en inglés.

### Comprobar el funcionamiento

```bash
man ls
```

El manual debería aparecer en inglés.

Para consultar su traducción al español:

```bash
man -L es ls
```

La opción `-L es` solicita el manual en español y prevalece sobre el idioma predeterminado establecido en `MANOPT`.

**Importante:** el comando `export` solo modifica la configuración de la sesión actual. Si cerramos la terminal, el cambio puede perderse.

## 6. Guardar la configuración permanentemente

Para conservar el inglés como idioma predeterminado cada vez que abramos una terminal Bash, modificaremos el archivo `~/.bashrc`.

### Paso 1. Abrir el archivo

```bash
nano ~/.bashrc
```

### Paso 2. Añadir la configuración

Al final del archivo, agregar:

```bash
# Idioma predeterminado de los manuales de Linux
export MANOPT="-L en"
```

### Paso 3. Guardar los cambios

En el editor Nano:

1. Presionar **Ctrl + O** para guardar.
2. Presionar **Enter** para confirmar.
3. Presionar **Ctrl + X** para salir.

### Paso 4. Aplicar los cambios

```bash
source ~/.bashrc
```

Este comando carga nuevamente la configuración de Bash sin necesidad de cerrar la terminal.

## 7. Consultar manuales en ambos idiomas

| Comando | Función |
|---|---|
| `man ls` | Consultar el manual de `ls` en inglés. |
| `man -L es ls` | Consultar el manual de `ls` en español, si está disponible. |
| `man -L en ls` | Solicitar explícitamente la versión inglesa. |
| `man -L es mkdir` | Consultar el manual de `mkdir` en español. |
| `man -L es cp` | Consultar el manual de `cp` en español. |
| `man -L es rm` | Consultar el manual de `rm` en español. |

**Ejemplo práctico:** si estamos estudiando `cp` y no comprendemos una explicación en inglés, ejecutamos `man -L es cp` para consultar su traducción, si existe.

## 8. Comprobar que el cambio es permanente

1. Cerrar la terminal.
2. Abrir una terminal nueva.
3. Ejecutar:

```bash
man ls
```

Verificar que el manual aparece en inglés.

Después ejecutar:

```bash
man -L es ls
```

Comprobar que aparece en español.

En nuestra práctica, ambas comprobaciones funcionaron correctamente.

## 9. Comandos de diagnóstico y reversión

Para comprobar las opciones predeterminadas de `man`:

```bash
echo "$MANOPT"
```

El resultado esperado es:

```text
-L en
```

Para consultar el idioma del sistema:

```bash
locale
```

Para cancelar temporalmente la configuración personalizada:

```bash
unset MANOPT
```

Si queremos eliminar el cambio permanentemente:

1. Abrir `~/.bashrc`.
2. Eliminar la línea `export MANOPT="-L en"`.
3. Guardar el archivo.
4. Ejecutar `source ~/.bashrc`.

## 10. Resumen rápido para otra instalación de Ubuntu

Si volvemos a instalar Ubuntu en otra computadora, podemos utilizar estos comandos:

```bash
sudo apt update
sudo apt install manpages-es

# Inglés por defecto durante la sesión
export MANOPT="-L en"

# Añadir esta línea al final de ~/.bashrc
# export MANOPT="-L en"

# Aplicar la configuración guardada
source ~/.bashrc
```

Después comprobar:

```bash
man ls
man -L es ls
```

**Resultado final:** manuales en inglés por defecto, traducciones al español disponibles bajo demanda y configuración permanente para nuevas sesiones de Bash.

---

## 11. Conclusión

Aprendimos a instalar páginas del manual en español, consultar la configuración regional de Ubuntu y utilizar una variable de entorno para personalizar el idioma predeterminado de `man`.

También practicamos la edición de `~/.bashrc` y la aplicación de cambios mediante `source`.

Esta configuración facilita estudiar Linux en su idioma técnico original y consultar explicaciones en español cuando resulte necesario.

# Clase 10 — Archivo de Host para registros DNS

## 1. Objetivo de la clase

Comprender qué es un **servidor DNS**, cómo funciona la resolución de nombres de dominio y para qué sirve el archivo `/etc/hosts`.

**Importante:** esta clase fue únicamente explicativa. El profesor aclaró que no era necesario realizar ninguna modificación, porque la demostración correspondía a la antigua academia de ConquerBlocks.

## 2. Material de referencia

- **Repositorio:** https://github.com/ConquerBlocks/conquerblocks-linux-terminal
- **DNS:** https://es.wikipedia.org/wiki/Sistema_de_nombres_de_dominio
- **DNSChecker:** https://dnschecker.org/

## 3. ¿Qué es DNS?

El **DNS (Domain Name System)** permite convertir nombres de dominio en direcciones IP para que los equipos puedan localizar servidores en Internet.

Por ejemplo, un dominio como `academia.conquerblocks.com` puede resolverse a una dirección IPv4 mediante un registro DNS de tipo `A`.

## 4. ¿Para qué sirve el archivo `/etc/hosts`?

El archivo `/etc/hosts` permite asociar manualmente un nombre de dominio con una dirección IP en nuestro propio equipo.

Ejemplo mostrado por el profesor:

```text
164.132.249.211 academia.conquerblocks.com
```

Cuando el sistema da prioridad a esta asociación, utiliza esa IP para resolver el dominio en lugar de la respuesta DNS habitual.

**Esta modificación es local:** no cambia los registros DNS públicos ni afecta a otros equipos.

## 5. Demostración del profesor

El profesor explicó el funcionamiento mediante una terminal de macOS.

| Comando o herramienta | Explicación |
|---|---|
| `ping academia.conquerblocks.com` | Comprobó la IP utilizada para resolver el dominio. |
| `sudo nano /etc/hosts` | Editó el archivo de asociaciones locales con permisos de administrador. |
| `ping academia.conquerblocks.com` | Verificó que el dominio comenzaba a resolverse a la IP configurada. |
| DNSChecker | Consultó el registro DNS tipo `A` desde diferentes servidores. |
| Navegador web | Comprobó que podía acceder al sitio web de la academia. |

Durante la demostración, `ping` resolvió inicialmente el dominio a `104.21.22.45` y, después de modificar `/etc/hosts`, a `164.132.249.211`.

## 6. Conclusión

En esta clase aprendimos que el **DNS relaciona los nombres de dominio con direcciones IP**, mientras que el archivo `/etc/hosts` permite establecer asociaciones locales que pueden tener prioridad sobre las respuestas DNS.

También conocimos DNSChecker como herramienta para consultar registros DNS desde distintos servidores.

**No se realizaron ejercicios prácticos**, ya que la configuración demostrada pertenecía a la antigua academia y el profesor indicó expresamente que solo debíamos comprender su funcionamiento.

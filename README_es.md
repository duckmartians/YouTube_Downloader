# YouTube Downloader Pro

**[English](README.md) · [Tiếng Việt](README_vi.md) · [中文](README_zh.md) · [Español](README_es.md) · [العربية](README_ar.md) · [Русский](README_ru.md)**

Una aplicación de escritorio amigable para descargar videos, listas de reproducción, canales y Shorts de YouTube — con extracción de audio, miniaturas, subtítulos y descargas en paralelo. Trae `ffmpeg` y un entorno JavaScript incorporados, así que **no necesitas instalar nada más**.

---

## Características destacadas

- Descarga videos individuales, listas completas, canales enteros o colecciones de Shorts.
- Guarda como **video MP4** (Mejor / 1080p / 720p / 480p) o **audio MP3** (192 kbps).
- Opcionalmente guarda **miniatura (JPG)** y **subtítulos (SRT)** junto con el video.
- Hasta **10 videos en paralelo**.
- **Vista previa de listas** para elegir exactamente qué videos añadir a la cola.
- **Reintentar videos fallidos** con un solo clic.
- **Exportar la cola** o **solo los videos fallidos** a CSV.
- Soporte de **Cookies** (pegar desde una extensión del navegador o seleccionar un archivo).
- Soporte de **Proxy** (HTTP / HTTPS / SOCKS4 / SOCKS5, con autenticación opcional).
- Omite videos ya descargados anteriormente.
- Disponible en **6 idiomas**: English, Tiếng Việt, 中文, Español, العربية, Русский.
- **`yt-dlp` se actualiza automáticamente** cada 24 horas para seguir los cambios de YouTube.

---

## Inicio rápido

1. Ejecuta `YouTubeDownloader.exe`.
2. Pega un enlace de YouTube en el campo **Enlace** y presiona **Enter** (o haz clic en **Añadir**).
3. (Opcional) Ajusta calidad, formato u opciones extras en la tarjeta **Opciones**.
4. Haz clic en **Iniciar Descarga**.

¡Listo! Los archivos se guardan en la **Carpeta de guardado** mostrada en la tarjeta **Configuración** (por defecto: una carpeta `youtube_downloads/` junto a la app).

---

## Vista general de la interfaz

```
┌─────────────────────────────────────────────────────────────────────────┐
│  EN  VI  中文  ES  AR  RU      [Actualizar] [Cookies] [Proxy] [♥]       │  ← Barra superior
├──────────────────────────────────┬──────────────────────────────────────┤
│  CONFIGURACIÓN                   │  COLA      [Exportar] [Errores] [×]  │
│  Enlace: [_____________] Añadir 🔍│  ┌────────────────────────────────┐ │
│  Guardar: [____________] 📂        │  │ # │ Título │ Estado │ Progreso│ │
│                                  │  │ 1 │ ...    │ ...    │ ...     │ │
│  OPCIONES                        │  │ 2 │ ...    │ ...    │ ...     │ │
│  Calidad: [Mejor ▾] Límite: [0]  │  └────────────────────────────────┘ │
│  Tipo: [Normal ▾] Concurrentes   │                                      │
│  [Media] [Audio] [Miniat] [Subs] │  REGISTRO                            │
│                                  │  [09:00:01] ...                      │
│  CONTROLES                       │  [09:00:02] ...                      │
│  Estado: Listo                   │                                      │
│  ████████████░░░░░░░░░ 60%       │                                      │
│  [Iniciar] [Detener] [Reintentar]│                                      │
└──────────────────────────────────┴──────────────────────────────────────┘
```

La ventana tiene **dos columnas principales**: la **columna izquierda** es para configuración, opciones y controles; la **columna derecha** muestra la cola y el registro.

---

## Guía detallada

### 1. Añadir videos a la cola

Cuatro formas:

- Pegar un **enlace de video individual** (`https://www.youtube.com/watch?v=...`) y pulsar **Enter** o **Añadir**.
- Pegar un **enlace de lista de reproducción** (`...?list=...`) — la app la expande en videos individuales.
- Pegar un **enlace de canal** (`youtube.com/@nombrecanal`) — la app obtiene tanto los videos normales **como** los Shorts del canal y los almacena en caché.
- Hacer clic en **Vista previa** (🔍) para abrir un diálogo con todos los videos de la lista/canal; marca los que quieras y pulsa OK.

Una vez añadidos, los videos aparecen en la tabla **Cola** a la derecha con el estado `⏳ Pendiente`.

> **Consejo — las listas y canales se guardan en caché.** Cuando pegas un enlace de canal, la app descarga la lista de videos una vez y la guarda localmente. Después puedes cambiar **Límite** o alternar entre **Normal / Shorts** y la cola se actualiza al instante sin volver a buscar.

### 2. Elegir qué descargar (tarjeta de Opciones)

| Botón | Qué hace |
|---|---|
| **Descargar Media** (activado por defecto) | Guarda el video como MP4 |
| **Solo Audio** | Guarda solo el audio como MP3, 192 kbps |
| **Miniatura** | Guarda la portada como JPG |
| **Subtítulos** | Guarda subtítulos como SRT (elige automáticamente el mejor idioma disponible) |

**Descargar Media** y **Solo Audio** son mutuamente excluyentes — activar uno desactiva el otro.

Si **desactivas ambos**, la app omite la descarga principal pero aún guarda Miniatura/Subtítulos si están activados. Útil cuando solo quieres la portada o los subtítulos.

| Otra opción | Rango / Valores | Notas |
|---|---|---|
| **Calidad** | Mejor, 1080p, 720p, 480p | Deshabilitada en modo Audio |
| **Límite** | 0–9999 | `0` = sin límite. Solo aplica a listas/canales. |
| **Tipo de Video** | Normal / Shorts | Solo aplica a listas/canales. |
| **Concurrentes** | 1–10 | Cuántos videos descargar simultáneamente |

### 3. Iniciar y monitorear

Haz clic en **Iniciar Descarga**. La barra de estado muestra el progreso general; cada fila tiene su propia barra de progreso. Pulsa **Detener** en cualquier momento — aparece un diálogo de confirmación, y luego todas las descargas activas se cancelan.

Cuando todo termina, el estado cambia a **Todo completo**.

### 4. Reintentar videos fallidos

Si algunas filas muestran `❌ Error`, haz clic en **Reintentar Fallidos**. La cola se reconstruye solo con las filas fallidas y la descarga comienza automáticamente. Los videos exitosos no se reintentan para evitar descargas duplicadas.

### 5. Exportar cola o errores

- **Exportar**: guarda toda la cola (Título, URL, Estado) en un archivo `.csv`.
- **Exportar Errores**: guarda solo las filas fallidas. Útil para compartir un listado de problemas o guardarlos para reintentarlos más tarde.

Ambos archivos usan UTF-8 con BOM para que se abran correctamente en Excel.

### 6. Vista previa antes de añadir

1. Pega un enlace de lista o canal en **Enlace**.
2. Haz clic en **Vista previa**. Se abre una ventana con todos los videos.
3. Marca los videos que quieras.
4. Haz clic en **OK**. Se añaden a la cola.

---

## Cookies (para videos con restricción de edad o que requieren inicio de sesión)

Haz clic en **Cookies** en la barra superior para abrir el diálogo.

Dos formas de proporcionar cookies:

**A — Pegar desde una extensión del navegador** (recomendado)
1. Instala la extensión [Cookie-Exporter](https://chromewebstore.google.com/detail/cookie-exporter/fhnmmidekmgocpjdceeffppcodigillk) en Chrome/Edge.
2. Visita youtube.com con tu sesión iniciada, haz clic en la extensión y copia el JSON.
3. Pégalo en el cuadro de **contenido**, marca **Activar** y haz clic en **Guardar**.

**B — Seleccionar un archivo**
1. Haz clic en **Examinar** y elige un `cookies.txt` (formato Netscape) o un archivo `.json`.
2. Marca **Activar** y haz clic en **Guardar**.

La app detecta automáticamente JSON y lo convierte a formato Netscape internamente.

> **Cuándo necesitas cookies realmente:** videos con restricción de edad, contenido solo para miembros, errores de "Sign in to confirm you're not a bot", o descargar tus listas privadas.

---

## Proxy (opcional)

Haz clic en **Proxy** en la barra superior para abrir el diálogo.

| Campo | Notas |
|---|---|
| **Protocolo** | `http`, `https`, `socks4` o `socks5` |
| **IP / Host** | Ejemplo: `127.0.0.1` o `miproxy.ejemplo.com` |
| **Puerto** | Obligatorio |
| **Usuario / Contraseña** | Opcional, solo si tu proxy requiere autenticación |

Haz clic en **Verificar Proxy** para confirmar la conectividad antes de guardar — intenta conectar a Google a través de tu proxy y muestra ✅ o ❌.

---

## Dónde se guardan los archivos

### Media descargada
Por defecto, los archivos van a una carpeta `youtube_downloads/` junto a `YouTubeDownloader.exe`. Cámbiala con **Examinar** en la tarjeta de Configuración.

Los nombres de archivo siguen estas plantillas:

- **Video:** `Uploader - Title [VideoID] [720p].mp4`
- **Audio:** `Uploader - Title [VideoID].mp3`
- **Miniatura / Subtítulo:** mismo prefijo, con `.jpg` o `.<lang>.srt`

El ID de video entre corchetes asegura que **dos videos con el mismo título no se sobrescriben**.

### Datos y configuración
La app guarda datos internos en:

```
%APPDATA%\YouTubeDownloaderStandalone\
├── settings.json          ← idioma, proxy, contenido de cookies, última verificación de yt-dlp
├── cookies.txt            ← cookies en formato Netscape
├── download_history.txt   ← IDs de videos descargados en la sesión actual (auto-borrado al iniciar la app)
├── yt-dlp.exe             ← motor descargado automáticamente
├── temp\                  ← archivos temporales durante la descarga
└── temp_cache\            ← caché de listas/canales expandidos
```

> **Evitar descargas duplicadas en la misma sesión:** el archivo `download_history.txt` recuerda todo lo descargado desde que se abrió la app. Si añades el mismo video dos veces en una sesión, la segunda copia se omite. El archivo se **borra automáticamente cada vez que abres la app**, así que cerrar y volver a abrir te da un estado limpio — los videos pueden redescargarse libremente.

---

## Actualizar yt-dlp manualmente

La app verifica una nueva versión de `yt-dlp` cada 24 horas al iniciarse. Si sospechas que el motor está desactualizado (por ejemplo, cambios recientes de YouTube), haz clic en **Actualizar Biblioteca** en la barra superior para forzar la actualización inmediatamente.

---

## Leer el registro

Cada línea tiene marca de tiempo `[HH:MM:SS]`. El registro filtra el ruido de progreso rutinario de yt-dlp y mantiene solo información útil:

- `--- Procesando video: ...` — un worker comenzó un video.
- `✅ Descarga exitosa: ...` — listo.
- `[ERROR] ...` — algo salió mal; el mensaje contiene la razón.
- `[Tarea X] attempt 1/3 failed: ...` — yt-dlp devolvió un error; la app reintentará hasta 3 veces con retrasos crecientes (5s, 10s, 15s).

---

## Solución de problemas

**"Sign in to confirm you're not a bot" / "Video unavailable"**
→ Añade cookies desde una sesión de navegador iniciada (ver Cookies arriba).

**HTTP 429 / Too Many Requests**
→ YouTube está limitando tu IP. Espera 10–30 minutos o usa un proxy.

**"Requested format is not available"**
→ Haz clic en **Actualizar Biblioteca** para refrescar `yt-dlp`. Si persiste, prueba otra **Calidad**.

**El registro muestra "⏭️ OMITIDO: video ya está en download_history.txt"**
→ En la sesión actual ya descargaste este video, por eso fue omitido. Cierra y vuelve a abrir la app — el historial se reinicia automáticamente y la descarga se ejecutará de nuevo.

**No pasa nada al pulsar Iniciar**
→ Asegúrate de que la cola no esté vacía y la **Carpeta de guardado** sea válida (usa **Examinar** para mayor seguridad).

**Atascado en "Verificando y actualizando la herramienta de descarga…"**
→ Tu internet bloquea `github.com`, o `%APPDATA%\YouTubeDownloaderStandalone\` es de solo lectura. Intenta ejecutar como administrador una vez para establecer permisos.

---

## Idiomas

Haz clic en cualquiera de los botones de idioma (EN, VI, 中文, ES, AR, RU) en la barra superior. Tu elección se guarda en `settings.json` y se recordará la próxima vez. La primera vez que ejecutas la app, intenta detectar el idioma del sistema; si no es uno de los 6 soportados, vuelve a English.

---

## Soporte / Donar

El botón **♥ Donar** en la barra superior abre una ventana con información bancaria/de cuenta. Si encuentras útil esta herramienta, una pequeña contribución ayuda a mantener el proyecto vivo. ¡Gracias!

Sitio del autor: [duckmartians.info](https://duckmartians.info)

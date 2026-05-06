# YouTube Downloader Pro

**[English](README.md) · [Tiếng Việt](README_vi.md) · [中文](README_zh.md) · [Español](README_es.md) · [العربية](README_ar.md) · [Русский](README_ru.md)**

A friendly desktop app to download YouTube videos, playlists, channels, and Shorts — with audio extraction, thumbnails, subtitles, and parallel downloads. Bundled `ffmpeg` and JavaScript runtime mean **you don't need to install anything else**.

---

## Highlights

- Download single videos, full playlists, entire channels, or Shorts collections.
- Save as **video MP4** (best / 1080p / 720p / 480p) or **audio MP3** (192 kbps).
- Optionally save **thumbnail (JPG)** and **subtitles (SRT)** alongside.
- Download up to **10 videos in parallel**.
- **Preview a playlist** to pick exactly which videos to add to the queue.
- **Retry failed videos** with one click.
- **Export queue** or **export only failed videos** to CSV.
- **Cookie** support (paste from a browser extension, or pick a file).
- **Proxy** support (HTTP / HTTPS / SOCKS4 / SOCKS5, with optional auth).
- Skips re-downloading videos already in your local history.
- Available in **6 languages**: English, Tiếng Việt, 中文, Español, العربية, Русский.
- **`yt-dlp` auto-updates** every 24 hours so YouTube changes don't break you.

---

## Quick Start

1. Run `YouTubeDownloader.exe`.
2. Paste a YouTube link into the **Link** box and press **Enter** (or click **Add**).
3. (Optional) Pick a quality, format, or extras from the **Options** card.
4. Click **Start Download**.

That's it. Files end up in the **Save folder** shown in the **Setup** card (default: a `youtube_downloads/` folder next to the app).

---

## Interface Overview

```
┌─────────────────────────────────────────────────────────────────────────┐
│  EN  VI  中文  ES  AR  RU      [Update Library] [Cookies] [Proxy] [♥]   │  ← Top bar
├──────────────────────────────────┬──────────────────────────────────────┤
│  SETUP                           │  QUEUE          [Export] [Errors] [×]│
│  Link: [______________] Add  🔍  │  ┌────────────────────────────────┐ │
│  Save: [______________] 📂        │  │ # │ Title │ Status │ Progress │ │
│                                  │  │ 1 │ ...   │ ...    │ ...      │ │
│  OPTIONS                         │  │ 2 │ ...   │ ...    │ ...      │ │
│  Quality:  [Best ▾]  Limit: [0]  │  └────────────────────────────────┘ │
│  Type:     [Regular ▾] Concurrent│                                      │
│  [Media] [Audio] [Thumb] [Subs]  │  LOG                                 │
│                                  │  [09:00:01] ...                      │
│  CONTROLS                        │  [09:00:02] ...                      │
│  Status: Ready                   │                                      │
│  ████████████░░░░░░░░░ 60%       │                                      │
│  [Start] [Stop] [Retry Failed]   │                                      │
└──────────────────────────────────┴──────────────────────────────────────┘
```

The window has **two main columns**: the **left column** is for setup, options, and controls; the **right column** shows your queue and the log.

---

## Detailed Usage

### 1. Adding videos to the queue

You can add a queue item by:

- Pasting a **single video link** (`https://www.youtube.com/watch?v=...`) and pressing **Enter** or clicking **Add**.
- Pasting a **playlist link** (`...?list=...`) — the app expands it into individual videos.
- Pasting a **channel link** (`youtube.com/@channelname`) — the app fetches both regular videos **and** Shorts and caches them.
- Clicking **Preview** (🔍) to open a dialog that lists every video in a playlist/channel; tick the ones you want and click OK.

Once added, items appear in the **Queue** table on the right with status `⏳ Pending`.

> **Tip — playlists and channels are cached.** When you paste a channel link, the app downloads the list of videos once and saves it locally. You can then change **Limit** or switch between **Regular / Shorts** and the queue updates instantly without re-fetching.

### 2. Choosing what to download (Options card)

| Toggle | What it does |
|---|---|
| **Download Media** (on by default) | Save the video as MP4 |
| **Audio Only** | Save the audio only as MP3, 192 kbps |
| **Thumbnail** | Save the cover image as JPG |
| **Subtitles** | Save subtitles as SRT (auto-picks the best language available) |

**Download Media** and **Audio Only** are mutually exclusive — turning one on turns the other off.

If you turn **both** off, the app skips the main download but still saves Thumbnail/Subtitles if those are on. This is useful if you only want artwork or captions.

| Other option | Range / Values | Notes |
|---|---|---|
| **Quality** | Best, 1080p, 720p, 480p | Disabled in Audio mode |
| **Limit** | 0–9999 | `0` = no limit. Only applies to playlists/channels. |
| **Video Type** | Regular / Shorts | Only applies to playlists/channels. |
| **Concurrent** | 1–10 | How many videos to download at the same time |

### 3. Starting and monitoring

Click **Start Download**. The status bar shows overall progress; each row in the queue has its own progress bar. Click **Stop** at any time — a confirmation dialog appears, then all running downloads are cancelled.

When everything finishes, the status switches to **All complete**.

### 4. Retry failed videos

If some rows show `❌ Error`, click **Retry Failed**. The queue is rebuilt from only the failed rows and download starts automatically. Successful videos are kept out of the retry to avoid re-downloading.

### 5. Export queue or errors

- **Export** saves the entire queue (Title, URL, Status) to a `.csv` file.
- **Export Errors** saves only the failed rows. Useful for sharing a problem list, or saving them to retry later.

Both files use UTF-8 with BOM so they open correctly in Excel.

### 6. Preview a playlist or channel before adding

1. Paste a playlist or channel link into **Link**.
2. Click **Preview**. A new window opens listing every video.
3. Tick the videos you want.
4. Click **OK**. They're added to the queue.

---

## Cookies (for age-restricted or sign-in-required videos)

Click **Cookies** in the top bar to open the Cookie dialog.

You have two ways to provide cookies:

**A — Paste from a browser extension** (recommended)
1. Install the [Cookie-Exporter](https://chromewebstore.google.com/detail/cookie-exporter/fhnmmidekmgocpjdceeffppcodigillk) extension in Chrome/Edge.
2. Visit youtube.com while signed in, click the extension, copy the JSON.
3. Paste into the **content** box, tick **Enable**, click **Save**.

**B — Pick a file**
1. Click **Browse**, pick a `cookies.txt` (Netscape format) or a `.json` file.
2. Tick **Enable**, click **Save**.

The app auto-detects JSON and converts to Netscape format internally.

> **When you actually need cookies:** age-restricted videos, members-only content, "Sign in to confirm you're not a bot" errors, or downloading from your private playlists.

---

## Proxy (optional)

Click **Proxy** in the top bar to open the Proxy dialog.

| Field | Notes |
|---|---|
| **Protocol** | `http`, `https`, `socks4`, or `socks5` |
| **IP / Host** | e.g., `127.0.0.1` or `myproxy.example.com` |
| **Port** | Required |
| **Username / Password** | Optional, only if your proxy needs auth |

Click **Check Proxy** to verify connectivity before saving — it tries to reach Google through your proxy and shows ✅ or ❌.

---

## Where files are saved

### Downloaded media
By default, files go to a `youtube_downloads/` folder next to `YouTubeDownloader.exe`. Change it with **Browse** in the Setup card.

Filenames follow these templates:

- **Video:** `Uploader - Title [VideoID] [720p].mp4`
- **Audio:** `Uploader - Title [VideoID].mp3`
- **Thumbnail / Subtitle:** same prefix, with `.jpg` or `.<lang>.srt`

The video ID in brackets means **two videos with the same title won't overwrite each other**.

### App data and configuration
The app keeps internal data in:

```
%APPDATA%\YouTubeDownloaderStandalone\
├── settings.json          ← language, proxy, cookie content, last yt-dlp check
├── cookies.txt            ← cookies in Netscape format
├── download_history.txt   ← IDs of videos downloaded in the current session (auto-cleared on app start)
├── yt-dlp.exe             ← auto-downloaded engine
├── temp\                  ← temporary files during download
└── temp_cache\            ← cached playlist/channel listings
```

> **Avoiding duplicate downloads in the same session:** the `download_history.txt` file remembers everything downloaded since the app was opened. If you accidentally add the same video twice in one session, the second copy is skipped. The file is **automatically deleted every time you launch the app**, so closing and reopening always gives you a clean slate — videos can be re-downloaded freely.

---

## Update yt-dlp manually

The app checks for a new `yt-dlp` once every 24 hours when you start it. If you suspect the engine is out of date (e.g., new YouTube changes), click **Update Library** in the top bar to force-refresh immediately.

---

## Reading the log

Each line is timestamped `[HH:MM:SS]`. The log filters out routine yt-dlp progress chatter and keeps only useful info:

- `--- Processing video: ...` — a worker started a video.
- `✅ Download successful: ...` — done.
- `[ERROR] ...` — something went wrong; the message contains the reason.
- `[Task X] attempt 1/3 failed: ...` — yt-dlp returned an error; the app will retry up to 3 times with growing delays (5s, 10s, 15s).

---

## Troubleshooting

**"Sign in to confirm you're not a bot" / "Video unavailable"**
→ Add cookies from a signed-in browser session (see Cookies above).

**HTTP 429 / Too Many Requests**
→ YouTube is rate-limiting your IP. Wait 10–30 minutes, or use a proxy.

**"Requested format is not available"**
→ Click **Update Library** to refresh `yt-dlp`. If it persists, try a different **Quality** setting.

**Log shows "⏭️ SKIPPED: video already in download_history.txt"**
→ Within the current session you've already downloaded this video, so it was skipped. Close and reopen the app — the history resets automatically and the download will run again.

**Nothing happens when I click Start**
→ Make sure the queue isn't empty and the **Save folder** path is valid (the **Browse** button helps).

**Stuck on "Checking and updating download tool…"**
→ Either your internet is blocked from `github.com`, or `%APPDATA%\YouTubeDownloaderStandalone\` is read-only. Try running once as administrator to set permissions.

---

## Languages

Click any of the language buttons (EN, VI, 中文, ES, AR, RU) in the top bar. Your choice is saved to `settings.json` and will be remembered next time. The first time you run the app, it tries to detect your system language; if your system isn't one of the 6 supported, it falls back to English.

---

## Support / Donate

The **♥ Donate** button in the top bar opens a window with bank/account info. If you find this tool useful, a small contribution helps keep the project alive. Thank you!

Author website: [duckmartians.info](https://duckmartians.info)

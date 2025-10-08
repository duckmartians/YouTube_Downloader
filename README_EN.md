# YouTube Downloader v4.5 (by Duck Martians)

![Application Screenshot](https://i.imgur.com/your-screenshot-link-here.png) A desktop application with a graphical user interface (GUI) built with Python and Tkinter for downloading YouTube videos, playlists, and entire channels. This application leverages the powerful `yt-dlp` library, is multi-threaded to prevent UI freezing, and provides a wide range of flexible download options.

## ✨ Key Features

- **Versatile Downloads**: Supports downloading single videos, playlists, and all videos from a YouTube channel.
- **Playlist Preview**: Preview the list of videos in a playlist or channel and select specific videos to download.
- **Quality Selection**: Choose video quality from 720p HD up to 4K, or select "Best Available" to automatically get the highest resolution.
- **Audio-Only Mode**: Option to download only the audio track and automatically convert it to MP3 format.
- **Side File Downloads**: Easily download video thumbnails (PNG) and subtitles (SRT).
- **Multi-language UI**: Supports both English and Vietnamese, switchable directly within the app.
- **Download Control**: Pause, resume, and stop the download process at any time.
- **Integrated Updater**: Includes a built-in "Update Library" button to upgrade `yt-dlp` to the latest version directly from the app, helping to fix download issues caused by YouTube's changes.
- **Multi-threading**: The download process runs in a separate thread to ensure the user interface remains responsive and never freezes.

## 🛠️ System Requirements

- **OS**: Windows 7/8/10/11.
- **Python**: Version 3.6 or higher.
- **ffmpeg**: Included in the `app` directory for processing and merging video/audio files.

## 🚀 Installation and Usage

Follow these simple steps to get started.

**Step 1: Installation (Do this only once)**

- On your first use, you need to run the `setup.bat` file.
- This will create a virtual environment (`venv`) and install all the required Python libraries (`yt-dlp`).

**Step 2: Running the Application**

- After the installation is complete, double-click on the `run.vbs` file to launch the application.
- This script runs the program silently without opening a black command-line (CMD) window.

**Step 3: How to Use**

1.  **Paste Link**: Paste a YouTube video, playlist, or channel URL into the input box.
2.  **Add to Queue**: Click the "Add" button to add the URL to the queue below. You can add multiple URLs.
3.  **Choose Save Directory**: Click "Browse..." to select where you want to save the downloaded files.
4.  **Customize Options**: Select the video quality, download limit (for channels/playlists), and other options (thumbnail, subtitles, audio-only).
5.  **Start**: Click the "Start" button to begin the download process.

## 🤝 Contributing

Contributions are welcome! If you have ideas for improving the application, feel free to open an "Issue" or submit a "Pull Request".

## 📄 License

This project is licensed under the [MIT License](LICENSE).
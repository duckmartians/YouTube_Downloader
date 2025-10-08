# YouTube Downloader v4.5 (by Duck Martians)

A desktop application with a graphical user interface (GUI) built with Python and Tkinter for downloading YouTube videos, playlists, and entire channels. This application leverages the powerful `yt-dlp` library, is multi-threaded to prevent UI freezing, and provides a wide range of flexible download options.

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

***

# YouTube Downloader v4.5 (by Duck Martians)

Một ứng dụng máy tính với giao diện đồ họa (GUI) được xây dựng bằng Python và Tkinter để tải video, playlist, và toàn bộ kênh từ YouTube. Ứng dụng này sử dụng thư viện `yt-dlp` mạnh mẽ, hỗ trợ đa luồng để không làm treo giao diện, và cung cấp nhiều tùy chọn tải xuống linh hoạt.

## ✨ Tính Năng Nổi Bật

- **Tải đa dạng**: Hỗ trợ tải video đơn lẻ, playlist, và toàn bộ video từ một kênh YouTube.
- **Xem trước Playlist**: Xem danh sách video trong một playlist hoặc kênh và chọn video cụ thể để tải.
- **Tùy chọn chất lượng**: Lựa chọn chất lượng video từ 720p HD đến 4K, hoặc chọn "Tốt nhất" để tự động lấy chất lượng cao nhất.
- **Chỉ tải Âm thanh**: Tùy chọn chỉ tải về file âm thanh và tự động chuyển đổi sang định dạng MP3.
- **Tải file phụ**: Dễ dàng tải ảnh thumbnail (PNG) và phụ đề (SRT) của video.
- **Giao diện đa ngôn ngữ**: Hỗ trợ Tiếng Việt và Tiếng Anh, dễ dàng chuyển đổi trực tiếp trên ứng dụng.
- **Điều khiển quá trình tải**: Tạm dừng (Pause), tiếp tục (Resume), và kết thúc (Stop) quá trình tải bất kỳ lúc nào.
- **Cập nhật tích hợp**: Tích hợp nút "Cập nhật thư viện" để nâng cấp `yt-dlp` lên phiên bản mới nhất ngay trong ứng dụng, giúp sửa lỗi tải video do YouTube thay đổi.
- **Đa luồng**: Quá trình tải xuống chạy trên một luồng riêng biệt để đảm bảo giao diện người dùng luôn mượt mà và không bị treo.

## 🛠️ Yêu Cầu Hệ Thống

- **Hệ điều hành**: Windows 7/8/10/11.
- **Python**: Phiên bản 3.6 trở lên.
- **ffmpeg**: Đã được đính kèm trong thư mục `app` để xử lý và ghép file video/âm thanh.

## 🚀 Cài Đặt và Sử Dụng

Làm theo các bước đơn giản dưới đây để bắt đầu.

**Bước 1: Cài đặt (Chỉ làm 1 lần duy nhất)**

- Lần đầu tiên sử dụng, bạn cần chạy file `setup.bat`.
- Thao tác này sẽ tạo một môi trường ảo (`venv`) và cài đặt tất cả các thư viện Python cần thiết (`yt-dlp`).

**Bước 2: Chạy Ứng Dụng**

- Sau khi cài đặt xong, hãy nhấp đúp chuột vào file `run.vbs` để khởi động ứng dụng.
- File này sẽ chạy chương trình mà không hiện cửa sổ dòng lệnh (CMD) màu đen.

**Bước 3: Sử dụng**

1.  **Dán Link**: Dán link video, playlist, hoặc kênh YouTube vào ô nhập liệu.
2.  **Thêm vào hàng đợi**: Nhấn nút "Thêm" để đưa link vào hàng đợi bên dưới. Bạn có thể thêm nhiều link.
3.  **Chọn thư mục lưu**: Nhấn "Chọn..." để chọn nơi bạn muốn lưu file tải về.
4.  **Tùy chỉnh**: Chọn chất lượng video, giới hạn số lượng (nếu là kênh/playlist), và các tùy chọn tải kèm (thumbnail, phụ đề, audio).
5.  **Bắt đầu**: Nhấn nút "Bắt đầu" để tiến hành tải xuống.

## 🤝 Đóng Góp

Mọi ý kiến đóng góp đều được hoan nghênh! Nếu bạn có ý tưởng để cải thiện ứng dụng, vui lòng tạo một "Issue" hoặc một "Pull Request".

## 📄 Giấy Phép

Dự án này được cấp phép theo [Giấy phép MIT](LICENSE).

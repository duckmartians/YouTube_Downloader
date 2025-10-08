# YouTube Downloader v4.5 (by Duck Martians)

![Giao diện ứng dụng](https://i.imgur.com/your-screenshot-link-here.png) Một ứng dụng máy tính với giao diện đồ họa (GUI) được xây dựng bằng Python và Tkinter để tải video, playlist, và toàn bộ kênh từ YouTube. Ứng dụng này sử dụng thư viện `yt-dlp` mạnh mẽ, hỗ trợ đa luồng để không làm treo giao diện, và cung cấp nhiều tùy chọn tải xuống linh hoạt.

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
# YouTube Downloader Pro

**[English](README.md) · [Tiếng Việt](README_vi.md) · [中文](README_zh.md) · [Español](README_es.md) · [العربية](README_ar.md) · [Русский](README_ru.md)**

Ứng dụng desktop thân thiện để tải video YouTube, playlist, kênh và Shorts — kèm tách nhạc, ảnh thumbnail, phụ đề và tải song song nhiều video. Đã tích hợp sẵn `ffmpeg` và JavaScript runtime, **bạn không cần cài thêm gì cả**.

---

## Tính năng nổi bật

- Tải video lẻ, cả playlist, cả kênh, hoặc bộ Shorts của 1 kênh.
- Lưu thành **video MP4** (Tốt nhất / 1080p / 720p / 480p) hoặc **audio MP3** (192 kbps).
- Tuỳ chọn lưu kèm **ảnh thumbnail (JPG)** và **phụ đề (SRT)**.
- Tải đồng thời tối đa **10 video một lúc**.
- **Xem trước playlist** để chọn đúng video cần tải.
- **Thử lại video lỗi** chỉ với 1 cú click.
- **Xuất danh sách hàng đợi** hoặc **chỉ video lỗi** ra file CSV.
- Hỗ trợ **Cookie** (paste từ extension trình duyệt, hoặc chọn file).
- Hỗ trợ **Proxy** (HTTP / HTTPS / SOCKS4 / SOCKS5, kèm tài khoản nếu cần).
- Tự động bỏ qua những video đã tải trước đó.
- Hỗ trợ **6 ngôn ngữ**: English, Tiếng Việt, 中文, Español, العربية, Русский.
- **`yt-dlp` tự cập nhật** mỗi 24 giờ để theo kịp thay đổi từ YouTube.

---

## Bắt đầu nhanh

1. Chạy file `YouTubeDownloader.exe`.
2. Dán link YouTube vào ô **Link**, bấm **Enter** (hoặc nút **Thêm**).
3. (Tuỳ chọn) Chỉnh chất lượng, định dạng hoặc các tùy chọn phụ ở thẻ **Tùy chọn**.
4. Bấm **Bắt đầu Tải Xuống**.

Xong! File sẽ được lưu vào **Thư mục lưu** ghi ở thẻ **Thiết lập** (mặc định là folder `youtube_downloads/` cạnh app).

---

## Tổng quan giao diện

```
┌─────────────────────────────────────────────────────────────────────────┐
│  EN  VI  中文  ES  AR  RU      [Cập nhật] [Cookie] [Proxy] [♥]          │  ← Thanh trên cùng
├──────────────────────────────────┬──────────────────────────────────────┤
│  THIẾT LẬP                       │  HÀNG ĐỢI    [Xuất] [Lỗi] [Xoá hết]  │
│  Link: [______________] Thêm 🔍  │  ┌────────────────────────────────┐ │
│  Lưu:  [______________] 📂        │  │ # │ Tiêu đề │ Trạng │ Tiến độ│ │
│                                  │  │ 1 │ ...     │ ...   │ ...    │ │
│  TÙY CHỌN                        │  │ 2 │ ...     │ ...   │ ...    │ │
│  Chất lượng: [Tốt nhất ▾]        │  └────────────────────────────────┘ │
│  Loại: [Video thường ▾] Số lượng │                                      │
│  [Media] [Audio] [Thumb] [Sub]   │  NHẬT KÝ                             │
│                                  │  [09:00:01] ...                      │
│  ĐIỀU KHIỂN                      │  [09:00:02] ...                      │
│  Sẵn sàng                        │                                      │
│  ████████████░░░░░░░░░ 60%       │                                      │
│  [Bắt đầu] [Dừng] [Thử lại lỗi]  │                                      │
└──────────────────────────────────┴──────────────────────────────────────┘
```

Cửa sổ chia thành **2 cột chính**: **cột trái** dùng để thiết lập, chọn tùy chọn và điều khiển; **cột phải** hiển thị hàng đợi và nhật ký hoạt động.

---

## Hướng dẫn chi tiết

### 1. Thêm video vào hàng đợi

Có 4 cách thêm video:

- Dán link **video lẻ** (`https://www.youtube.com/watch?v=...`) rồi bấm **Enter** hoặc **Thêm**.
- Dán link **playlist** (`...?list=...`) — app sẽ tự mở rộng thành các video riêng lẻ.
- Dán link **kênh** (`youtube.com/@tenkenh`) — app sẽ lấy cả video thường **và** Shorts của kênh đó.
- Bấm **Xem trước** (🔍) để mở dialog liệt kê toàn bộ video trong playlist/kênh; tích chọn video bạn muốn rồi bấm OK.

Sau khi thêm, các video sẽ hiện trong bảng **Hàng đợi** bên phải với trạng thái `⏳ Chờ`.

> **Mẹo — playlist và kênh được cache lại.** Khi bạn dán link kênh, app tải danh sách video về 1 lần và lưu vào ổ. Khi đó bạn có thể đổi **Số lượng** hoặc chuyển giữa **Video thường / Shorts** thì hàng đợi sẽ tự cập nhật ngay mà không cần fetch lại.

### 2. Chọn nội dung muốn tải (thẻ Tùy chọn)

| Nút bật/tắt | Tác dụng |
|---|---|
| **Tải Media** (mặc định ON) | Lưu video dạng MP4 |
| **Chỉ Audio** | Chỉ lưu phần tiếng dạng MP3, 192 kbps |
| **Thumbnail** | Lưu ảnh bìa dạng JPG |
| **Phụ đề** | Lưu phụ đề dạng SRT (tự chọn ngôn ngữ phù hợp nhất) |

**Tải Media** và **Chỉ Audio** loại trừ lẫn nhau — bật cái này thì cái kia tự tắt.

Nếu bạn **tắt cả 2**, app sẽ bỏ qua tải video/audio nhưng vẫn lưu Thumbnail/Phụ đề nếu được bật. Hữu ích khi bạn chỉ cần ảnh bìa hoặc phụ đề.

| Tùy chọn khác | Phạm vi | Ghi chú |
|---|---|---|
| **Chất lượng** | Tốt nhất / 1080p / 720p / 480p | Bị khoá khi ở chế độ Audio |
| **Số lượng** | 0–9999 | `0` = không giới hạn. Chỉ áp dụng cho playlist/kênh. |
| **Loại Video** | Video thường / Shorts | Chỉ áp dụng cho playlist/kênh. |
| **Tải đồng thời** | 1–10 | Số video tải cùng lúc |

### 3. Bắt đầu và theo dõi

Bấm **Bắt đầu Tải Xuống**. Thanh trạng thái sẽ hiển thị tổng tiến độ; mỗi dòng trong hàng đợi có thanh tiến độ riêng. Bấm **Dừng** bất cứ lúc nào — sẽ có hộp thoại xác nhận, sau đó toàn bộ tác vụ sẽ huỷ.

Khi xong hết, trạng thái chuyển thành **Hoàn tất**.

### 4. Thử lại video lỗi

Nếu vài dòng hiện `❌ Lỗi`, bấm **Thử lại lỗi**. Hàng đợi sẽ được làm mới chỉ chứa các video lỗi và bắt đầu tải lại tự động. Các video đã thành công sẽ không bị tải lại.

### 5. Xuất hàng đợi hoặc danh sách lỗi

- **Xuất**: lưu toàn bộ hàng đợi (Tiêu đề, URL, Trạng thái) ra file `.csv`.
- **Xuất Lỗi**: chỉ lưu các dòng lỗi. Hữu ích để chia sẻ danh sách lỗi cho người khác, hoặc lưu lại để sau retry.

Cả 2 file dùng UTF-8 BOM nên mở bằng Excel sẽ hiện đúng tiếng Việt.

### 6. Xem trước playlist/kênh trước khi thêm

1. Dán link playlist hoặc kênh vào ô **Link**.
2. Bấm **Xem trước**. Một cửa sổ mới sẽ liệt kê toàn bộ video.
3. Tích chọn các video cần tải.
4. Bấm **OK**. Chúng sẽ được thêm vào hàng đợi.

---

## Cookie (cho video giới hạn tuổi hoặc cần đăng nhập)

Bấm **Cookie** ở thanh trên cùng để mở dialog Cookie.

Có 2 cách cung cấp cookie:

**A — Paste từ extension trình duyệt** (khuyến nghị)
1. Cài extension [Cookie-Exporter](https://chromewebstore.google.com/detail/cookie-exporter/fhnmmidekmgocpjdceeffppcodigillk) cho Chrome/Edge.
2. Vào youtube.com khi đã đăng nhập, bấm icon extension, copy chuỗi JSON.
3. Dán vào ô **nội dung**, tích **Bật**, bấm **Lưu**.

**B — Chọn file**
1. Bấm **Chọn file**, chọn `cookies.txt` (định dạng Netscape) hoặc file `.json`.
2. Tích **Bật**, bấm **Lưu**.

App tự nhận diện JSON và chuyển sang Netscape ở bên trong.

> **Khi nào thực sự cần cookie:** video giới hạn độ tuổi, nội dung dành cho thành viên, lỗi "Sign in to confirm you're not a bot", hoặc tải từ playlist riêng tư của bạn.

---

## Proxy (tuỳ chọn)

Bấm **Proxy** ở thanh trên cùng để mở dialog Proxy.

| Trường | Ghi chú |
|---|---|
| **Giao thức** | `http`, `https`, `socks4`, hoặc `socks5` |
| **IP / Host** | Ví dụ: `127.0.0.1` hoặc `myproxy.example.com` |
| **Port** | Bắt buộc |
| **Username / Password** | Tuỳ chọn, chỉ điền khi proxy yêu cầu xác thực |

Bấm **Kiểm tra Proxy** để verify trước khi lưu — nó sẽ thử kết nối Google qua proxy của bạn và hiện ✅ hoặc ❌.

---

## Nơi lưu file

### File tải về
Mặc định, file lưu vào folder `youtube_downloads/` cạnh `YouTubeDownloader.exe`. Đổi qua nút **Chọn** trong thẻ Thiết lập.

Tên file theo template:

- **Video:** `Tác giả - Tên video [VideoID] [720p].mp4`
- **Audio:** `Tác giả - Tên video [VideoID].mp3`
- **Thumbnail / Phụ đề:** cùng tên với phần đuôi `.jpg` hoặc `.<lang>.srt`

Có VideoID trong dấu ngoặc vuông nên **2 video cùng tên cũng không bị ghi đè lên nhau**.

### Dữ liệu app & cấu hình
App giữ dữ liệu nội bộ tại:

```
%APPDATA%\YouTubeDownloaderStandalone\
├── settings.json          ← ngôn ngữ, proxy, nội dung cookie, lần check yt-dlp cuối
├── cookies.txt            ← cookies định dạng Netscape
├── download_history.txt   ← ID các video tải trong phiên hiện tại (tự xoá khi mở app)
├── yt-dlp.exe             ← engine tự tải về
├── temp\                  ← file tạm khi đang tải
└── temp_cache\            ← cache danh sách playlist/kênh đã mở rộng
```

> **Tránh tải trùng trong cùng 1 phiên:** file `download_history.txt` ghi nhớ tất cả video đã tải kể từ khi mở app. Nếu bạn lỡ add cùng 1 video 2 lần trong cùng phiên, lần 2 sẽ bị skip. File này **tự động bị xoá mỗi khi bạn khởi động app**, nên chỉ cần đóng-mở lại app là history trống — tải lại video thoải mái.

---

## Cập nhật yt-dlp thủ công

App tự kiểm tra `yt-dlp` mới mỗi 24 giờ khi khởi động. Nếu nghi ngờ engine cũ (ví dụ YouTube vừa thay đổi), bấm **Cập nhật thư viện** trên thanh trên cùng để tải bản mới ngay lập tức.

---

## Đọc nhật ký (log)

Mỗi dòng có timestamp `[HH:MM:SS]`. Log đã lọc bỏ những dòng tiến trình thông thường của yt-dlp, chỉ giữ thông tin hữu ích:

- `--- Bắt đầu xử lý video: ...` — 1 worker đã bắt đầu xử lý 1 video.
- `✅ Tải xuống thành công: ...` — xong rồi.
- `[LỖI] ...` — có lỗi xảy ra; chi tiết kèm sau.
- `[Tác vụ X] attempt 1/3 failed: ...` — yt-dlp báo lỗi; app sẽ thử lại tối đa 3 lần với khoảng nghỉ tăng dần (5s, 10s, 15s).

---

## Xử lý sự cố

**"Sign in to confirm you're not a bot" / "Video unavailable"**
→ Cấu hình cookie từ trình duyệt đã đăng nhập (xem mục Cookie ở trên).

**HTTP 429 / Too Many Requests**
→ YouTube đang giới hạn tốc độ IP của bạn. Đợi 10–30 phút, hoặc dùng proxy.

**"Requested format is not available"**
→ Bấm **Cập nhật thư viện** để làm mới `yt-dlp`. Nếu vẫn lỗi, thử đổi **Chất lượng** khác.

**Log hiện "⏭️ BỎ QUA: video đã có trong download_history.txt"**
→ Trong phiên hiện tại bạn đã tải video này rồi nên nó bị skip. Đóng và mở lại app — history sẽ tự reset và lần tải sau sẽ chạy lại.

**Bấm Bắt đầu mà không có gì xảy ra**
→ Đảm bảo hàng đợi không trống và đường dẫn **Thư mục lưu** hợp lệ (dùng nút **Chọn** cho an toàn).

**Kẹt ở "Đang kiểm tra và cập nhật công cụ tải xuống…"**
→ Internet đang chặn `github.com`, hoặc folder `%APPDATA%\YouTubeDownloaderStandalone\` bị chặn ghi. Thử chạy app dưới quyền admin 1 lần để fix permission.

---

## Ngôn ngữ

Bấm vào bất kỳ nút ngôn ngữ nào (EN, VI, 中文, ES, AR, RU) ở thanh trên cùng. Lựa chọn của bạn sẽ được lưu vào `settings.json` và nhớ cho lần sau. Lần đầu chạy, app sẽ thử nhận diện ngôn ngữ hệ thống; nếu hệ thống không nằm trong 6 ngôn ngữ hỗ trợ, app sẽ dùng English.

---

## Hỗ trợ / Ủng hộ

Nút **♥ Donate** ở thanh trên cùng mở 1 cửa sổ chứa thông tin ngân hàng. Nếu bạn thấy tool hữu ích, một chút ủng hộ sẽ giúp dự án sống tiếp. Cảm ơn bạn!

Website tác giả: [duckmartians.info](https://duckmartians.info)

# WebsiteNauAn – Website Chia Sẻ Công Thức Nấu Ăn

## 1. Giới thiệu dự án

**WebsiteNauAn** là website chia sẻ công thức nấu ăn được xây dựng nhằm hỗ trợ người dùng tìm kiếm món ăn, tham khảo nguyên liệu và thực hiện các bước chế biến. Hệ thống giúp người dùng khám phá những món ăn mới và lưu lại các công thức yêu thích.

Dự án được thực hiện trong khuôn khổ học tập, sử dụng công nghệ ASP.NET Core MVC và cơ sở dữ liệu SQL Server.

## 2. Thông tin sinh viên

- **Họ và tên:** Nguyễn Thạch Toàn Quốc
- **Email:** nt.toanquoc@gmail.com
- **Số điện thoại:** 0386779008
- **Trường:** Trường Đại học Trà Vinh
- **Ngành học:** Công nghệ thông tin

## 3. Công nghệ sử dụng

- **Ngôn ngữ lập trình:** C#
- **Framework:** ASP.NET Core MVC
- **Nền tảng:** .NET 10
- **Cơ sở dữ liệu:** Microsoft SQL Server
- **ORM:** Entity Framework Core
- **Công cụ phát triển:** Visual Studio
- **Quản lý mã nguồn:** Git và GitHub

## 4. Các chức năng chính

- Hiển thị danh sách món ăn.
- Xem thông tin chi tiết của từng món ăn.
- Hiển thị nguyên liệu và số lượng cần thiết.
- Hiển thị các bước thực hiện món ăn.
- Đánh giá món ăn.
- Bình luận về công thức nấu ăn.
- Thêm hoặc xóa món ăn khỏi danh sách yêu thích.
- Lưu trữ và quản lý dữ liệu thông qua SQL Server.

*Lưu ý: Các chức năng cần được kiểm thử đầy đủ trước khi xác nhận website đã hoàn thiện.*

## 5. Cấu trúc thư mục dự án

```text
ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU/
│
├── README.md
│
├── progress-report/
│   └── Báo cáo tiến độ thực hiện dự án
│
├── setup/
│   └── database/
│       └── database.sql
│
├── src/
│   └── WebsiteNauAn/
│       ├── Controllers/
│       ├── Data/
│       ├── Models/
│       ├── Views/
│       ├── wwwroot/
│       ├── Program.cs
│       ├── appsettings.json
│       └── WebsiteNauAn.csproj
│
└── thesis/
    ├── doc/
    ├── pdf/
    ├── html/
    └── abs/
```

## 6. Hướng dẫn cài đặt và chạy chương trình

### Bước 1: Chuẩn bị môi trường

Cài đặt các công cụ sau:

- Visual Studio có hỗ trợ ASP.NET và web development.
- .NET 10 SDK.
- Microsoft SQL Server.
- SQL Server Management Studio (SSMS).

### Bước 2: Tạo cơ sở dữ liệu

1. Mở SQL Server Management Studio.
2. Kết nối đến SQL Server.
3. Mở file `setup/database/database.sql`.
4. Kiểm tra nội dung script, sau đó thực thi để tạo cơ sở dữ liệu và dữ liệu mẫu.

Tên cơ sở dữ liệu sử dụng trong dự án: `WebsiteNauAn`.

### Bước 3: Cấu hình kết nối SQL Server

Mở file `src/WebsiteNauAn/appsettings.json` và kiểm tra chuỗi kết nối trong mục `ConnectionStrings`.

Ví dụ:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=127.0.0.1;Database=WebsiteNauAn;Trusted_Connection=True;TrustServerCertificate=True;"
  }
}
```

**Lưu ý:** Nếu SQL Server trên máy tính sử dụng tên máy chủ hoặc instance khác, hãy thay giá trị `Server` cho phù hợp. Không đưa mật khẩu hoặc thông tin kết nối nhạy cảm lên repository công khai.

### Bước 4: Mở và chạy dự án

1. Mở Visual Studio.
2. Mở solution của dự án `WebsiteNauAn`.
3. Kiểm tra kết nối cơ sở dữ liệu.
4. Chọn dự án `WebsiteNauAn` làm Startup Project.
5. Nhấn `F5` hoặc `Ctrl + F5` để chạy website.

Địa chỉ chạy thử hiện tại trên máy phát triển có thể là:

`https://localhost:7148/`

Địa chỉ này có thể thay đổi tùy cấu hình chạy của Visual Studio.

## 7. Kiểm thử chương trình

Sau khi chạy website, tiến hành kiểm tra:

1. Website có khởi động thành công hay không.
2. Ứng dụng có kết nối được đến SQL Server hay không.
3. Danh sách món ăn có hiển thị đúng dữ liệu hay không.
4. Trang chi tiết có hiển thị nguyên liệu và các bước nấu ăn hay không.
5. Các chức năng đánh giá, bình luận và yêu thích có hoạt động đúng hay không.

Ghi lại kết quả kiểm thử và bổ sung ảnh minh chứng vào báo cáo dự án.

## 8. Tác giả và liên hệ

**Nguyễn Thạch Toàn Quốc**

- Email: nt.toanquoc@gmail.com
- Điện thoại: 0386779008

Dự án được thực hiện với mục đích học tập và thực hành phát triển ứng dụng web bằng ASP.NET Core MVC.

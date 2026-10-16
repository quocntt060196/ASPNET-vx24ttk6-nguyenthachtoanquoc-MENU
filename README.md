# WebsiteNauAn – Website chia sẻ công thức nấu ăn

## 1. Giới thiệu đề tài

WebsiteNauAn là website được xây dựng bằng ASP.NET Core MVC, hỗ trợ phát triển hệ thống chia sẻ công thức nấu ăn.

Dự án sử dụng SQL Server để lưu trữ dữ liệu. Cơ sở dữ liệu gồm các bảng quản lý người dùng, danh mục món ăn, công thức nấu ăn, nguyên liệu, các bước chế biến, bình luận, món ăn yêu thích và đánh giá.

## 2. Công nghệ sử dụng

- Ngôn ngữ lập trình: C#.
- Framework: ASP.NET Core MVC.
- Cơ sở dữ liệu: Microsoft SQL Server.
- Công cụ phát triển: Visual Studio.
- Công cụ quản lý cơ sở dữ liệu: SQL Server Management Studio (SSMS).

## 3. Cấu trúc thư mục

```text
ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU/
├── README.md
├── setup/
│   └── database/
│       └── database.sql
└── scr/
    └── WebsiteNauAn/
        ├── Controllers/
        ├── Data/
        ├── Models/
        ├── Views/
        ├── wwwroot/
        ├── Program.cs
        ├── appsettings.json
        └── WebsiteNauAn.csproj
```

## 4. Yêu cầu cài đặt

Trước khi chạy dự án, cần chuẩn bị:

- Visual Studio có hỗ trợ ASP.NET và phát triển web.
- .NET SDK tương thích với phiên bản được khai báo trong file `WebsiteNauAn.csproj`.
- Microsoft SQL Server.
- SQL Server Management Studio (SSMS).

## 5. Lấy mã nguồn dự án

Clone repository từ GitHub hoặc tải mã nguồn về máy tính:

https://github.com/quocntt060196/ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU

Sau khi tải về, mở thư mục `scr/WebsiteNauAn` để tìm file dự án `WebsiteNauAn.csproj`.

## 6. Tạo cơ sở dữ liệu

1. Mở SQL Server Management Studio (SSMS).
2. Kết nối đến SQL Server đang sử dụng.
3. Chọn **File → Open → File**.
4. Mở file `setup/database/database.sql` trong repository.
5. Kiểm tra máy chủ SQL Server đã được kết nối đúng.
6. Nhấn **Execute** để chạy các lệnh SQL.
7. Làm mới mục **Databases** và kiểm tra cơ sở dữ liệu `WebsiteNauAn` cùng các bảng đã được tạo.

Lưu ý: Chỉ chạy script tạo cơ sở dữ liệu khi chưa có cơ sở dữ liệu tương ứng, hoặc sau khi đã kiểm tra và sao lưu dữ liệu cần giữ lại.

## 7. Cấu hình kết nối SQL Server

Mở file `appsettings.json` trong thư mục `scr/WebsiteNauAn`.

Cấu hình connection string theo SQL Server trên máy đang chạy dự án. Ví dụ:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=YOUR_SERVER_NAME;Database=WebsiteNauAn;Trusted_Connection=True;TrustServerCertificate=True;"
  }
}
```

Thay `YOUR_SERVER_NAME` bằng tên máy chủ SQL Server thực tế.

Ví dụ, nếu SSMS hiển thị tên máy chủ là `localhost\\SQLEXPRESS`, hãy sử dụng đúng tên đó trong connection string.

Nếu dự án sử dụng SQL Server Authentication, cần cấu hình phương thức đăng nhập phù hợp. Không đưa mật khẩu thật hoặc thông tin bí mật vào repository công khai.

**Quan trọng:** Tên connection string trong `appsettings.json` phải khớp với tên mà dự án đọc trong `Program.cs` hoặc lớp cấu hình dữ liệu. Nếu dự án đang sử dụng tên khác `DefaultConnection`, hãy giữ nguyên tên đang được sử dụng.

## 8. Chạy website

### Cách 1: Sử dụng Visual Studio

1. Mở file `WebsiteNauAn.csproj` hoặc file solution của dự án.
2. Kiểm tra connection string đã trỏ đến cơ sở dữ liệu đúng.
3. Chọn dự án `WebsiteNauAn` làm Startup Project nếu cần.
4. Nhấn **Build → Build Solution**.
5. Nhấn **Run** hoặc phím `F5` để chạy website.

### Cách 2: Sử dụng Terminal

Mở Terminal tại thư mục chứa `WebsiteNauAn.csproj`, sau đó chạy:

```bash
dotnet restore
dotnet build
dotnet run
```

Khi chương trình khởi động, mở địa chỉ HTTPS hoặc HTTP được hiển thị trong Terminal.

## 9. Kiểm tra hoạt động

Sau khi website khởi động:

- Kiểm tra trang chủ có hiển thị hay không.
- Truy cập trang danh sách công thức nấu ăn nếu chức năng này đã được triển khai.
- Kiểm tra dữ liệu được đọc từ cơ sở dữ liệu SQL Server.
- Kiểm tra cửa sổ Output hoặc Terminal nếu xuất hiện lỗi.

Đường dẫn truy cập cụ thể phụ thuộc vào cấu hình chạy của dự án.

## 10. Lưu ý

- Cần cấu hình SQL Server phù hợp với từng máy tính.
- File `database.sql` chứa các lệnh tạo cơ sở dữ liệu và cấu trúc bảng.
- Cần bổ sung dữ liệu mẫu nếu muốn kiểm thử trên một cơ sở dữ liệu mới.
- Không chia sẻ mật khẩu, tài khoản hoặc thông tin kết nối bí mật trong repository công khai.

## 11. Repository

Mã nguồn dự án:

https://github.com/quocntt060196/ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU


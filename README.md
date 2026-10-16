# WebsiteNauAn – Website chia sẻ công thức nấu ăn

## 1. Giới thiệu đề tài

WebsiteNauAn là website được xây dựng bằng ASP.NET Core MVC và ngôn ngữ C#. Dự án sử dụng Microsoft SQL Server để lưu trữ và quản lý dữ liệu liên quan đến công thức nấu ăn.

Hệ thống cơ sở dữ liệu được thiết kế để quản lý người dùng, danh mục món ăn, công thức nấu ăn, nguyên liệu, các bước chế biến, bình luận, món ăn yêu thích và đánh giá.

## 2. Mục tiêu

- Xây dựng website bằng ASP.NET Core MVC.
- Kết nối và thao tác với cơ sở dữ liệu SQL Server.
- Tổ chức mã nguồn theo mô hình Model – View – Controller.
- Quản lý thông tin công thức nấu ăn và dữ liệu liên quan.
- Cung cấp hướng dẫn cài đặt và chạy dự án.

## 3. Công nghệ sử dụng

- Ngôn ngữ lập trình: C#.
- Framework: ASP.NET Core MVC.
- Truy cập dữ liệu: Entity Framework Core.
- Hệ quản trị cơ sở dữ liệu: Microsoft SQL Server.
- Công cụ quản lý cơ sở dữ liệu: SQL Server Management Studio (SSMS).
- Môi trường phát triển: Visual Studio.
- Quản lý mã nguồn: Git và GitHub.

## 4. Cấu trúc thư mục

```text
ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU/
├── README.md
├── setup/
│   └── database/
│       └── database.sql
├── src/
│   └── WebsiteNauAn/
│       ├── Controllers/
│       ├── Data/
│       ├── Models/
│       ├── Views/
│       ├── wwwroot/
│       ├── Properties/
│       ├── Program.cs
│       ├── appsettings.json
│       ├── WebsiteNauAn.csproj
│       └── WebsiteNauAn.slnx
├── progress-report/
└── thesis/
    ├── doc/
    ├── pdf/
    ├── html/
    └── abs/
```

Lưu ý: Các thư mục `progress-report` và `thesis` cần được bổ sung tài liệu thực tế theo yêu cầu của giảng viên nếu chưa có.

## 5. Yêu cầu cài đặt

Trước khi chạy dự án, cần chuẩn bị:

1. Visual Studio có hỗ trợ phát triển ASP.NET Core.
2. .NET SDK tương thích với phiên bản được khai báo trong `WebsiteNauAn.csproj`.
3. Microsoft SQL Server.
4. SQL Server Management Studio (SSMS).

## 6. Tải mã nguồn

Repository GitHub:

https://github.com/quocntt060196/ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU

Clone repository bằng Git:

```bash
git clone https://github.com/quocntt060196/ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU.git
```

Sau khi tải mã nguồn, mở thư mục `src/WebsiteNauAn` và tìm file `WebsiteNauAn.csproj` để mở dự án bằng Visual Studio.

## 7. Tạo cơ sở dữ liệu SQL Server

File script cơ sở dữ liệu:

`setup/database/database.sql`

Cơ sở dữ liệu có tên `WebsiteNauAn` và gồm 9 bảng:

| STT | Tên bảng | Chức năng |
|---:|---|---|
| 1 | Users | Quản lý người dùng |
| 2 | Categories | Quản lý danh mục món ăn |
| 3 | Recipes | Lưu công thức nấu ăn |
| 4 | Ingredients | Lưu thông tin nguyên liệu |
| 5 | RecipeIngredients | Liên kết công thức với nguyên liệu |
| 6 | Steps | Lưu các bước chế biến |
| 7 | Comments | Lưu bình luận |
| 8 | Favorites | Lưu món ăn yêu thích |
| 9 | Ratings | Lưu điểm đánh giá |

### Các bước tạo cơ sở dữ liệu

1. Mở SQL Server Management Studio (SSMS).
2. Kết nối đến SQL Server đang sử dụng.
3. Chọn **File → Open → File**.
4. Mở file `setup/database/database.sql`.
5. Kiểm tra kết nối đến đúng SQL Server.
6. Nhấn **Execute** để chạy script.
7. Nhấn chuột phải vào **Databases → Refresh**.
8. Kiểm tra cơ sở dữ liệu `WebsiteNauAn` và các bảng.

**Lưu ý:** Script hiện tại sử dụng lệnh `CREATE DATABASE` và `CREATE TABLE`. Chỉ chạy khi cơ sở dữ liệu hoặc các bảng chưa tồn tại, hoặc sau khi đã kiểm tra và sao lưu dữ liệu cần giữ lại. Script tạo cấu trúc bảng nhưng chưa tự thêm dữ liệu mẫu nếu không có lệnh `INSERT INTO`.

## 8. Cấu hình kết nối SQL Server

Mở file:

`src/WebsiteNauAn/appsettings.json`

Cấu hình hiện tại:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=127.0.0.1;Database=WebsiteNauAn;Trusted_Connection=True;TrustServerCertificate=True;"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Warning"
    }
  },
  "AllowedHosts": "*"
}
```

Ý nghĩa:

- `Server=127.0.0.1`: địa chỉ máy chủ SQL Server trên máy tính cục bộ.
- `Database=WebsiteNauAn`: cơ sở dữ liệu sử dụng.
- `Trusted_Connection=True`: sử dụng xác thực Windows.
- `TrustServerCertificate=True`: chấp nhận chứng chỉ máy chủ mà không xác minh chuỗi tin cậy.
- `DefaultConnection`: tên chuỗi kết nối được sử dụng trong mã nguồn.

Nếu SQL Server trên máy tính sử dụng instance hoặc cổng riêng, cần thay đổi giá trị `Server` cho phù hợp. Ví dụ `.\SQLEXPRESS` chỉ sử dụng khi máy có instance SQL Server Express tương ứng.

Tên chuỗi kết nối `DefaultConnection` phải khớp với cấu hình trong `Program.cs`.

## 9. Cấu hình Entity Framework Core

Trong `Program.cs`, dự án đăng ký `ApplicationDbContext` để kết nối SQL Server:

```csharp
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection")));
```

Entity Framework Core hỗ trợ ứng dụng thao tác với cơ sở dữ liệu thông qua `ApplicationDbContext`.

## 10. Chạy website bằng Visual Studio

1. Mở Visual Studio.
2. Chọn **Open a project or solution**.
3. Mở file `WebsiteNauAn.csproj` trong `src/WebsiteNauAn`.
4. Kiểm tra cấu hình SQL Server trong `appsettings.json`.
5. Đảm bảo cơ sở dữ liệu `WebsiteNauAn` đã được tạo.
6. Chọn **Build → Build Solution**.
7. Nhấn `F5` hoặc nút **Run** để khởi động website.
8. Mở địa chỉ HTTP hoặc HTTPS hiển thị trong Visual Studio.

## 11. Chạy website bằng Terminal

Mở Terminal tại thư mục chứa file `WebsiteNauAn.csproj`, sau đó chạy:

```bash
dotnet restore
dotnet build
dotnet run
```

Trong đó:

- `dotnet restore`: khôi phục các gói phụ thuộc.
- `dotnet build`: biên dịch dự án.
- `dotnet run`: khởi động website.

Sau khi chạy, mở địa chỉ được hiển thị trong Terminal.

## 12. Kiểm tra kết nối cơ sở dữ liệu

Dự án cung cấp đường dẫn kiểm tra kết nối SQL Server:

`/kiem-tra-db`

Sau khi chạy website, truy cập đường dẫn sau và thay cổng bằng cổng thực tế của ứng dụng:

`https://localhost:<port>/kiem-tra-db`

Ví dụ, nếu website chạy tại `https://localhost:7148`, hãy truy cập:

`https://localhost:7148/kiem-tra-db`

Nếu kết nối thành công, ứng dụng trả về:

`Ket noi SQL Server thanh cong!`

Nếu có lỗi, hãy kiểm tra SQL Server, tên cơ sở dữ liệu, tên máy chủ và chuỗi kết nối trong `appsettings.json`.

## 13. Xử lý lỗi thường gặp

### Không kết nối được SQL Server

- Kiểm tra SQL Server đã khởi động.
- Kiểm tra tên máy chủ trong `appsettings.json`.
- Kiểm tra cơ sở dữ liệu `WebsiteNauAn` đã tồn tại.
- Kiểm tra tài khoản Windows có quyền truy cập cơ sở dữ liệu.

### Lỗi khi biên dịch dự án

- Kiểm tra phiên bản .NET SDK.
- Khôi phục các gói NuGet.
- Kiểm tra thông báo lỗi trong Error List của Visual Studio.

### Website không hiển thị dữ liệu

- Kiểm tra các bảng trong SQL Server.
- Kiểm tra dữ liệu mẫu đã được thêm hay chưa.
- Kiểm tra kết nối và truy vấn dữ liệu trong ứng dụng.

## 14. Lưu ý bảo mật

- Không đưa mật khẩu hoặc thông tin đăng nhập bí mật lên GitHub công khai.
- Không chạy lại script tạo bảng trên cơ sở dữ liệu có dữ liệu cần giữ lại nếu chưa sao lưu.
- Khi chạy dự án trên máy khác, cần cấu hình lại chuỗi kết nối SQL Server.
- Cần cập nhật tài liệu khi cấu trúc hoặc chức năng dự án thay đổi.

## 15. Thông tin dự án

**Tên dự án:** WebsiteNauAn – Website chia sẻ công thức nấu ăn.

**Repository GitHub:**

https://github.com/quocntt060196/ASPNET-vx24ttk6-nguyenthachtoanquoc-MENU

**Thư mục mã nguồn:** `src/WebsiteNauAn`

**Thư mục cơ sở dữ liệu:** `setup/database`

---

README này cung cấp hướng dẫn cơ bản để tải mã nguồn, tạo cơ sở dữ liệu, cấu hình SQL Server và chạy dự án WebsiteNauAn trong môi trường phát triển.

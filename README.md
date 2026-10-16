## 8. Chạy website

### 8.1. Mở dự án

1. Clone repository từ GitHub về máy tính.
2. Mở thư mục `scr/WebsiteNauAn`.
3. Mở file `WebsiteNauAn.csproj` bằng Visual Studio.
4. Đảm bảo máy tính đã cài đặt .NET SDK phù hợp với dự án.

### 8.2. Chuẩn bị cơ sở dữ liệu

1. Mở SQL Server Management Studio (SSMS).
2. Kết nối đến SQL Server đang sử dụng.
3. Mở file `setup/database/database.sql` trong repository.
4. Chạy script nếu cơ sở dữ liệu `WebsiteNauAn` chưa tồn tại.
5. Kiểm tra cơ sở dữ liệu và các bảng đã được tạo thành công.

### 8.3. Cấu hình kết nối

Mở file `appsettings.json` và kiểm tra cấu hình:

```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=127.0.0.1;Database=WebsiteNauAn;Trusted_Connection=True;TrustServerCertificate=True;"
  }
}
```

Nếu SQL Server trên máy sử dụng tên instance hoặc cổng khác, hãy điều chỉnh giá trị `Server` cho phù hợp.

### 8.4. Khởi động website

1. Trong Visual Studio, chọn dự án `WebsiteNauAn` làm Startup Project nếu cần.
2. Chọn **Build → Build Solution**.
3. Nhấn `F5` hoặc nút **Run**.
4. Mở địa chỉ HTTP hoặc HTTPS hiển thị trong Visual Studio.

## 9. Kiểm tra kết nối SQL Server

Dự án có cung cấp đường dẫn kiểm tra kết nối cơ sở dữ liệu:

`https://localhost:<port>/kiem-tra-db`

Thay `<port>` bằng cổng HTTPS thực tế của website.

Nếu kết nối thành công, trình duyệt hiển thị:

`Ket noi SQL Server thanh cong!`

Nếu xuất hiện lỗi, hãy kiểm tra trạng thái SQL Server, tên cơ sở dữ liệu, tên máy chủ và cấu hình kết nối trong `appsettings.json`.

## 10. Lưu ý

- Cần cài đặt SQL Server và cấu hình kết nối phù hợp với máy tính chạy dự án.
- Không chạy lại script tạo bảng trên cơ sở dữ liệu đang chứa dữ liệu cần giữ lại.
- Nếu sử dụng cơ sở dữ liệu mới, cần thêm dữ liệu mẫu trước khi kiểm thử các chức năng cần dữ liệu.
- Không công khai mật khẩu hoặc thông tin đăng nhập bí mật trên GitHub.

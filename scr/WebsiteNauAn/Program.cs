
using Microsoft.EntityFrameworkCore;
using WebsiteNauAn.Data;

var builder = WebApplication.CreateBuilder(args);

// Đăng ký MVC
builder.Services.AddControllersWithViews();

// Kết nối cơ sở dữ liệu SQL Server
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(
        builder.Configuration.GetConnectionString("DefaultConnection")));

var app = builder.Build();

// Cấu hình xử lý yêu cầu HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.MapGet("/kiem-tra-db", async (ApplicationDbContext db) =>
{
    var ketNoiThanhCong = await db.Database.CanConnectAsync();

    return ketNoiThanhCong
        ? Results.Ok("Ket noi SQL Server thanh cong!")
        : Results.Problem("Chua ket noi duoc SQL Server.");
});

app.Run();

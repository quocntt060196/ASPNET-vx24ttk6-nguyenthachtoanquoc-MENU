
using Microsoft.EntityFrameworkCore;
using WebsiteNauAn.Models;

namespace WebsiteNauAn.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(
            DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        // Bảng công thức nấu ăn
        public DbSet<Recipe> Recipes { get; set; }
    }
}

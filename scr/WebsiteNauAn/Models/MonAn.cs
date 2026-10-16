
using System.ComponentModel.DataAnnotations;

namespace WebsiteNauAn.Models
{
    public class MonAn
    {
        public int Id { get; set; }

        [Required]
        [StringLength(200)]
        public string TenMonAn { get; set; } = string.Empty;

        public string? MoTa { get; set; }

        public string? NguyenLieu { get; set; }

        public string? CachNau { get; set; }

        public string? HinhAnh { get; set; }
    }
}


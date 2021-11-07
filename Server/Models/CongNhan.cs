namespace Server.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CongNhan")]
    public partial class CongNhan
    {
        [Key]
        [StringLength(20)]
        public string MaCongNhan { get; set; }

        [StringLength(50)]
        public string HoTen { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayThangNamSinh { get; set; }

        [StringLength(50)]
        public string PhongBan { get; set; }

        [StringLength(50)]
        public string ChucVu { get; set; }

        [StringLength(50)]
        public string QueQuan { get; set; }

        [StringLength(50)]
        public string LuongHopDong { get; set; }

        [StringLength(50)]
        public string LuongBaoHiem { get; set; }

        public bool? GioiTinh { get; set; }
    }
}

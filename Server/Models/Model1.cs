using System;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;

namespace Server.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<CongNhan> CongNhans { get; set; }
        public virtual DbSet<CongViec> CongViecs { get; set; }
        public virtual DbSet<DanhMucCongNhanThucHienKhoan> DanhMucCongNhanThucHienKhoans { get; set; }
        public virtual DbSet<DanhMucCongViec> DanhMucCongViecs { get; set; }
        public virtual DbSet<NKSLK> NKSLKs { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CongNhan>()
                .Property(e => e.MaCongNhan)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<CongViec>()
                .Property(e => e.MaCongViec)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DanhMucCongNhanThucHienKhoan>()
                .Property(e => e.MaDanhMucCNTHK)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DanhMucCongViec>()
                .Property(e => e.MaDanhMucCongViec)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DanhMucCongViec>()
                .Property(e => e.MaCongViec)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DanhMucCongViec>()
                .Property(e => e.SoLoSanPham)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<DanhMucCongViec>()
                .Property(e => e.MaSanPham)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<NKSLK>()
                .Property(e => e.MaNK)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<NKSLK>()
                .Property(e => e.MaDanhMucCNTHK)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<NKSLK>()
                .Property(e => e.MaDanhMucCongViec)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.MaSanPham)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.TenSanPham)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}

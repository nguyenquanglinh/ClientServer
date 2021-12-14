using ProjectClientServer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProjectClientServer.Controllers.API
{
    public class ThongKePB
    {
        public string TenPB { get; set; }
        public int SL { get; set; }
    }
    public class ThongKeCongNhanController : ApiController
    {
        private ProjectClientServerDbContext db = new ProjectClientServerDbContext();
        [HttpGet]
        public List<ThongKePB> CongNhanTheo(string tmp = "PhongBan")
        {
            return db.Database.SqlQuery<ThongKePB>($"select COUNT(MaCongNhan)as 'SL',TenPB={tmp} from CongNhan group by {tmp}").ToList();
        }
    }
    public class ThongKeCongNhan2Controller : ApiController
    {
        private ProjectClientServerDbContext db = new ProjectClientServerDbContext();
        [HttpGet]
        public List<ThongKePB> CongNhanTheoTuoi()
        {
            return db.Database.SqlQuery<ThongKePB>($"select Count(MaCongNhan) as 'SL',TenPB=CONVERT(varchar(10),DATEDIFF(YEAR,NgayThangNamSinh,GETDATE())) from CongNhan group by DATEDIFF(YEAR, NgayThangNamSinh, GETDATE())").ToList();
        }
    }
    public class ThongKeCongNhan3Controller : ApiController
    {
        private ProjectClientServerDbContext db = new ProjectClientServerDbContext();
        [HttpGet]
        public List<ThongKePB> CongNhanTheoGioiTinh()
        {
            return db.Database.SqlQuery<ThongKePB>("select Count(MaCongNhan) as 'SL',TenPB=iif(GioiTinh=1,'Nam',N'Nữ') from CongNhan group by GioiTinh").ToList();
        }
    }
}

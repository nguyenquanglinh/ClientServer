using Server.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using HttpDeleteAttribute = System.Web.Http.HttpDeleteAttribute;
using HttpGetAttribute = System.Web.Http.HttpGetAttribute;
using HttpPostAttribute = System.Web.Http.HttpPostAttribute;
using HttpPutAttribute = System.Web.Http.HttpPutAttribute;

namespace Server.Controllers
{
    public class CongNhansController : ApiController
    {
        Model1 db = new Model1();
        // GET api/values
        [HttpGet]
        public IEnumerable<CongNhan> Get()
        {
            return db.CongNhans;
        }

        // GET api/values/5
        [HttpGet]
        public CongNhan Get(string id)
        {
            return db.CongNhans.FirstOrDefault(i => i.MaCongNhan == id);
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] CongNhan congNhan)
        {
            try
            {
                db.CongNhans.Add(congNhan);
                db.SaveChanges();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        // PUT api/values/5
        [HttpPut]
        public void Put(string id, [FromBody] CongNhan congNhan)
        {
            try
            {
                var c = Get(id);
                c.HoTen = congNhan.HoTen;
                c.GioiTinh = congNhan.GioiTinh;
                c.NgayThangNamSinh = congNhan.NgayThangNamSinh;
                c.PhongBan = congNhan.PhongBan;
                c.ChucVu = congNhan.ChucVu;
                c.QueQuan = congNhan.QueQuan;
                c.LuongHopDong = congNhan.LuongHopDong;
                c.LuongBaoHiem = congNhan.LuongBaoHiem;
                c.GioiTinh = congNhan.GioiTinh;
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        // DELETE api/values/5
        [HttpDelete]
        public void Delete(string id)
        {
            try
            {
                var c = Get(id);
                db.CongNhans.Remove(c);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
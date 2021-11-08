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
    public class CongViecsController : ApiController
    {
        // GET api/values
        Model1 db = new Model1();
        [HttpGet]
        public IEnumerable<CongViec> Get()
        {
            return db.CongViecs;
        }

        // GET api/values/5
        [HttpGet]
        public CongViec Get(string id)
        {
            return db.CongViecs.FirstOrDefault(i=>i.MaCongViec.Trim()==id);
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody] CongViec congViec)
        {
            try
            {
                db.CongViecs.Add(congViec);
                db.SaveChanges();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        // PUT api/values/5
        [HttpPut]
        public void Put(string id, [FromBody] CongViec congViec)
        {
            try
            {
                var c = Get(id);
                c.TenCongViec = congViec.TenCongViec;
                c.DinhMucKhoan = congViec.DinhMucKhoan;
                c.DonViKhoan = congViec.DonViKhoan;
                c.HeSoKhoan = congViec.HeSoKhoan;
                c.DinhMucLaoDong = congViec.DinhMucLaoDong;
                c.DonGia = congViec.DonGia;
                db.SaveChanges();
            }
            catch(Exception ex)
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
                db.CongViecs.Remove(c);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}

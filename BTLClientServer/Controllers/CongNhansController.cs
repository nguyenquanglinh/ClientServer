using BTLClientServer.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTLClientServer.Controllers
{
    public class CongNhansController : Controller
    {
        // GET: CongNhans
        Model1 db = new Model1();
        public ActionResult Index(int pageNumber = 1, int pageSize = 10)
        {
            return View(db.CongNhans.OrderBy(i => i.MaCongNhan).ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(CongNhan cn)
        {
            try
            {
                if (db.CongNhans.FirstOrDefault(i => i.MaCongNhan == cn.MaCongNhan) == null)
                {
                    if (cn.MaCongNhan == null)
                    {
                        cn.MaCongNhan = "MCN" + db.CongNhans.ToList().Count.ToString();
                    }
                    db.CongNhans.Add(cn);
                    db.SaveChanges();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return View();
        }
        [HttpPost]
        public ActionResult Delete(string MaCongNhan)
        {
            var x = db.CongNhans.FirstOrDefault(i => i.MaCongNhan == MaCongNhan);

            return RedirectToAction("index");
        }
    }
}
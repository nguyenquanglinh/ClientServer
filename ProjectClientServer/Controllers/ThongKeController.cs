using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProjectClientServer.Controllers
{
    public class ThongKeController : Controller
    {
        // GET: ThongKe
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CongNhanTheoPhongBan()
        {
            ViewBag.title = "Công nhân theo phòng ban";
            return View();
        }
        public ActionResult CongNhanTheoChucVu()
        {
            ViewBag.title = "Công nhân theo chức vụ";
            return View();
        }
        public ActionResult CongNhanTuoi()
        {
            ViewBag.title = "Công nhân theo tuổi";
            return View();
        }
        public ActionResult CongNhanGioiTinh()
        {
            ViewBag.title = "Công nhân theo giới tính";
            return View();
        }

    }
}
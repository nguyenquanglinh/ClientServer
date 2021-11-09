using PagedList;
using Server.Models;
using System.Linq;
using System.Web.Mvc;

namespace Client.Controllers
{
    public class CongNhansController : Controller
    {
        public ActionResult Index(int pageNumber = 1,int pageSize=10)
        {
            var db = new Model1();
            return View(db.CongNhans.ToList().ToPagedList(pageNumber, pageSize));
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
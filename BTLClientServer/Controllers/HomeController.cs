using BTLClientServer.Models;
using PagedList;
using System.Linq;
using System.Web.Mvc;

namespace BTLClientServer.Controllers
{
    public class HomeController : Controller
    {
        Model1 db = new Model1();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Template(int pageNumber=1,int pageSize=10)
        {
            return View(db.CongNhans.OrderBy(i=>i.MaCongNhan).ToPagedList(pageNumber, pageSize));
        }
    }
}
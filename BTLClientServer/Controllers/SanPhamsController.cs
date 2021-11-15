using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BTLClientServer.Models;
using System.IO;
using PagedList;

namespace BTLClientServer.Controllers
{
    public class SanPhamsController : Controller
    {
        // GET: SanPhams
        Model1 db = new Model1();
        //private object sanPhams;

        //public ActionResult Index(int? index = 0)
        //{
        //    int pagesize = 5;
        //    ViewBag.tongTrang = db.SanPhams.ToList().Count() / pagesize + 1;
        //    if (!string.IsNullOrEmpty(index.ToString()))
        //    {
        //        sanPhams = sanPhams.OrderBy(x => x.MaSanPham).Skip(index.Value * pagesize).Take(pagesize);
        //        return View(sanPhams.ToList());
        //    }
        //    return View(sanPhams.ToList());
        //}
        public ActionResult Index(int pageNumber = 1, int pageSize = 10)
        {
            return View(db.SanPhams.OrderBy(i => i.MaSanPham).ToPagedList(pageNumber, pageSize));
        }
    

        [HttpPost]
        public ActionResult Details(string id)
        {
            id = id.Trim();
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }


        public ActionResult Create()
        {

            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSanPham,TenSanPham, SoDangKy, HanSuDung, QuyCach, NgayDangKy")] SanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.SanPhams.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sanPham);
        }

        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSanPham,TenSanPham, SoDangKy, HanSuDung, QuyCach, NgayDangKy")] SanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sanPham);
        }

        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // POST: Admin/SanPham/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SanPham sanPham = db.SanPhams.Find(id);
            db.SanPhams.Remove(sanPham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Call_Audit_Center.Models;

namespace Call_Audit_Center.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        //public 

       [HttpPost]
        [ValidateAntiForgeryToken]
      
        public ActionResult Index(Login_Info objUser)
        {
            if (ModelState.IsValid)
            {
                using (CallAuditCenterEntities db = new CallAuditCenterEntities())
                {
                    var obj = db.Login_Details.Where(a => a.UserName.Equals(objUser.UserName) && a.Pwd.Equals(objUser.Pwd)).FirstOrDefault();
                    if (obj != null)
                    {
                        Session["UserID"] = obj.UserId.ToString();
                        Session["UserName"] = obj.UserName.ToString();
                        return RedirectToAction("Index", "Home");
                    }
                    else { ViewBag.Message = "Invalid Credentials"; }
                }
            }
            return View(objUser);
        }
        
        public ActionResult Logout()
        {
            Session.Abandon();
            Session.Clear();
            return RedirectToAction("Index","Login");
        }
    }
}
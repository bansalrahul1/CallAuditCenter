using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Call_Audit_Center.Controllers
{
    public class AuditCallController : Controller
    {
        // GET: AuditCall
        public ActionResult ManualAudit()
        {
            dynamic model = new ExpandoObject();
            using (var context = new CallAuditCenterEntities())
            {
                model.listofQuestions = context.Question_Details.ToList();
                model.listofCalls = context.Call_Details.ToList();
                return View(model);
            }
        }
        public ActionResult AutomatedAudit()
        {
            return View();
        }
        public ActionResult AuditSettings()
        {
            return View();
        }
        public ActionResult AuditScorecard()
        {
            return View();
        }
    }
}
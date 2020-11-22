using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class InsuranceController : AuthController
    {
        // GET: Insurance
        public ActionResult Index()
        {
            return View();
        }
    }
}
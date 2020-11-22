using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class PharmacyController : AuthController
    {
        // GET: Pharmacy
        public ActionResult Index()
        {
            return View();
        }
    }
}
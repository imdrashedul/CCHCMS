using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class HospitalController : AuthController
    {
        // GET: Hospital
        public ActionResult Index()
        {
            return View();
        }
    }
}
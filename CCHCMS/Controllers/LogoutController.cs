using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class LogoutController : AuthController
    {
        // GET: Logout
        public RedirectToRouteResult Index()
        {
            Session.Remove("CCHCMS_AUTH");
            return RedirectToAction("Index", "Login");
        }
    }
}
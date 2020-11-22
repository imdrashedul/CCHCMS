using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class GuestController : Controller
    {
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);

            if (filterContext.HttpContext.Session["CCHCMS_AUTH"] != null)
            {
                filterContext.Result = new RedirectResult("/Auth/Redirect");
                return;
            }
        }
    }
}
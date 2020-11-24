using CCHCMS.Models;
using CCHCMS.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class AuthController : Controller
    {
        protected User loggedUser;

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            
            if (filterContext.HttpContext.Session["CCHCMS_AUTH"] == null)
            {
                filterContext.Result = new RedirectResult("/");
                return;
            }

            UserRepository userRepository = new UserRepository();

            loggedUser = userRepository.Get(Convert.ToInt64(filterContext.HttpContext.Session["CCHCMS_AUTH"]));

            ViewBag.ExtraCss = new List<string>();
            ViewBag.ExtraJs = new List<string>();
            ViewBag.ActiveMenu = "dashboard";
            ViewBag.Navigator = new List<Array>();
            ViewBag.LoggedUser = loggedUser;
            ViewBag.LoggedUserInfo = MapUserInformation(loggedUser);
        }

        public RedirectToRouteResult Redirect()
        {
            return RespectiveRedirect(loggedUser);
        }

        [NonAction]
        protected Dictionary<string, string> MapUserInformation(User user)
        {
            IEnumerable<UsersInformation> allInformation =  user.UsersInformations.AsEnumerable<UsersInformation>();
            Dictionary<string, string> mapped = new Dictionary<string, string>();

            foreach(UsersInformation information in allInformation)
            {
                mapped.Add(information.Bind.ToString(), information.Value.ToString());
            }

            return mapped;
        }

        [NonAction]
        protected RedirectToRouteResult RespectiveRedirect(User user)
        {
            switch (user.Role.Slug.ToString())
            {
                case "super":
                    return RedirectToAction("Index", "FBI");
                case "government":
                    return RedirectToAction("Index", "Government");
                case "doctor":
                    return RedirectToAction("Index", "Doctor");
                case "patient":
                    return RedirectToAction("Index", "Patient");
                case "hospital":
                    return RedirectToAction("Index", "Pharmacy");
                case "compounder":
                    return RedirectToAction("Index", "Compounder");
                case "pharmacy":
                    return RedirectToAction("Index", "Pharmacy");
                default:
                    return RedirectToAction("Index", "CommonLand");
            }
        }
    }
}
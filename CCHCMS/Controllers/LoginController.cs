using CCHCMS.Models;
using CCHCMS.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CCHCMS.Controllers
{
    public class LoginController : GuestController
    {
        private UserRepository userRepository = new UserRepository();

        // GET: Login
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        // POST: Login
        [HttpPost]
        [ValidateAntiForgeryToken]
        public RedirectToRouteResult Index(FormCollection fc)
        {
            string userName = fc.AllKeys.Contains("username") ? fc.Get("username").Trim() : "";
            string password = fc.AllKeys.Contains("password") ? fc.Get("password") : "";

            User user = null;

            Dictionary<string, string> errors = new Dictionary<string, string>();

            if (String.IsNullOrEmpty(userName))
            {
                errors.Add("username", "User Name is required");
            }
            else if((user = userRepository.GetByUserName(userName)) == null)
            {
                errors.Add("username", "No User found with this User Name");
            }

            if(String.IsNullOrEmpty(userName))
            {
                errors.Add("password", "Password is required");
            }
            else if(user != null && user.Password != password)
            {
                errors.Add("password", "Password doesn't match");
            }

            if(!(errors.Count()>0))
            {
                Session["CCHCMS_AUTH"] = user.Id;
                return RedirectToAction("Redirect", "Auth");
            }

            TempData.Add("loginValidation", errors);
            TempData.Add("loginUserName", userName);

            return RedirectToAction("Index","Login");
        }
    }
}
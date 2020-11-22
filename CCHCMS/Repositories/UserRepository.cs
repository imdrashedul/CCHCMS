using CCHCMS.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CCHCMS.Repositories
{
    public class UserRepository:Repository<User>
    {
        public User GetByUserName(string UserName)
        {
            return this.context.Users.Where(u => u.UserName == UserName).FirstOrDefault();
        }

    }
}
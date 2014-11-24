using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eHealth.Account
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.Security.MembershipUser user = System.Web.Security.Membership.GetUser();
            string userName = user.UserName;
            Label1.Text = userName;
        }
    }
}
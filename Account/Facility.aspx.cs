using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eHealth.Account
{
    public partial class Facility : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var dest = Request.QueryString["dest"];
            destination.Text = dest;
        }

        /*
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        */
         
    }
}
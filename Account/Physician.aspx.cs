using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;

namespace eHealth
{
    public partial class Physician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {  
            //SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            if (DropDownList2.SelectedValue == "empty" && DropDownList1.SelectedValue != "empty")
                SqlDataSource2.SelectCommand = "SELECT Physicians.pID, Physicians.firstName, Physicians.lastName, Physicians.field, Physicians.photoUrl, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone " +
                               "FROM Physicians INNER JOIN Facilities " + 
                               "ON Physicians.fID = Facilities.fID AND Physicians.field = @field";
            else if (DropDownList1.SelectedValue == "empty" && DropDownList2.SelectedValue != "empty")
                SqlDataSource2.SelectCommand = "SELECT Physicians.pID, Physicians.firstName, Physicians.lastName, Physicians.field, Physicians.photoUrl, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone " +
                               "FROM Physicians INNER JOIN Facilities " +
                               "ON Physicians.fID = Facilities.fID AND Facilities.city = '" + DropDownList2.SelectedValue + "'";
            else
                SqlDataSource2.SelectCommand = "SELECT Physicians.pID, Physicians.firstName, Physicians.lastName, Physicians.field, Physicians.photoUrl, Facilities.name, Facilities.address, Facilities.state, Facilities.city, Facilities.zip, Facilities.phone " +
                               "FROM Physicians INNER JOIN Facilities " +
                               "ON Physicians.fID = Facilities.fID AND Physicians.field = @field AND Facilities.city = '" + DropDownList2.SelectedValue + "'";
        }

    }
}
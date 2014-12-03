using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace eHealth.Account
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var pid = Request.QueryString["id"];
            if (pid != null)
                TextBox1.Text = pid;
        }

        private string formatDay(string day)
        {
            int dayToInt = Int32.Parse(day);
            if (dayToInt < 10)
                return "0" + day;
            else
                return day;
        }

        private string calcEndTime(string startTime)
        {
            int startTimeToInt = Int32.Parse(startTime);
            if (startTimeToInt == 12)
                return 1.ToString();
            else
                return (startTimeToInt + 1).ToString();
        }

        private string formatTime(string t)
        {
            int toInt = Int32.Parse(t);
            if (toInt >= 8 && toInt < 12)
                return t + ":00:00 AM";
            else if (toInt == 12 || (toInt >= 1 && toInt <= 6))
                return t + ":00:00 PM";
            else
                throw new Exception("invalid input: time");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlConnectionString = "Data Source=SQL5002.myASP.NET;Initial Catalog=DB_9B80F3_ehealth;User ID=DB_9B80F3_ehealth_admin;Password=project1";
            SqlConnection conn = new SqlConnection(sqlConnectionString);
            
            // input variables
            System.Web.Security.MembershipUser user = System.Web.Security.Membership.GetUser();
            string userName = user.UserName;
            string pID = TextBox1.Text;
            //string lastName = TextBox2.Text;

            string month = DropDownList1.SelectedValue;
            string day = "";            
            string year = DropDownList2.SelectedValue;

            string startTime = DropDownList3.SelectedValue;
            string endTime = calcEndTime(startTime);
            string formatStartTime = "";
            string formatEndTime = "";

            try
            {
                formatStartTime = formatTime(startTime);
                formatEndTime = formatTime(endTime);
                day = formatDay(TextBox3.Text);
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('invalid time')", true);
            }

            string inputStartDate = year + month + day + " " + formatStartTime;
            string inputEndDate = year + month + day + " " + formatEndTime;

            try
            {
                string sql = "insert into appointment (userName, pID, fID, startDate, endDate) " +
                "values(" +
                    "'" + userName + "'," +
                    pID + "," +
                    "(select fID from physicians where pID=" + pID + /* " and lastName='" + lastName  + */ "),'" +           
                    inputStartDate + "','" +
                    inputEndDate + "'" +
                ")";
                //System.Diagnostics.Debug.WriteLine("q: " + sql);

                SqlCommand execSql = new SqlCommand(sql, conn);
                conn.Open();
                execSql.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('submitted')", true);   
            }
            catch (Exception exception)
            {
                string msg = exception.Message;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('error: '" + msg + ")", true);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
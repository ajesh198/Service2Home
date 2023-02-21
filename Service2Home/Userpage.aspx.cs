using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class Userpage : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string log = "select count(regid) from login_table where email='" + emailtxt.Text + "' and password='" + passtxt.Text + "'";
            string cid = connection.Fun_scalar(log);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string log1 = "select regid from login_table where email='" + emailtxt.Text + "' and password='" + passtxt.Text + "'";
                string uid = connection.Fun_scalar(log1);
                Session["uid"] = uid;

                string utype = "select type from login_table where email='" + emailtxt.Text + "' and password='" + passtxt.Text + "'";
                string logtype = connection.Fun_scalar(utype);
                if (logtype == "service")
                {
                    Response.Redirect("servicepage.aspx");
                }
                else
                {
                    Response.Redirect("userhome.aspx");
                }
            }
            else
            {
                errlbl.Text = "incorrect username or password";
                errlbl.Visible = true;
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class servicehome : System.Web.UI.MasterPage
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string unam = " select name from service_reg where regid='" + Session["uid"] + "'";
            string un = connection.Fun_scalar(unam);
            userlbl.Text = "welcome " + un + "!";
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Userpage.aspx");
        }
    }
}
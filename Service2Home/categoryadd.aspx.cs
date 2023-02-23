using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class categoryadd : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String cat = "insert into service_type values('"+nametxt.Text+"','active','"+desctxt.Text+"')";
            int c = connection.Fun_nonquery(cat);
            if (c != 0)
            {
                Response.Redirect("serviceregister.aspx");
            }
        }
    }
}
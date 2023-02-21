using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class userhome : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Userpage.aspx");
            }
            //string dl = "select * from service_reg";
            //DataSet dr = connection.Fun_dataadapter(dl);
            //DataList1.DataSource = dr;
            //DataList1.DataBind();

            //string unam = "select user_reg.name, service_reg.name from user_reg inner join  service_reg on user_reg.regid = service_reg.regid  where user_reg.regid='"+Session["uid"]+"'  ";
        }

        protected void searbtn_Click(object sender, EventArgs e)
        {

            string ser = "select * from service_reg where servicetype Like '%" + TextBox1.Text + "%' and pincode='" + TextBox2.Text + "'";
            DataSet dr = connection.Fun_dataadapter(ser);
            DataList1.DataSource = dr;
            DataList1.DataBind();
            noreslbl.Visible = false;
            if (dr.Tables.Count > 0)
            {
                if (dr.Tables[0].Rows.Count == 0)
                {
                    noreslbl.Text = "This service currently not available in your area";
                    noreslbl.Visible = true;
                }
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "bookservice")
            {
                Label ser_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label14");
                string serviceid = ser_id.Text;

                Label ser_name = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
                string servicename = ser_name.Text;

                TextBox desc = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("desctxt");
                String description = desc.Text;

                DateTime aDate = DateTime.Now;
                String time = aDate.ToString("MM/dd/yyyy HH:mm");

                String req = "insert into service_request values(" + Session["uid"] + "," + serviceid + ",'" + description + "','" + time + "','requested','" + servicename + "')";
                int r = connection.Fun_nonquery(req);
                if (r != 0)
                {
                    Response.Redirect("userpendingrequests.aspx");
                }
            }
        }
    }
}
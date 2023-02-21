using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class servicepage : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String pend = "select * from service_request where serviceid=" + Session["uid"] + " and status='requested'";
                DataSet dr = connection.Fun_dataadapter(pend);
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "contactdetails")
            {
                Label cust_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("custid");
                string custid = cust_id.Text;

                Label aname = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("namelbl");
                string custname = aname.Text;

                Label anumber = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("nolbl");
                string custno = anumber.Text;

                Label aemail = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("emaillabel");
                string custemail = aemail.Text;

                String detail = "select name,phone,email from user_reg where regid=" + custid + "";
                SqlDataReader dr = connection.Fun_datareader(detail);
                while (dr.Read())
                {
                    custname = dr[0].ToString();
                    custno = dr[1].ToString();
                    custemail = dr[2].ToString();
                }
                aname.Text = "Name: " + custname;
                aname.Visible = true;
                anumber.Text = "mobile no: " + custno;
                anumber.Visible = true;
                aemail.Text = "email: " + custemail;
                aemail.Visible = true;
            }
            if (e.CommandName == "chnagestatus")
            {
                Label req_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
                string reqid = req_id.Text;

                DropDownList status = (DropDownList)DataList1.Items[e.Item.ItemIndex].FindControl("DropDownList1");
                string stat = status.SelectedItem.Text;

                string can = "update service_request set status='" + stat + "' where reqid=" + reqid + "";
                int r = connection.Fun_nonquery(can);
                if (r != 0)
                {
                    String pend = "select * from service_request where serviceid=" + Session["uid"] + " and status='requested'";
                    DataSet dr = connection.Fun_dataadapter(pend);
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }

        }
    }
}
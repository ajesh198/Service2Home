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
    public partial class userpendingrequests : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String pend = "select * from service_request where regid=" + Session["uid"] + " and not (status='cancelled' or status='completed' or status='payment pending') ";
                DataSet dr = connection.Fun_dataadapter(pend);
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "contactdetails")
            {
                Label agent_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("agentlbl");
                string serviceid = agent_id.Text;

                Label anumber = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("nolbl");
                string agentno = anumber.Text;

                Label aemail = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("emaillabel");
                string agentemail = aemail.Text;

                String detail = "select phoneno,email from service_reg where regid=" + serviceid + ""; SqlDataReader dr = connection.Fun_datareader(detail);
                while (dr.Read())
                {
                    agentno = dr[0].ToString();
                    agentemail = dr[1].ToString();
                }
                anumber.Text = "mobile no: " + agentno;
                anumber.Visible = true;
                aemail.Text = "email: " + agentemail;
                aemail.Visible = true;
            }
            if (e.CommandName == "cancelreq")
            {
                Label req_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
                string reqid = req_id.Text;
                string can = "update service_request set status='cancelled' where reqid=" + reqid + "";
                int r = connection.Fun_nonquery(can);
                if (r != 0)
                {
                    String pend = "select * from service_request where regid=" + Session["uid"] + " and not (status='cancelled' or status='completed'  or status='payment pending') ";
                    DataSet dr = connection.Fun_dataadapter(pend);
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }
    }
}
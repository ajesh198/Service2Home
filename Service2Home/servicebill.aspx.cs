using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class servicebill : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String pend = "select * from service_request where serviceid=" + Session["uid"] + " and status='bill payment'";
                DataSet dr = connection.Fun_dataadapter(pend);
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "billgen")
            {
                Label req_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
                string reqid = req_id.Text;

                TextBox bill = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1");
                String abill = bill.Text;

                String stat = "update service_request set status = 'payment pending' where reqid=" + reqid + "";
                int s = connection.Fun_nonquery(stat);
                String billpay = "insert into Billpay values(" + reqid + "," + abill + ",'pending')";
                int b = connection.Fun_nonquery(billpay);
                if (b != 0 && s != 0)
                {
                    String pend = "select * from service_request where serviceid=" + Session["uid"] + " and status='bill payment'";
                    DataSet dr = connection.Fun_dataadapter(pend);
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }
    }
}
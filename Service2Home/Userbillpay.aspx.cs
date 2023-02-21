using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Service2Home
{
    public partial class Userbillpay : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String pend = "select service_request.reqid,service_request.serviceid,service_request.Description,service_request.Date,service_request.status,Billpay.Amount from service_request inner join Billpay on service_request.reqid = Billpay.reqid where service_request.regid= " + Session["uid"] + " and Billpay.status='pending'";
                DataSet dr = connection.Fun_dataadapter(pend);
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "payam")
            {
                Label req_id = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1");
                string reqid = req_id.Text;

                Label bill = (Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label17");
                String abill = bill.Text;

                String stat = "update service_request set status = 'completed' where reqid=" + reqid + "";
                int s = connection.Fun_nonquery(stat);

                String billpay = "update Billpay set status = 'completed' where reqid=" + reqid + "";
                int b = connection.Fun_nonquery(billpay);

                if (b != 0 && s != 0)
                {
                    String pend = "select service_request.reqid,service_request.serviceid,service_request.Description,service_request.Date,service_request.status,Billpay.Amount from service_request inner join Billpay on service_request.reqid = Billpay.reqid where service_request.regid= " + Session["uid"] + " and Billpay.status='pending'";
                    DataSet dr = connection.Fun_dataadapter(pend);
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Service2Home
{
    public partial class serviceregister : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string drop = "select typeid,name from service_type";
                DataSet dr = connection.Fun_dataadapter(drop);
                DropDownList1.DataSource = dr;
                DropDownList1 .DataTextField = "name";
                DropDownList1.DataValueField = "typeid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--Select--");
            }
        }

        Random rand = new Random();
        int otp;
        protected void Button2_Click(object sender, EventArgs e)
        {
            otp = rand.Next(100000, 999999);
            try
            {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("servicetohomes2h@gmail.com");
                msg.To.Add(emailtxt.Text);
                msg.Subject = "S2H verification code";
                msg.Body = "Hi," + nametxt.Text + "\n \n The verification code for registering S2H is " + otp.ToString() + "\n \n Thanks \n S2H";

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntcd = new NetworkCredential();
                ntcd.UserName = "servicetohomes2h@gmail.com";
                ntcd.Password = "xvlknwglkxajzgjx";
                smt.Credentials = ntcd;
                smt.EnableSsl = true;
                smt.Port = 587;
                smt.Send(msg);

                emaillbl.Text = "email have been sended..";
                emaillbl.Visible = true;
                otpref.Text = otp.ToString();

            }
            catch (Exception ex)
            {
                msglbl.Text = ex.Message;
                msglbl.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string che = "select count(email) from login_table where email='" + emailtxt.Text + "'";
            string ch = connection.Fun_scalar(che);
            int ch1 = Convert.ToInt32(ch);
            if (ch1 != 0)
            {
                msglbl.Text = "email already registered";
                msglbl.Visible = true;
            }
            else
            {
                if ((otpref.Text).Equals(otptxt.Text))
                {
                    string sel = "select max(regid) from login_table";
                    string reg_id = connection.Fun_scalar(sel);
                    int regid = 0;
                    if (reg_id == "")
                    {
                        regid = 1;
                    }
                    else
                    {
                        int newregid = Convert.ToInt32(reg_id);
                        regid = newregid + 1;
                    }
                    string ins = "insert into  service_reg values(" + regid + ",'" + nametxt.Text + "','" + emailtxt.Text + "','" + phonetxt.Text + "','" + Pintxt.Text + "','" + DropDownList1.SelectedItem.Text + "')";
                    int i = connection.Fun_nonquery(ins);
                    string log = "insert into  login_table values(" + regid + ",'" + emailtxt.Text + "','" + Cpass.Text + "','service','active')";
                    int j = connection.Fun_nonquery(log);
                    if (i != 0 && j != 0)
                    {
                        Response.Redirect("userpage.aspx");
                    }
                }
                else
                {
                    msglbl.Text = "wrong otp";
                    msglbl.Visible = true;
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Service2Home
{
    public partial class forgotpass : System.Web.UI.Page
    {
        connectionclass connection = new connectionclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Random rand = new Random();
        int otp;
        protected void Button1_Click(object sender, EventArgs e)
        {
            otp = rand.Next(100000, 999999);
            try
            {

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("servicetohomes2h@gmail.com");
                msg.To.Add(emailtxt.Text);
                msg.Subject = "S2H verification code";
                msg.Body = "Hi," + nametxt.Text + "\n \n The verification code for password reset is " + otp.ToString() + "\n \n Thanks \n S2H";

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string che = "select count(email) from login_table where email='" + emailtxt.Text + "'";
            string ch = connection.Fun_scalar(che);
            int ch1 = Convert.ToInt32(ch);
            if (ch1 == 0)
            {
                msglbl.Text = "This email is not registered with us";
                msglbl.Visible = true;
            }
            else
            {
                if ((otpref.Text).Equals(otptxt.Text))
                {
                    string pass = "update login_table set password='" + Cpass.Text + "' where email='" + emailtxt.Text + "' ";
                    int p = connection.Fun_nonquery(pass);
                    if (p != 0)
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
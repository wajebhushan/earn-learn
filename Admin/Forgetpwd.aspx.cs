using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class Admin_Forgetpwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbString"].ToString());
    SqlCommand com;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String qry = "select Aemail,Apassword from Admin where Aemail='" + AEmail.Text + "'";
        con.Open();
        com = new SqlCommand(qry, con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            String Aemail = dr["Aemail"].ToString();
            String password = dr["Apassword"].ToString();
            MailMessage mm = new MailMessage("namdevjagtap9604@gmail.com", AEmail.Text);
            mm.Subject = "Your password";
            mm.Body = String.Format("Hello:<h1>{0}</h1>is your email id </br>your password is <h1>{1}</h1>", Aemail, password);
            mm.IsBodyHtml = false;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("namdevjagtap9604@gmail.com", "9604541602");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('your password is send successfully.');", true);
        }
        else
        {
            Response.Write("<script>alert('Invalid email');</script");

        }
    }
}
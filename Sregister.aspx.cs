using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sregister : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (l1.ins("insert into sregister(sname,semail,smobile,spassword) values('" + Rname.Text + "','" + REmail.Text + "','" + Rmobile.Text + "','" + Rpassword.Text + "')"))
        {
            Response.Write("<script>alert('Registration Successful');</script>");
        }
        else 
        {
            Response.Write("<script>alert('Error');</script>");
        }
    }
}
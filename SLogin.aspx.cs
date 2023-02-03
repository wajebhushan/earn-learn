using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (l1.exists("Select * from sregister where semail='" + Studemail.Text + "'and spassword='" + Studpass.Text + "'"))
        {
            Session["email"] = Studemail.Text;
            Label r1 = new Label();
            l1.filllabel(r1, "select * from sregister where semail='" + Session["email"] + "'", "sid");
            Session["sid"] = r1.Text;
            Response.Redirect("student/StudDefault.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid EmailId or Password');</script>");
        }
    }
}
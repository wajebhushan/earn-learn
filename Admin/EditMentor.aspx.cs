using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditMentor : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label r1 = new Label();
        e1.filllabel(r1, "select * from Mentor where Mid='" + Request.QueryString["id"] + "'", "Mname");
        Mname.Text = r1.Text;
        e1.filllabel(r1, "select * from Mentor where Mid='" + Request.QueryString["id"] + "'", "Memail");
        Memail.Text = r1.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (e1.ins("update Mentor set Mname='" + Mname.Text + "',Memail='" + Memail.Text + "',Mpassword='" + Mpass.Text + "' where Mid='" + Request.QueryString["id"] + "'"))
        {
            Response.Write("<script>alert('Update information Successfully.....')</script>");
        }
    }
}
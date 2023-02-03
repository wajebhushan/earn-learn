using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditAccountant : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    
    protected void Page_Load(object sender, EventArgs e)
    {

        Label r1 = new Label();
        e1.filllabel(r1, "select * from Accountant where Aid='" + Request.QueryString["id"]+ "'", "Aname");
        Aname.Text = r1.Text;
        e1.filllabel(r1, "select * from Accountant where Aid='" + Request.QueryString["id"] + "'", "AEmail");
        AEmail.Text = r1.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (e1.ins("update Accountant set Aname='" + Aname.Text + "',AEmail='" + AEmail.Text + "',Apassword='" + Apass.Text + "' where Aid='" + Request.QueryString["id"] + "'"))
        {
            Response.Write("<script>alert('Update information Successfully.....')</script>");
        }
    }
}
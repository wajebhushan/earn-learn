using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddAccount : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (e1.ins("insert into Accountant(Aname,AEmail,Apassword)values('" + Aname.Text + "','"+AEmail.Text+"','" + Apass.Text + "')"))
            {
                Response.Write("<script>alert('insert Accountant successfully');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Failed to insert Accountant Details');</script>");
        }
    }
}
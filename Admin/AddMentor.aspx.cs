using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddMentor : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (e1.ins("insert into Mentor(Mname,Memail,Mpassword)values('" + Mname.Text + "','" + Memail.Text + "','" + Mpass.Text + "')"))
            {
                Response.Write("<script>alert('insert Mentor Detais successfully');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Failed to insert Details Details');</script>");
        }
    }
}
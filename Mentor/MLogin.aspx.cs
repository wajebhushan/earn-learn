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
    
        if (l1.exists("Select * from Mentor where Memail='"+Memail.Text+"'and Mpassword='"+Mpass.Text+"'"))
        {

            Session["email"] = Memail.Text;
            Response.Redirect("MentorDefault.aspx");
        }
    }
}
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
    
        if (l1.exists("Select * from Department where Demail='"+Demail.Text+"'and Dpassword='"+Dpass.Text+"'"))
        {
            Label r1 = new Label();
            l1.filllabel(r1,"select * from Department where Demail='"+Demail.Text+"'","Did");
            Session["Did"] = r1.Text;
            Response.Redirect("DeptDefault.aspx");
        }
    }
}
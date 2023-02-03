using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login1 : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (e1.exists("select Aemail,Apassword from Admin where Aemail='" + Aemail.Text + "'and Apassword='" + Apass.Text + "'"))
        {
            Session["email"] = Aemail.Text;
            Response.Redirect("AdmDefault.aspx");
        }
    }
}
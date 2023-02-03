using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddDept : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        e1.ins("insert into Department(Dname,Demail,Dpassword)values('" + Dname.Text + "','" + Demail.Text + "','" + Dpass.Text + "')");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SearchStud : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (e1.exists("Select * from StudForm where Sname='" + Studname.Text + "'"))
        {
            Session["sname"] = Studname.Text;
            Label r1 = new Label();
            e1.filllabel(r1, "select * from StudForm where Sname='" + Session["sname"] + "'", "sf_id");
            Session["sf_id"] = r1.Text;
            Response.Redirect("ViewForm.aspx");
        }
    }
}
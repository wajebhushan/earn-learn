using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mentor_StudInfo : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (l1.exists("Select * from StudForm where Sname='" +TextBox1.Text + "'"))
        {
            Session["sname"] = TextBox1.Text;
            Label r1 = new Label();
            l1.filllabel(r1, "select * from StudForm where Sname='" + Session["sname"] + "'", "sf_id");
            Session["sf_id"] = r1.Text;
            Response.Redirect("Worksheet.aspx");
        }
    }
}
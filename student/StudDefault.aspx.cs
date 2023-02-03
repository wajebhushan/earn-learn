using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_StudDefault : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        l1.filllistview(ListView1, "select sname,semail,smobile from sregister where sid='" + Session["sid"] + "'");
        Label r1 = new Label();
        l1.filllabel(r1, "select * from sregister where semail='" + Session["email"] + "'", "sid");
        Session["sid"] = r1.Text;
    }
}
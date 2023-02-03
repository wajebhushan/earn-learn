using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mentor_ViewStud : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        e1.filllistview(ListView1, "select Sname,CRN_NO,Stud_email,Stud_mobile_no from StudForm");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewDateWise : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        e1.filllistview(ListView1, "Select * From Worksheet,StudForm where Worksheet.sf_id=StudForm.sf_id and Wdate between'" + Request.QueryString["Todate"] + "'and '" + Request.QueryString["Fromdate"] + "'");
    }
}
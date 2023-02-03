using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        e1.filllistview(ListView1, "select Sname,StudForm.Bname,B_account_no,sum(Payment)as Payment,sum(hour)as hour from Worksheet,StudForm where Worksheet.sf_id=StudForm.sf_id GROUP BY Worksheet.sf_id,StudForm.Sname,StudForm.Bname,StudForm.B_account_no");
    }
}
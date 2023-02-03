using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_ViewWorksheet : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        
      e1.filllistview(ListView1, "select Sname,sum(Payment)as Payment,sum(hour)as hour from Worksheet,StudForm where StudForm.sid='" + Session["sid"] + "' and Worksheet.sf_id=StudForm.sf_id GROUP BY Worksheet.sf_id,StudForm.Sname");
            
    }
}
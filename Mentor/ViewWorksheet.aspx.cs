﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mentor_ViewWorksheet : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        l1.filllistview(ListView1, "select Sname,Wdesc,Wdate,sum(Payment)as Payment,sum(hour)as hour from Worksheet,StudForm where Worksheet.sf_id=StudForm.sf_id GROUP BY Worksheet.sf_id,StudForm.Sname,Worksheet.Wdesc,Worksheet.Wdate");
        
    }
}















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































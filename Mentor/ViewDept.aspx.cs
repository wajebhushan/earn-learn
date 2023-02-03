using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mentor_ViewDept : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        e1.filllistview(ListView1, "Select Dname From Department");
    }
}
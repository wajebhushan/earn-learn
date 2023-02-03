using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UpdateStat : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
     Boolean status=true;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_click(object sender, EventArgs e)
    {
        try
        {
            e1.ins("update Worksheet Set status='" + status.ToString()+ "'where Wdate between'" + Todate.Text + "'and '" + Fromdate.Text + "' ");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error');</script>");
        }
    }
}
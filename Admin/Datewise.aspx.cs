using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Datewise : System.Web.UI.Page
{
    EandLDb e1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_click(object sender, EventArgs e)
    {
        try
        {
            if (e1.exists("select * from Worksheet where Wdate between '" + Todate.Text + "' and '" + Fromdate.Text + "'"))
            {
                Response.Redirect("ViewDateWise.aspx?Todate=" + this.Todate.Text + "&Fromdate=" + this.Fromdate.Text + "");
            }
            
        }
        catch (Exception ex)
        { 
          
        }
    }
}
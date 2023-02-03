using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class student_StudMaster : System.Web.UI.MasterPage
{
    EandLDb l1 = new EandLDb();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbString"].ToString());
    SqlCommand com;
    String str = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sid"] == null)
        {
            Response.Redirect("http://localhost:5745/SLogin.aspx");
        }
        con.Open();
        str = "select count(*)from StudForm where sid='" + Session["sid"] + "'";
        com = new SqlCommand(str, con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        if (count > 0)
        {
            fillform.Visible = false;
        }
        else
        {
            Edit.Visible = false;
            View.Visible = false;
            ViewWork.Visible = false;
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("http://localhost:5745/SLogin.aspx");
    }
}

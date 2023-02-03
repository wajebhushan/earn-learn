using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class student_StudForm : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbString"].ToString());
    SqlCommand com;
    String str = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label r1 = new Label();
        l1.filllabel(r1, "select * from sregister where sid='"+Session["sid"]+"'", "sname");
        Sname.Text = r1.Text;
        l1.filllabel(r1, "select * from sregister where sid='" + Session["sid"] + "'", "semail");
        Semail.Text = r1.Text;
        l1.filllabel(r1, "select * from sregister where sid='" + Session["sid"] + "'", "smobile");
        Smobile.Text = r1.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
  
            con.Open();
            str = "select count(*)from StudForm where CRN_NO='" + Scrn.Text + "' or sid='"+Session["sid"]+"'";
            com = new SqlCommand(str, con);
            int count = Convert.ToInt32(com.ExecuteScalar());
            con.Close();
            if (count > 0)
            {
                
            }
            else if (l1.ins("insert into StudForm(CRN_NO,Sname,Birthdate,Gender,Stud_email,Stud_mobile_no,Stud_class,Stud_loc_addr,Stud_per_addr,Stud_exam,Stud_marks,Stud_income,Bname,B_account_no,B_ifsc_no,sid)values('" + Scrn.Text + "','" + Sname.Text + "','" + Sbirthdate.Text + "','" + DropDownList2.SelectedItem.Text + "','" + Semail.Text + "','" + Smobile.Text + "','" + Sclass.Text + "','" + Sloc_addr.Text + "','" + Sper_addr.Text + "','" + Slast_exam.Text + "','" + Smark.Text + "','" + S_income.Text + "','"+DropDownList1.SelectedItem.Text+"','"+Anumber.Text+"','"+B_ifsc.Text+"','" + Session["sid"] + "')"))
             {
                Label r1 = new Label();
                l1.filllabel(r1, "select * from StudForm where CRN_NO='"+Scrn.Text+"' ", "sid");
                Session["sid"] = r1.Text;
                Response.Redirect("Studinfo.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error');</script>");
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Exception');</script>");
        }
    }
}
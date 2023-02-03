using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_EditForm : System.Web.UI.Page
{
    EandLDb l1=new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label r1=new Label();
        l1.filllabel(r1,"select * from StudForm","Sname");
        Sname.Text = r1.Text;
        l1.filllabel(r1, "select * from StudForm","CRN_NO");
        Scrn.Text = r1.Text;
        l1.filllabel(r1, "select * from StudForm", "stud_email");
        Semail.Text = r1.Text;
        l1.filllabel(r1, "select * from StudForm", "stud_mobile_no");
        Smobile.Text = r1.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        l1.ins("update StudForm set CRN_NO='" + Scrn.Text + "',Sname='" + Sname.Text + "',Birthdate='" + Sbirthdate.Text + "',Gender='" + DropDownList2.SelectedItem.Text + "',Stud_email='" + Semail.Text + "',Stud_mobile_no='" + Smobile.Text + "',Stud_class='" + Sclass.Text + "',Stud_loc_addr='" + Sloc_addr.Text + "',Stud_per_addr='" + Sper_addr.Text + "',Stud_exam='" + Slast_exam.Text + "',Stud_marks='" + Smark.Text + "',Stud_income='" + S_income.Text + "',Bname='" + DropDownList1.SelectedItem.Text + "',B_account_no='" + Anumber.Text + "',B_ifsc_no='" + B_ifsc.Text + "' where sid='" + Session["sid"] + "'");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Sname_TextChanged(object sender, EventArgs e)
    {

    }
}
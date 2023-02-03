using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Mentor_Worksheet : System.Web.UI.Page
{
    EandLDb l1 = new EandLDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        WDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
        l1.filllistview(ListView1, "select Sname,CRN_NO from StudForm where sf_id='" + Session["sf_id"] + "'");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DateTime startTime, endTime;
            TimeSpan timeDiff;
            int amount, hour;
            Boolean status = false;
            startTime = Convert.ToDateTime(Ftime.Text); ;
            endTime = Convert.ToDateTime(Ttime.Text);
            if (startTime > endTime)
            {
                timeDiff = new TimeSpan(startTime.Ticks - endTime.Ticks);
            }
            else
            {
                timeDiff = new TimeSpan(endTime.Ticks - startTime.Ticks);
            }
            hour = int.Parse(timeDiff.Hours.ToString());
            amount = hour * 30;
            if (l1.ins("insert into Worksheet(Dname,Wdate,Ftime,Ttime,Wdesc,sf_id,Payment,hour,status)values('" + Dname.Text + "','" + WDate.Text + "','" + Ftime.Text + "','" + Ttime.Text + "','" + Wdesc.Text + "','" + Session["sf_id"] + "','" + amount + "','" + hour + "','"+status+"')"))
            {
                Response.Write("<script>alert('Fill Worksheet Successfully')</script>");
            }
           /* l1.ins("update TotalAmount set amount=(select sum(amount)from TotalAmount GROUP BY sf_id)where sf_id='" + Session["sf_id"] + "'");*/
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('operation failed')</script>");
        }
    }
    protected void WDate_TextChanged(object sender, EventArgs e)
    {
        
    }
}
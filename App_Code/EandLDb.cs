using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for mylib
/// </summary>
public class EandLDb
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbString"].ToString());
    SqlCommand com;
    SqlDataReader dr;
    SqlDataAdapter da;
	public EandLDb()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public Boolean ins(String qry)
    {
        try
        {
            con.Open();
            com = new SqlCommand(qry, con);
            com.ExecuteNonQuery();
            con.Close();
            return true;
        }
        catch (Exception ex)
        {
            con.Close();
            return false;
        }
    }
    public Boolean exists(String qry)
    {
        try
        {
            con.Open();
            com = new SqlCommand(qry, con);
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                con.Close();
                return true;
            }
            else
            {
                con.Close();
                return false;
            }
        }
        catch (Exception ex)
        {
            con.Close();
            return false;
        }
    }
   /* public void filldropdown(DropDownList ddlist, String qry, String val)
    {
        con.Open();
        com = new SqlCommand(qry, con);
        dr = com.ExecuteReader();
        while (dr.Read())
        {
            ddlist.Items.Add(dr[val].ToString());
        }
        con.Close();
    

    }
    public void filltextbox(TextBox t1, String qry, String val)
    {
        con.Open();
        com = new SqlCommand(qry, con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
           t1.Text= dr[val].ToString();
        }
        con.Close();


    }*/
    public void filllabel(Label l1, String qry, String val)
    {
        con.Open();
        com = new SqlCommand(qry, con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            l1.Text = dr[val].ToString();
        }
        con.Close();


    }
    public void filllistview(ListView lv, String qry)
    {
        try
        {
            con.Open();
            com = new SqlCommand(qry, con);
            da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lv.DataSource = ds;
            lv.DataBind();
            con.Close();
        }
        catch (Exception ex)
        {
        }
    }
   


  /*  public void filllabel(string p1, string p2)
    {
        throw new NotImplementedException();
    }*/
}
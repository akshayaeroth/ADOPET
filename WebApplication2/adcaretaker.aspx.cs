using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class adcaretaker : System.Web.UI.Page
    {
        //connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // add button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                cmd.Connection = con;
                cmd.CommandText = "INSERT INTO caretakertb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Value + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox5.Text + "','" + TextBox8.Text + "'," + TextBox10.Text + ")";
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd.Connection = con;

                cmd.CommandText = "select max(cid) from caretakertb";
                da.SelectCommand = cmd;
                da.Fill(dt);
                string Username = TextBox8.Text + dt.Rows[0][0].ToString();
                cmd.Connection = con;
                cmd.CommandText = "insert into logintb values('','" + dt.Rows[0][0].ToString() + "','" + Username + "','" + TextBox10.Text + "','caretaker')";
                
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('User name for later login:" + Username + "');</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }
    }
}
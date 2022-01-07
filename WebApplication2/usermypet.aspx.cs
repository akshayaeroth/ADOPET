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
    public partial class adoptpet : System.Web.UI.Page
    {
        //connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        
        //ADD button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                FileUpload1.SaveAs(Server.MapPath("") + "\\pet\\" + FileUpload1.FileName);
                cmd.Connection = con;
                cmd.CommandText = "insert into pettb values(" + Session["uid"].ToString() + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox10.Text + "','" + TextBox8.Text + "','" + TextBox7.Text + "'," + TextBox6.Text + ",'" + FileUpload1.FileName + "')";

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Pet Details added Successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }
        
        //DELETE button
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from pettb where Pet_id='" + Session["uid"].ToString() + "' and Pet_breed = '" + TextBox2.Text + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Pet details Deleted Successfully');</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
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
    public partial class ctmanagevaccin : System.Web.UI.Page
    {
        //connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                SqlCommand cmd = new SqlCommand("INSERT INTO vaccintb(Pet,Type,Vaccinename,Age)values(@Pet,@Type,@Vaccinename,@Age)", con);
                
                cmd.Parameters.AddWithValue("@Pet", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Type", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Vaccinename", DropDownList1.SelectedItem.Value.Trim()); 
                cmd.Parameters.AddWithValue("@Age", TextBox3.Text.Trim());
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Vaccine Details Added Successfully');</script>");
                con.Close();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from vaccintb where Vaccinename='" + DropDownList1.SelectedItem.Value.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vaccine Details Deleted Successfully');</script>");
                GridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
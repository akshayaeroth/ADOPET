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
    public partial class newbooking : System.Web.UI.Page
    {
        //connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //submit button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                string bid = Session["uid"].ToString();
                SqlCommand cmd = new SqlCommand("INSERT INTO homecaretb(bid,Booked_for,Details,Pet_type,Pet_breed,Owner_name,Address,Pin,Slot,Booking_status)values(@bid,@Booked_for,@Details,@Pet_type,@Pet_breed,@Owner_name,@Address,@Pin,@Slot,@Booking_status)", con);
                cmd.Parameters.AddWithValue("@bid", bid);
                cmd.Parameters.AddWithValue("@Booked_for", DropDownList1.SelectedItem.Value.Trim());
                cmd.Parameters.AddWithValue("@Details", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Pet_type", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Pet_breed", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Owner_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Pin", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@Slot", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Booking_status", TextBox8.Text.Trim());

                con.Open();
                cmd.ExecuteNonQuery();          
                Response.Write("<script type=\"text/javascript\">alert('Booking Success');</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
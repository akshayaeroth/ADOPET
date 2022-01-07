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
    public partial class advet : System.Web.UI.Page
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

            if (checkIfvetExists())
            {
                Response.Write("<script>alert('Veterinarian details already exist');</script>");
            }
            else
            {
                addNewvet();
            }
        }
        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfvetExists())
            {
                updatevet();
                
            }
            else
            {
                Response.Write("<script>alert('Veterinarian details does not exist');</script>");
            }
        }
        //delete button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfvetExists())
            {
                deletevet();
                
            }
            else
            {
                Response.Write("<script>alert('Veterinarian details does not exist');</script>");
            }
        }

        bool checkIfvetExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from vettb where Vet_name='" + TextBox10.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {

                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

            void addNewvet()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO vettb(Vet_name,Hospital_name,Address,Service_from,Service_to,Phone_no)values(@Vet_name,@Hospital_name,@Address,@Service_from,@Service_to,@Phone_no)", con);

                    cmd.Parameters.AddWithValue("@Vet_name", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@Hospital_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@Service_from", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@Service_to", TextBox11.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone_no", TextBox7.Text.Trim());
                    

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Vet details added Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        void updatevet()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE vettb SET Hospital_name=@Hospital_name,Address=@Address,Service_from=@Service_from,Service_to=@Service_to,Phone_no=@Phone_no WHERE Vet_name='" + TextBox10.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@Hospital_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@Service_from", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@Service_to", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone_no", TextBox7.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vet details Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void deletevet()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from vettb where Vet_name='" + TextBox10.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vet details Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }
    }
}

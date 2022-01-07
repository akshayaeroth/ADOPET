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
    public partial class adminlogin : System.Web.UI.Page
    {

        //connection string
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //admin login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                cmd.Connection = con;
                cmd.CommandText = "select *from logintb where User_name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                da.SelectCommand = cmd;
                da.Fill(dt);


                if (dt.Rows.Count > 0)
                {

                    if (dt.Rows[0]["role"].ToString() == "admin")
                    {
                        Session["lid"] = dt.Rows[0][0].ToString();
                        Session["User_name"] = TextBox1.Text;
                        Response.Write("<script type=\"text/javascript\">alert('Successful Login');</script>");
                        Response.Redirect("adhome.aspx");
                    }
                    else
                    {
                        Response.Write("<script type=\"text/javascript\">alert('Invalid Credentials');</script>");
                    }
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
                else
                {
                    Response.Write("<script type=\"text/javascript\">alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
    
}
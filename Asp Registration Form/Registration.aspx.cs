using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_Registration_Form
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);

            try
            {
                con.Open();
                string command = "INSERT INTO [dbo.registration](Username,Email,Password)VALUES(@Username,@Email,@Password)";   
                SqlCommand cmd = new SqlCommand(command, con);


                cmd.Parameters.AddWithValue("@Username",txturname.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", txtpasswd.Text);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                  

            }
            catch(Exception)
            {
                throw;
            }
            finally
            {
                Response.Redirect("Login.aspx");
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txturname.Text = "";
            txtpasswd.Text = "";
            txtemail.Text = "";
            txtpasswd.Text = "";
        }

        
    }
}
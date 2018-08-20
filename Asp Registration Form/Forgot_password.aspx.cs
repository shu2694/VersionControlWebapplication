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
    public partial class Forgot_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {

        }

        protected void button2_Click(object sender, EventArgs e)
        {

        }

        protected void txt_Email_TextChanged(object sender, EventArgs e)
        {
            try
            {
                Int32 verify;
                string qry = ("SELECT COUNT(*) FROM [dbo.registration] WHERE Email=@Email");
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@Email",txt_Email.Text);
                con.Open();
                verify = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();

                if (verify > 0)
                {
                    string qry1 = ("UPDATE [dbo.registration] SET Password = @password WHERE Email=@Email");
                    cmd = new SqlCommand(qry1, con);
                    cmd.Parameters.AddWithValue("@password", txt_newpasswd.Text);
                    cmd.Parameters.AddWithValue("@Email", txt_Email.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Invalid Email-ID')", true);
                }
                }    
            catch(Exception)
            {
                throw;
            }
        }
    }
}
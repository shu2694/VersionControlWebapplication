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
    public partial class Add_Functional_Domain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "INSERT INTO [View_Functional_Domain]([Functional Domain Name],[Center Code],[Description])VALUES(@functionaldomainname,@centercode,@description)";
                SqlCommand cmd = new SqlCommand(query,con);
                cmd.Parameters.AddWithValue("@functionaldomainname", Functiondomain.Text);
                cmd.Parameters.AddWithValue("@centercode", Centercode.Text);
                cmd.Parameters.AddWithValue("@description", Description.Text);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            }
            catch(Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Functiondomain.Text = "";
            Centercode.Text = "";
            Description.Text = "";
            
        }
    }
}
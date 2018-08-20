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
    public partial class Add_subsidiary_Company : System.Web.UI.Page
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
                string query = "INSERT INTO [Create_company]([Company id],[Company name],Address,[Contact no],[Contact Person],Email) VALUES (@Companyid,@Companyname,@Address,@Contactno,@ContactPerson,@Email)";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@Companyid", (companyid.Text));
                cmd.Parameters.AddWithValue("@Companyname", companyname.Text);
                cmd.Parameters.AddWithValue("@Address", address.Text);
                cmd.Parameters.AddWithValue("@Contactno", contactno.Text);
                cmd.Parameters.AddWithValue("@ContactPerson", contactperson.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
               
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                Response.Redirect("View_Company.aspx");
            }
            catch (Exception)
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
            
        }

    }
}
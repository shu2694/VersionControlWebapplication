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
    public partial class Login : System.Web.UI.Page
    {

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);
        try
        {
            Int32 verify;
            string qry = ("SELECT COUNT(*) FROM [dbo.registration] WHERE Username=@username AND Password=@password");
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@username",txturname.Text);
            cmd.Parameters.AddWithValue("@password",txtpasswd.Text);
            con.Open();
            verify = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            
            if(verify>0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('invalid username and password')", true);
            }
            
        }
        catch (Exception)
        {
            throw;
        }
        
    }
    }
}
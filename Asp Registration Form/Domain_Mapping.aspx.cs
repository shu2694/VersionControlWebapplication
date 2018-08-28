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
    
    public partial class Domain_Mapping : System.Web.UI.Page
    {
        SqlDataAdapter sda;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);
            string qry = "select [Company Name] from [Create Company]";
            new SqlDataAdapter(qry, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            company_dropdown.DataSource = dt;
            company_dropdown.DataBind();
            company_dropdown.DataTextField = "[Company Name]";
            company_dropdown.DataValueField = "[Company Name]";
            company_dropdown.DataBind();
        }

        protected void company_dropdown_DataBinding(object sender, EventArgs e)
        {

        }
    }
}
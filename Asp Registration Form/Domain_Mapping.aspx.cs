using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
namespace Asp_Registration_Form
{
    public partial class Domain_Mapping : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ListItem> getcompany()
        {
            string query = "SELECT [Company id],[Company Name] FROM [Create_company]";
            string constr = ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    List<ListItem> getcompany = new List<ListItem>();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            getcompany.Add(new ListItem
                                {
                                    Text = sdr["Company Name"].ToString()
                                });
                        }

                    }
                    con.Close();
                    return getcompany;
                }

            }
        }

        [WebMethod]
        public static List<ListItem> getfunctionaldomain()
        {
            string query = "SELECT [Functional Domain Name] FROM [View_Functional_Domain]";
            string constr = ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    List<ListItem> getfunctionaldomain = new List<ListItem>();
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            getfunctionaldomain.Add(new ListItem
                            {
                                Text = sdr["Functional Domain Name"].ToString()
                            });
                        }

                    }
                    con.Close();
                    return getfunctionaldomain;
                }

            }
        }
    }
}
       
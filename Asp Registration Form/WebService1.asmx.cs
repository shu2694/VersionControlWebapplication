using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Web.Script.Services;
using System.IO;
using System.Data;
using System.Text;
using System.Configuration;

namespace Asp_Registration_Form
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        public class company
        {
            public string companyname;
            

        }

        static List<company> cmpny = new List<company> { };

        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]

        [WebMethod]
        public List<company> GetAllcompany()
        {

            string query = "SELECT  [Company Name] FROM [Create_company]";
            SqlCommand cmd = new SqlCommand(query);
            DataSet ds = GetData(cmd);
            DataTable dt = ds.Tables[0];
            foreach (DataRow item in ds.Tables[0].Rows)
            {
                company com = new company();
                com.companyname = item["Company Name"].ToString();
                cmpny.Add(com);
            }

            return cmpny;
        }
        private static DataSet GetData(SqlCommand cmd)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds);
                        return ds;
                    }
                }
            }
        }
    }
}

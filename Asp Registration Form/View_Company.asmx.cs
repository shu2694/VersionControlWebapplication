using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Data;
using System.Data.SqlClient;
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
         public class companyrecord
        {
            public string id { get; set; }
            public String companyid { get; set; }
            public string companyname { get; set; }
            public string address { get; set; }
            public string contactno { get; set; }
            public string contactperson { get; set; }
            public string email { get; set; }
            public string IsEdit { get; set; }
            public string IsDelete { get; set; }
            public string IsEnable { get; set; }
            public string IsDisable { get; set; }
        }

        [WebMethod]
         public void getallcompany()
         {
             List<companyrecord> companylist = new List<companyrecord>();
             string connection = ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString;
             using (SqlConnection con = new SqlConnection(connection))
             {
                 SqlCommand cmd = new SqlCommand("SELECT * FROM [Create_company]", con);
                 cmd.CommandType = CommandType.Text;
                 con.Open();
                 SqlDataReader sdr = cmd.ExecuteReader();
                 while (sdr.Read())
                 {
                     companyrecord cr = new companyrecord();
                     cr.id = sdr["id"].ToString();
                     cr.companyid = sdr["Company id"].ToString();
                     cr.companyname = sdr["Company Name"].ToString();
                     cr.address = sdr["Address"].ToString();
                     cr.contactno = sdr["Contact no"].ToString();
                     cr.contactperson = sdr["Contact Person"].ToString();
                     cr.email = sdr["Email"].ToString();
                     cr.IsEdit = sdr["IsEdit"].ToString();
                     cr.IsDelete = sdr["IsDelete"].ToString();
                     cr.IsEnable = sdr["IsEnable"].ToString();
                     cr.IsDisable = sdr["IsDisable"].ToString();
                     companylist.Add(cr);
                 }
             }
             JavaScriptSerializer js = new JavaScriptSerializer();
             Context.Response.Write(js.Serialize(companylist));
         }
    }
}

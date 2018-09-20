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
using System.Text;
namespace Asp_Registration_Form
{
    public partial class View_Company : System.Web.UI.Page
    {
        SqlDataAdapter sda;
        DataSet ds = new DataSet();
        StringBuilder htmltable = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindData();
        }
        private void BindData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["demo ApplicationConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT * FROM [Create_company]", con);
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            htmltable.Append("<table border = '1' class='w3-table-all w3-card-4'>");
            htmltable.Append("<tr><th>ID</th><th>Company Id</th><th>Company Name</th><th>Address</th><th>Contact No</th><th>Contact Person</th><th>Email</th><th>Action</th></tr>");
        
        
            if (!object.Equals(ds.Tables[0], null))  
            {  
                if (ds.Tables[0].Rows.Count > 0)  
                {  
  
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)  
                    {  
                        htmltable.Append("<tr>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["id"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Company id"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Company Name"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Address"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Contact no"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Contact Person"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Email"] + "</td>");
                        htmltable.Append("<td><input id='editbtn' style='background-color:blue' type='button' value='Edit'/>" + ds.Tables[0].Rows[i]["IsEdit"] + "</td>");
                        htmltable.Append("<td><input id='deletebtn'  type='button' value='Delete'/>" + ds.Tables[0].Rows[i]["IsDelete"] + "</td>");
                        htmltable.Append("<td><input id='enablebtn' style='background-color:blue' type='button' value='Enable'/>" + ds.Tables[0].Rows[i]["IsEnable"] + "</td>");
                        htmltable.Append("<td><input id='disablebtn' style='background-color:blue' type='button' value='Disable'/>" + ds.Tables[0].Rows[i]["IsDisable"] + "</td>");
                        htmltable.Append("</tr>"); 
                    }
                    htmltable.Append("</table>");  
                    dbplaceholder.Controls.Add(new Literal { Text = htmltable.ToString() });  
                }  
                else  
                {  
                    htmltable.Append("<tr>");  
                    htmltable.Append("<td align='center' colspan='4'>There is no Record.</td>");  
                    htmltable.Append("</tr>");  
                }  
            }  
        }
    }  
}  
        
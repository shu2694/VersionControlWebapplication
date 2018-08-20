using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace Asp_Registration_Form
{
    public partial class View_Functional_Domain : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("SELECT * FROM [View_Functional_Domain]",con);
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Button btn = new Button();

             htmltable.Append("<table border = '1' class='w3-table-all w3-card-4'>");
            htmltable.Append("<tr><th>ID</th><th>Functional Domain Name</th><th>Center Code</th><th>Description</th><th>Action</th></tr>");
        
        
            if (!object.Equals(ds.Tables[0], null))  
            {  
                if (ds.Tables[0].Rows.Count > 0)  
                {  
  
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)  
                    {  
                        htmltable.Append("<tr>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["id"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Functional Domain Name"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Center Code"] + "</td>");  
                        htmltable.Append("<td>" + ds.Tables[0].Rows[i]["Description"] + "</td>");                
                        htmltable.Append("</tr>"); 
                    }  
                    htmltable.Append("</table>");  
                    functiondomainplaceholder.Controls.Add(new Literal { Text = htmltable.ToString() });
                    
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
        
    

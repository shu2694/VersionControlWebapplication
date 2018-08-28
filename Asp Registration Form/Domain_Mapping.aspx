<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Domain_Mapping.aspx.cs" Inherits="Asp_Registration_Form.Domain_Mapping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<link href="Css/Domain_mapping.css" rel="stylesheet"/>
 
    <section>
        <div class="domain_header w3-container w3-card-4" style="background-color:aquamarine">
            <h3 style="font-family:cursive">
                Functional Domain Mapping
            </h3>
        </div>        
            <div class="domain_mapping_container w3-card-4">
                <div>
                    <br />
                    <label id="company_lbl">Select Organisation</label>
                </div>
                <div>
                    <asp:DropDownList ID="company_dropdown" runat="server" OnLoad="Page_Load" Width="320px" Height="35px" CssClass="Css/Domain_mapping.css">
                        <asp:ListItem>--Please Select Company--</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <br />
                <div>
                    <label id="domain_lbl">Functional Domain</label>
                    <br />
                    <div class="w3-center">
                        <div id="domain_list_unmapped">
                 
                        </div>
                        <div id="domain_list_mapped">
                 
                        </div>
                    </div>                    
                </div>
            </div> 
        
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT [Company Name] AS Company_Name, [Company id] AS Company_id FROM [Create_company]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:demo ApplicationConnectionString %>' SelectCommand="SELECT * FROM [View_Functional_Domain]"></asp:SqlDataSource>
</asp:Content>

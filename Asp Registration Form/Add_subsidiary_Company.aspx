<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Add_subsidiary_Company.aspx.cs" Inherits="Asp_Registration_Form.Add_subsidiary_Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<link rel="stylesheet" href="Css/Add_subsidiary_company.css" /> 
    <section class="company_section">
        <div class="company_container">
            <div class="w3-container w3-light-grey">
                <h3 style="text-shadow:1px 1px 0 #444">
                    Add subsidiary Company
                </h3>
                </div>
                <div class="w3-center" style="margin-left:7px; margin-right:7px;">
                    <asp:TextBox ID="companyid" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Company Id" required="required"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="companyname" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Company Name" required="required"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="address" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Address" required="required"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="contactno" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Contact Number" required="required"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="contactperson" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Contact Person" required="required"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="email" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Email Id" required="required"></asp:TextBox>
                </div>
                <div class="w3-center" style="margin-top:10px;">
                    <asp:Button runat="server" ID="button1" CssClass="w3-btn w3-white w3-border w3-border-black w3-round-large" OnClick="button1_Click" Text="Submit" />
                    <asp:Button runat="server" ID="button2" CssClass="w3-btn w3-white w3-border w3-border-black w3-round-large" OnClick="button2_Click" Text="Reset" />
                </div>
            </div>                
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT * FROM [Create_company]"></asp:SqlDataSource>
    
    
</asp:Content>

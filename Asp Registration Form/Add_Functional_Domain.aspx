<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Add_Functional_Domain.aspx.cs" Inherits="Asp_Registration_Form.Add_Functional_Domain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<link rel="stylesheet" href="Css/Add_Functional_domain.css" /> 
    <section class="domain_section">
        <div class="domain_container">
            <div class="w3-container w3-light-grey" >
                <h3 style="text-shadow:1px 1px 0 #444">
                    Add Functional Domain
                </h3>
                
            </div>
            <div class="w3-center" style="margin-left:7px; margin-right:7px;">
                <div class="w3-left">
                    <asp:Label ID="Functional_domain_label"  runat="server" Text="Functional Domain Name"></asp:Label>
                </div>
                <asp:TextBox ID="Functiondomain" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Enter Department" required="required"></asp:TextBox>
                
                <div class="w3-left">
                    <asp:Label ID="Center_Code_label" runat="server" Text="Center Code"></asp:Label>
                </div>
                <asp:TextBox ID="Centercode" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Enter Center Code" required="required"></asp:TextBox>
                
                <div class="w3-left">
                    <asp:Label ID="Description_label" runat="server" Text="Description"></asp:Label>
                </div>                
                <asp:TextBox ID="Description" runat="server" class="w3-input w3-border w3-round" Height="35" 
                        placeholder="Enter Department Description" required="required"></asp:TextBox>
                </div>
                <div class="w3-center" style="margin-top:10px;">
                    <asp:Button CssClass="w3-btn w3-white w3-border w3-border-black w3-round-large" runat="server" ID="button1" OnClick="button1_Click" Text="Save" />
                    <asp:Button CssClass="w3-btn w3-white w3-border w3-border-black w3-round-large" runat="server" ID="button2" OnClick="button2_Click" Text="Reset" />
                </div>
        </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT * FROM [View_Functional_Domain]"></asp:SqlDataSource>
</asp:Content>

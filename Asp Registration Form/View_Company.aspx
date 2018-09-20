<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="View_Company.aspx.cs" Inherits="Asp_Registration_Form.View_Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section>
        <h2><i class="fa fa-lg fa-user text.primary"></i>View List</h2>
            <div class="w3-container">
                <table class="w3-table-all w3-card-4">
                    <tr>
                       <td>
                           <asp:PlaceHolder ID="dbplaceholder" runat="server" >
                           </asp:PlaceHolder>                           
                       </td>                        
                    </tr>
                </table>
            </div>   
        <div>
            <table id="ddl">
                <tbody>
                    <tr>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>      
        <input type="button" onclick="disable_click" style="background-color:blue" /> 
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" 
            SelectCommand="SELECT * FROM [Create_company]"></asp:SqlDataSource>
</asp:Content>

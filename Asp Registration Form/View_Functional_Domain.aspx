<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="View_Functional_Domain.aspx.cs" Inherits="Asp_Registration_Form.View_Functional_Domain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <section>
        <div>
            <h3>
                Functional Domain List
            </h3>
            <div class="w3-container">
                <table class="w3-table-all w3-card-4">
                    <tr>
                       <td>
                           <asp:PlaceHolder ID="functiondomainplaceholder" runat="server">                     
                           
                           </asp:PlaceHolder>
                       </td>                                              
                    </tr>
                </table>
            </div>          
        </div>
        
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT * FROM [View_Functional_Domain]"></asp:SqlDataSource>
</asp:Content>

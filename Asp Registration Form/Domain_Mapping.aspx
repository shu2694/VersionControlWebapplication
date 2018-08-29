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
                    <label id="company_lbl">Select Organisation:</label>                    
                    <asp:DropDownList ID="Company" runat="server">
                        <asp:ListItem>--Please select Company--</asp:ListItem>
                    </asp:DropDownList>
                </div>
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
</asp:Content>

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
                        <select id="company_dropdown" name="company_dropdown">
                        <option value="0">--Please select Company--</option>
                        <option value="1">CRAI</option>
                    </select>
                </div>
                 <div>
                    <label id="domain_lbl">Functional Domain</label>
                    <br />
                    <div class="w3-center">
                        <div id="domain_list_unmapped">
                            <asp:ListView ID="unmapped_listview" runat="server" OnItemDataBound="unmapped_listview_ItemDataBound" DataSourceID="SqlDataSource1">
                                <AlternatingItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label Text='<%# Eval("Functional_Domain_Name") %>' runat="server" ID="Functional_Domain_NameLabel" /></td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                                        </td>
                                        <td>
                                            <asp:TextBox Text='<%# Bind("Functional_Domain_Name") %>' runat="server" ID="Functional_Domain_NameTextBox" /></td>
                                    </tr>
                                </EditItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                                        </td>
                                        <td>
                                            <asp:TextBox Text='<%# Bind("Functional_Domain_Name") %>' runat="server" ID="Functional_Domain_NameTextBox" /></td>
                                    </tr>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label Text='<%# Eval("Functional_Domain_Name") %>' runat="server" ID="Functional_Domain_NameLabel" /></td>
                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                                    <tr runat="server" style="">
                                                        <th runat="server">Functional_Domain_Name</th>
                                                    </tr>
                                                    <tr runat="server" id="itemPlaceholder"></tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <tr style="">
                                        <td>
                                            <asp:Label Text='<%# Eval("Functional_Domain_Name") %>' runat="server" ID="Functional_Domain_NameLabel" /></td>
                                    </tr>
                                </SelectedItemTemplate>
                            </asp:ListView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:demo ApplicationConnectionString %>' SelectCommand="SELECT [Functional Domain Name] AS Functional_Domain_Name FROM [View_Functional_Domain]"></asp:SqlDataSource>
                        </div>
                        <div id="domain_list_mapped">
                 
                        </div>
                   </div>                    
                </div>
            </div>         
    </section>
</asp:Content>

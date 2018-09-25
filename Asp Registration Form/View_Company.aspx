<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="View_Company.aspx.cs" Inherits="Asp_Registration_Form.View_Company" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <link href="Css/View_Company.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                method: 'post',
                url: 'View_Company.asmx/getallcompany',
                dataType: "json",
                success: function (data) {
                    var companyTable = $('div table tbody');
                    companyTable.empty();
                    $(data).each(function (index, emp) {
                        companyTable.append('<tr><td>' + emp.id + '</td><td>'
                            + emp.companyid + '</td><td>' + emp.companyname + '</td><td>' + emp.address
                            + '</td><td>' + emp.contactno + '</td><td>' + emp.contactperson + '</td><td>' + emp.email
                            + '</td><td><a id="edit_bt" class="w3-btn w3-white w3-border w3-border-black w3-round-large" href="#Edit_Company">Edit</a>' + emp.IsEdit
                            + '</td><td><a id="delete_bt" class="w3-btn w3-white w3-border w3-border-black w3-round-large" href="#">Delete</a>' + emp.IsDelete
                            + '</td><td><a id="enable_bt" class="w3-btn w3-white w3-border w3-border-black w3-round-large" href="#">Enable</a>' + emp.IsEnable
                            + '</td><td><a id="disable_bt" class="w3-btn w3-white w3-border w3-border-black w3-round-large" href="#">Disable</a>' + emp.IsDisable
                            + '</td></tr>');
                    });
                },
                error: function (err) {
                    alert(err);
                }
            });
        });
       
    </script>  
    <section>
        <h2><i class="fa fa-lg fa-user text.primary"></i>View List</h2>
            <div class="w3-container">
                <table id="view_company" class="w3-table-all w3-card-4">
                    <thead>
                        <tr>
                            <th>ID</th>  
                            <th>Company id</th>  
                            <th>Company Name</th>  
                            <th>Address</th>  
                            <th>Contact no</th>  
                            <th>Contact Person</th>
                            <th>Email</th>
                            <th></th>
                            <th></th>
                            <th>Action</th>
                            <th></th>
                        </tr>
                        </thead>
                    <tbody></tbody>
                </table>
            </div>   
        <input id="editbtn1" type="button" runat="server" value="Button"/>
        <asp:Button runat="server" Text="button" />
      
    </section>
    <div id="Edit_Company" class="modalDialog">
        <div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Edit</h2>
            <hr />
		<div>
            <div id="edit">
            <asp:Label runat="server" CssClass="lable">Company id</asp:Label>
            <asp:TextBox ID="companyid" runat="server" CssClass="textbox"  Width="200" Height="35" 
            required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" CssClass="lable">Company Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"  Width="200" Height="35" 
            required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" CssClass="lable">Address</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"  Width="200" Height="35" 
            required="required"></asp:TextBox>
            <br />
            <br />
            </div>
            <div id="edit1">
            <asp:Label runat="server" CssClass="lable">Contact no</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Width="200" Height="35" 
            required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" CssClass="lable">Contact Person</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="200" Height="35" 
            required="required"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" CssClass="lable">Email</asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="200" Height="35" 
            required="required"></asp:TextBox>
		    </div>
            </div>
	    </div>
    </div>
</asp:Content>
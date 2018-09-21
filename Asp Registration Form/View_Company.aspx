<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="View_Company.aspx.cs" Inherits="Asp_Registration_Form.View_Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
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
                            + '</td><td><input id="editbtn" class="w3-btn w3-gray w3-border w3-round" onclick="edit_click" type="button" runat="server" value="Edit"/>' + emp.IsEdit
                            + '</td><td><input id="deletebtn" class="w3-btn w3-white w3-border w3-border-black w3-round-large" type="button" runat="server" value="Delete"/>' + emp.IsDelete
                            + '</td><td><input id="enablebtn" class="w3-btn w3-white w3-border w3-border-black w3-round-large" type="button" runat="server" value="Enable"/>' + emp.IsEnable
                            + '</td><td><input id="disablebtn" class="w3-btn w3-white w3-border w3-border-black w3-round-large" type="button" runat="server" value="Disable"/>' + emp.IsDisable
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
        <input type="button" runat="server" onclick="edit_click"/>
    </section>
</asp:Content>

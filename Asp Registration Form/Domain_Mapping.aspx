<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Domain_Mapping.aspx.cs" Inherits="Asp_Registration_Form.Domain_Mapping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<link href="Css/Domain_mapping.css" rel="stylesheet"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                type: "POST",
                url: "Domain_Mapping.aspx/getcompany",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var company_dropdown = $("[id*=company_dropdown]");
                    company_dropdown.empty().append('<option selected="selected" value="0">---Please select Company---</option>');
                    $.each(r.d, function () {
                        company_dropdown.append($("<option></option>").html(this['Text']));
                    });
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            var row = "";
            $.ajax({
                type: "POST",
                url: "Domain_Mapping.aspx/getfunctionaldomain",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    $.each(msg.d, function (index, obj) {
                        row += "<tr><td><lable id='functionaldomaincheckboxlbl'><input id='checkboxlist' type=checkbox>" + obj.Text + "</lable></td></tr>";
                    });
                    $("#unmapped_domain_tbl").append(row);
                }           
            });
        });
    </script>
    <script>
        $(function () {
            $('.selectallcheckbox').click(function () {
                if ($(this).is(':checked')) {
                    $('div input').attr('checked', true);
                } else {
                    $('div input').attr('checked', false);
                }
            });
        });
    </script>
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
                           
                        </select>
                </div>
                <hr/>
                <div class="w3-center">
                     <div style="margin-top:15px;">
                        <label id="unmapped_domain_lbl">Unmapped Domain</label>
                        <label id="mapped_domain_lbl">Mapped Domain</label>
                     </div>
                    <div style="margin-top:10px;">
                        <div id="domain_list_unmapped">
                           <table class="w3-table-all w3-card-2" id="unmapped_domain_tbl" border="0">
                               <tbody>
                                   <tr> 
                                       <td>
                                            <asp:Label style="font-family:'Arial Rounded MT';font-size:medium" runat="server"><input name="sample" class="selectallcheckbox" type="checkbox"/>Select All</asp:Label>
                                       </td>                            
                                   </tr>
                               </tbody>
                           </table>
                        </div>
                        <div id="btn_group" >
                            <asp:Button ID="mapped_btn" CssClass="w3-btn w3-green w3-border w3-border-black w3-round-medium" runat="server" Text="Map" />
                            <asp:Button ID="unmapped_btn" CssClass="w3-btn w3-brown w3-border w3-border-black w3-round-medium" runat="server" Text="Unmap" />
                        </div> 
                        <div id="domain_list_mapped">
                            
                        </div>
                   </div>                    
                </div>
            </div>         
    </section>
</asp:Content>

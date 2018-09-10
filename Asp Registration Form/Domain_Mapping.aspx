<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Domain_Mapping.aspx.cs" Inherits="Asp_Registration_Form.Domain_Mapping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<link href="Css/Domain_mapping.css" rel="stylesheet"/>
    <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">


        $(document).ready(function () {

            $("#company_dropdown").removeData();
            Greating();
        });

        function Greating() {

            $.ajax({

                type: "POST",
                url: "WebService1.asmx/GetAllcompany",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {

                    var cmpny = response.d;
                    $.each(cmpny, function (cmpny) {

                        $("#company_dropdown").append("<option> '"+ cmpny +"' </option>)");
                    });

                    console.log(response);
                },

                error: function (response) {
                    $("#company_dropdown").append("<option>error</option>");

                    console.log(response);
                }
            });
        }
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

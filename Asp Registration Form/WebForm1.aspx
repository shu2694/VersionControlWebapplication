<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Asp_Registration_Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        $('#<%=btnclick.ClientID%>').click(function () {
        $("#popupdiv").dialog({
            title: "jQuery Popup from Server Side",
            width: 550,
            height: 350,
            modal: true,
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
})


</script>
</head>
<body>
    <form id="form1" runat="server">
       <div>
<div id="popupdiv" title="Basic modal dialog" style="display: none">
<b> Welcome to Aspdotnet-Suresh.com</b>
    <input type="text" />
</div>
<table style="margin-top:200px;align-items:center">
<tr>
<td>
<asp:Button ID="btnclick" runat="server" Text="Show Modal Popup" />
    <input id="btnclick1" type="button" value="Button" runat="server" />
</td>
</tr>
</table>

</div>

    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_password.aspx.cs" Inherits="Asp_Registration_Form.Forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <title></title>
    <link href="Css/Forgot_password.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <section>
        <div class="Main_Logo">
            <img class="Main_Logo_image" runat="server" src="Images/Mainlogo-gray.png" />
        </div>
        <div class="Forgot_password_container">
            <div>
                <h3>Forgot Password</h3>
            </div>
              <div class="w3-center">
                  <asp:TextBox ID="txt_Email" class="w3-input w3-border w3-round-large" placeholder="Enter your Email-Id" 
                    runat="server" required="required" OnTextChanged="txt_Email_TextChanged"></asp:TextBox>
                    
                  <asp:TextBox ID="txt_newpasswd" class="w3-input w3-border w3-round-large" placeholder="New Password" 
                    runat="server" required="required"></asp:TextBox>
                             
                  <asp:TextBox ID="txt_re_enter_password" class="w3-input w3-border w3-round-large" placeholder="Re-Enter Password" 
                    runat="server" required="required" ></asp:TextBox>
                </div>
                <div class="w3-center">
                    <asp:Button CssClass="w3-btn w3-white w3-border w3-border-green w3-round-large" runat="server" ID="button1" OnClick="button1_Click" Text="Submit" />
                    <asp:Button CssClass="w3-btn w3-white w3-border w3-border-green w3-round-large" runat="server" ID="button2" OnClick="button2_Click" Text="Reset" />
            </div>
            <div style="padding-top:10px">
                <asp:HyperLink ID="Login_page" NavigateUrl="~/Login.aspx" runat="server" Font-Size="Medium" ForeColor="Blue" Font-Underline="true">Continue to Login</asp:HyperLink>
            </div>
        </div>
    </section>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT * FROM [dbo.registration]"></asp:SqlDataSource>
    </form>
</body>
</html>

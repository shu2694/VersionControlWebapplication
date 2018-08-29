<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Asp_Registration_Form.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
  <title>Login Form</title>

    <link href="Css/Login.css" rel="stylesheet"/>
    
    <style>
        @import url('https://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>
    <script>
        function myFunction() {
            var x = document.getElementById("txtpasswd");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
     </script>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="Main_Logo">
                <img class="Main_Logo_image" runat="server" src="Images/Mainlogo-gray.png" />
            </div>
                <div class="login_container"> 
                    <div>                  
                         <h3 class="w3-center">Login</h3>
                         <div>
                             <asp:TextBox ID="txturname" class="w3-input w3-border w3-round-large" placeholder="Username" 
                             runat="server" required="required"></asp:TextBox>
                             <asp:TextBox ID="txtpasswd" class="w3-input w3-border w3-round-large" placeholder="Password" 
                             TextMode="Password" runat="server" required="required" ></asp:TextBox>
                             <div class="passwd_show w3-right">
                                 <input type="checkbox" onclick="myFunction()"/>Show Password
                             </div>
                             </div>
                            <br />
                             <div class="w3-right">
                                  <asp:hyperlink ID="Forgot_Password" class="Forgot_password_link" NavigateUrl="~/Forgot_password.aspx"  runat="server" >Forgot Password?</asp:hyperlink>
                                 </div>
                             <div class="w3-center">
                             <div class="Login_button">
                         <p>
                             <asp:Button CssClass="w3-btn w3-blue-gray w3-border w3-border-green w3-round-large w3-block" runat="server" OnClick="Unnamed_Click" Text="Login" />                            
                         </p>
                           <div class="w3-right">  
                             <asp:HyperLink ID="Registration_page" runat="server" NavigateUrl="~/Registration.aspx" Font-Size="Small" Font-Underline="True" >New User ? Sign Up</asp:HyperLink>
                           </div>                     
                     </div>
                  </div>
               </div>                                    
            </div>
        </section>
    </form>
</body>
</html>

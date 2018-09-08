<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Asp_Registration_Form.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <title>Registration Form</title>

    <link href="Css/Registration.css" rel="stylesheet"/>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>  
    <script type="text/javascript">
        function usernameAvailability(){
            $.ajax({
                type:"Post",
                url: "Registration.aspx/checkusername",
                data:'{Username:"' + $("#<%=txturname.ClientID%>")[0].value + '"}',
                contentType: "application/json; charset=utf-8",  
                dataType: "json",  
                success: OnSuccess,  
                failure: function (response) {  
                    alert(response);  
                }  
            });
        }
        //function Onsuccess
        function OnSuccess(response) {
            var msg = $("#<%=username_status.ClientID%>")[0];
            switch (response.d) {
                case "true":
                    msg.style.display = "block";
                    msg.style.color = "red";
                    msg.innerHTML = "Username already Exists";
                    break;
                case "false":
                    msg.style.display = "block";
                    msg.style.color = "green";
                    msg.innerHTML = "Username is available";
                    break;
            }
        }
    </script>
    <script type="text/javascript">
        function EmailAvailability() {
            $.ajax({
                type: "Post",
                url: "Registration.aspx/checkemail",
                data: '{Email:"' + $("#<%=txtemail.ClientID%>")[0].value + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccessemail,
                    failure: function (response) {
                        alert(response);
                    }
                });
            }
            //function Onsuccess
            function OnSuccessemail(response) {
                var msg = $("#<%=email_status.ClientID%>")[0];
                switch (response.d) {
                    case "true":
                        msg.style.display = "block";
                        msg.style.color = "red";
                        msg.innerHTML = "Email already Exists";
                        break;
                    case "false":
                        msg.style.display = "block";
                        msg.style.color = "green";
                        msg.innerHTML = "Email is available";
                        break;
                }
            }
    </script>
    <style>
        @import url('https://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');        
    </style>
</head>
<body>
      <form id="form1" runat="server">            
       <section >
             <div class="Main_Logo">
                <img class="Main_Logo_image" runat="server" src="Images/Mainlogo-gray.png" />
             </div>
             <div class="container">
                  <div>
                   <h3>Sign up</h3>
                         <div>
                            <asp:TextBox ID="txturname" CssClass="w3-input w3-border w3-round-large" placeholder="Username" 
                            onchange="usernameAvailability()" runat="server" required="required" ></asp:TextBox>
                            <asp:Label CssClass="w3-left" ID="username_status" runat="server"></asp:Label>
                            
                             
                           
                            <asp:TextBox ID="txtemail" CssClass="w3-input w3-border w3-round-large" placeholder="E-mail" 
                            runat="server" onchange="EmailAvailability()" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                            title="Please enter correct email format Ex:- abc@example.com"></asp:TextBox>
                           
                            <asp:Label CssClass="w3-left" ID="email_status" runat="server"></asp:Label>
                            
                            
                            <asp:TextBox ID="txtpasswd" CssClass="w3-input w3-border w3-round-large" Name="pwd1" 
                            placeholder="Password" TextMode="Password" runat="server" 
                            required="required"></asp:TextBox> 
                           
                            
                            
                            <asp:TextBox ID="txtcop" CssClass="w3-input w3-border w3-round-large" 
                            placeholder="Confirm Password" Name="pwd2" TextMode="Password" 
                            runat="server" required="required"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToValidate="txtcop"
                            CssClass="ValidationError"
                            ErrorMessage="Password do not Match"
                            ControlToCompare="txtpasswd"
                            ToolTip="Password must be the same"    />
                            
                            
                         </div>
                      <br />
                         
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="Login_page_link" CssClass="Sign_In_link" runat="server" NavigateUrl="~/Login.aspx" Font-Size="Smaller">Already Registerd ? Click Here</asp:HyperLink>
                         
                      <br />
                         <div class="w3-center" >
                            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn_sign_up" Text="Sign Me Up"/>
                            <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" CssClass="btn_cancel" Text="Reset" />
                         </div>                  
                         
                </div>
            </div>
        </section>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo ApplicationConnectionString %>" SelectCommand="SELECT * FROM [dbo.registration]"></asp:SqlDataSource>
</body>
</html>

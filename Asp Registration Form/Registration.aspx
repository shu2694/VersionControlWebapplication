<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Asp_Registration_Form.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <title>Registration Form</title>

    <link href="Css/Registration.css" rel="stylesheet"/>

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
                         <div class="w3-center">
                            <asp:TextBox ID="txturname" CssClass="w3-input w3-border w3-round-large" placeholder="Username" 
                            runat="server" required="required" ></asp:TextBox>

                            
                           
                            <asp:TextBox ID="txtemail" CssClass="w3-input w3-border w3-round-large" placeholder="E-mail" 
                            runat="server" required="required" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                            title="Please enter correct email format Ex:- abc@example.com"></asp:TextBox>
                           
                            
                            
                            <asp:TextBox ID="txtpasswd"  title="Password contain min 6 character" CssClass="w3-input 
                            w3-border w3-round-large" Name="pwd1" placeholder="Password" TextMode="Password" runat="server" 
                            required="required"></asp:TextBox> 
                           
                            
                            
                            <asp:TextBox ID="txtcop" title="Please enter the same password as above" CssClass="w3-input 
                            w3-border w3-round-large" placeholder="Confirm Password" Name="pwd2" TextMode="Password" 
                            runat="server" required="required"></asp:TextBox>
                            
                            
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

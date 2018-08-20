<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard_Master.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Asp_Registration_Form.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Dashboard
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <link rel="stylesheet" href="Css/Dashboard.css" />      
    <section>
         <div id="domain_view"> 
             <div class="Css/Dashboard.css">
                 <label id="domain_view_label">24</label>     
             </div>  
             <div>
                  <i class="fa fa-user-o" style="font-size:50px; margin-left:188px"></i>       
             </div> 
              
             <div>
                 <label style="color:gray; font-size:25px;";>Domain</label>     
             </div>
             <div>
                 <label style="color:black; font-size:15px";>Total Active Functional domain</label>
             </div>
                                     
         </div>
        <div id="roles_view">
             <div>
                 <label id="roles_view_label">24</label>     
             </div>
            <div>
                  <i class="fa fa-user-o" style="font-size:50px; margin-left:188px"></i>       
             </div>
             <div>
                 <label style="color:gray; font-size:25px;">Roles</label>
             </div>  
             <div>
                 <label style="color:black; font-size:15px;";>Total Active Role</label>
             </div>
         </div>
        <div id="users_view">
             <div>
                 <label id="users_view_label">24</label>     
             </div>
            <div>
                  <i class="fa fa-user-o" style="font-size:50px; margin-left:188px; color:chocolate"></i>       
             </div>
             <div>
                 <label style="color:gray; font-size:25px";>Users</label>
             </div>  
             <div>
                 <label style="color:black; font-size:15px";>Total Active Users</label>
             </div>
         </div>
        <div id="document_view">
             <div>
                 <label id="documents_view_label">24</label>     
             </div>
            <div>
                  <i class="fa fa-file-text-o" style="font-size:50px; margin-left:188px"></i>       
             </div>
             <div>
                 <label style="color:gray; font-size:25px";>Documents</label>
             </div>  
                 <label style="color:black; font-size:15px";>Total Active documents</label>
             </div>
         <div class="w3-right" style="background-color:darkgrey" id="profile_view">
             <div>
                  <i class="fa fa-user" style="font-size:50px; margin-left:150px"></i>       
             </div>
             <div>
                 <label style="color:darkblue; font-size:25px; font-family:'Times New Roman'";>Profile</label>
             </div>
             </div>    
    </section>    
    <section>
        <div id="data_summary">

        </div>
        <div class="w3-right" id="document_class_view">

        </div>
    </section>
</asp:Content>

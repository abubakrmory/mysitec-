<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 100px;color:#000;">
  <div class="row">
    <div class="col-md-4 col-md-offset-4 well">
      <h2 class="text-center" > Login Page For User</h2>
      <br />
      
        <div class="form-group">
          <label>Username</label>
          
            <asp:TextBox ID="username" class="form-control" placeholder="Enter Your Username..."  required="" runat="server" autocomplete="off"></asp:TextBox>
        </div>
        <div class="form-group">
          <label>Password</label>
            <asp:TextBox ID="password" class="form-control" placeholder="Enter Your Password..." TextMode="Password" required="" runat="server" autocomplete="off"></asp:TextBox>
        </div>
        <div class="form-group">
        <asp:Button ID="Login" runat="server" Text="Login" class="btn btn-success btn-block text-uppercase " OnClick="btn_Login" />
    </div>
        <br />
      <a href="newuser.aspx" style="color:#000;" class="text-center">New User? Create Account Here.</a>
        </div>
        
  </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password] FROM [user]"></asp:SqlDataSource>
</asp:Content>


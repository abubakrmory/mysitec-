<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="company.aspx.cs" Inherits="company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 70px;color:#000;">
  <div class="row">
    <div class="col-md-4 col-md-offset-4 well">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/img/company.png" Height="100px" ImageAlign="Middle" Width="100px" />
            </div>
        </div>
       
      <h2 class="text-center heading-title" > Login Page For Company</h2>
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
       
      <a href="newcompany.aspx" style="color:#000;" class="text-center">New Company? Create Account Here.</a>
        </div>
        
  </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CompanyId ] AS CompanyId_, [Name], [Phone], [Email], [Address], [Username], [Password] FROM [company]"></asp:SqlDataSource>
</asp:Content>


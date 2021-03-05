<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 80px;color:#000;">
  <div class="row">
    <div class="col-md-4 col-md-offset-4 well">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/img/admin.png" Height="100px" ImageAlign="Middle" Width="100px" />
            </div>
        </div>
      <h2 class="text-center heading-title"> Login Page For Admin</h2>
      <br />
      
        <div class="form-group">
          <label>Username</label>           
            <asp:TextBox ID="username" class="form-control" placeholder="Enter Your Username..."    runat="server" autocomplete="off"></asp:TextBox>         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="username" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>         
        </div>
        <div class="form-group">
          <label>Password</label>
            <asp:TextBox ID="password" class="form-control" placeholder="Enter Your Password..." TextMode="Password"  runat="server" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="password" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>    
        </div>
        <div class="form-group">
        <asp:Button ID="Login" runat="server" Text="Login" class="btn btn-success btn-block text-uppercase " OnClick="btn_Login" />
    </div>
        </div>
        
  </div>
</div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPasswordUser.aspx.cs" Inherits="ForgetPasswordUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style="margin-top: 70px; color: #000;">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 well">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo.png" Height="100px" ImageAlign="Middle" Width="100px" />
                    </div>
                </div>
                <h2 class="text-center heading-title">Forget Password For User</h2>
                <br />
                <div class="form-group">
                    <label>Email</label>
                    <asp:TextBox ID="Email" class="form-control" placeholder="Enter Your Email..." runat="server" autocomplete="off"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="Email" Display="Dynamic" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <asp:Button ID="Login" runat="server" Text="Get Your Password" class="btn btn-success btn-block text-uppercase " OnClick="btn_Login" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>


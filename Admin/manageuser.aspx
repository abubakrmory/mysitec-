<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="Admin_manageuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 50px;">
  <h2 class="text-center">Manage User Account</h2>
  <br />
 
  
    

    <asp:GridView ID="GridView1" cssClass="table table-bordered table-responsive" runat="server" DataSourceID="SqlDataSource1" Width="100%" AutoGenerateColumns="False" DataKeyNames="UserId" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:HyperLinkField Text="Edit" DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="edituser.aspx?UserId={0}">
            <ControlStyle CssClass="btn btn-warning"  />
            <ItemStyle HorizontalAlign="Center" />
            </asp:HyperLinkField>
            <asp:HyperLinkField Text="Delete" DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="deleteuser.aspx?UserId={0}">
            <ControlStyle CssClass="btn btn-danger" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:HyperLinkField>
        </Columns>
        <HeaderStyle CssClass="table table-Danger" HorizontalAlign="Center" />

    
    </asp:GridView>  


 
       

</div> <!-- container -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password] FROM [user]" OldValuesParameterFormatString="original_{0}">
    </asp:SqlDataSource>
</asp:Content>


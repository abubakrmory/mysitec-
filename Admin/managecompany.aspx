<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="managecompany.aspx.cs" Inherits="Admin_managecompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 50px;">
  <h2 class="text-center">Manage Company Account</h2>
  <br />

  
    

    <asp:GridView ID="GridView1" cssClass="table table-bordered table-responsive table-hover" runat="server" DataSourceID="SqlDataSource1" Width="100%" AutoGenerateColumns="False" DataKeyNames="CompanyId" HorizontalAlign="Center" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" InsertVisible="False" ReadOnly="True" SortExpression="CompanyId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:HyperLinkField Text="Edit" ControlStyle-CssClass="btn btn-warning" DataNavigateUrlFields="CompanyId" DataNavigateUrlFormatString="editcompany.aspx?CompanyId={0}">
<ControlStyle CssClass="btn btn-warning"></ControlStyle>

            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:HyperLinkField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-danger" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <HeaderStyle CssClass="table table-Danger" HorizontalAlign="Center" />

    
    </asp:GridView>  


 
       

</div> <!-- container -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CompanyId , Name, Phone, Email, Address, Username, Password FROM company" DeleteCommand="DELETE FROM [company] WHERE [CompanyId ] = @original_CompanyId_" InsertCommand="INSERT INTO [company] ([Name], [Phone], [Email], [Address], [Username], [Password]) VALUES (@Name, @Phone, @Email, @Address, @Username, @Password)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [company] SET [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Username] = @Username, [Password] = @Password WHERE [CompanyId ] = @original_CompanyId_">
         <DeleteParameters>
             <asp:Parameter Name="original_CompanyId_" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="Phone" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="Username" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="Phone" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Address" Type="String" />
             <asp:Parameter Name="Username" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
             <asp:Parameter Name="original_CompanyId_" Type="Int32" />
         </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


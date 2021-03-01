<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="Admin_manageuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 50px;">
  <h2 class="text-center">Manage User Account</h2>
  <br />
 
  
    

    <asp:GridView ID="GridView1" cssClass="table table-bordered table-responsive table-hover" runat="server" DataSourceID="SqlDataSource1" Width="100%" AutoGenerateColumns="False" DataKeyNames="UserId" HorizontalAlign="Center" OnRowDataBound="GridView1_RowDataBound">
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
            <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="edituser.aspx?UserId={0}" Text="Edit">
            <ControlStyle CssClass="btn btn-warning" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:HyperLinkField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ControlStyle CssClass="btn btn-danger" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <HeaderStyle CssClass="table table-Danger" HorizontalAlign="Center" />

    
    </asp:GridView>  


 
       

</div> <!-- container -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserId], [Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password] FROM [user]" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [user] WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [user] ([Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password]) VALUES (@Name, @Gender, @Phone, @Email, @Qualifications, @Experience, @Username, @Password)" UpdateCommand="UPDATE [user] SET [Name] = @Name, [Gender] = @Gender, [Phone] = @Phone, [Email] = @Email, [Qualifications] = @Qualifications, [Experience] = @Experience, [Username] = @Username, [Password] = @Password WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_UserId" Type="Int32" />
             <asp:Parameter Name="original_Name" Type="String" />
             <asp:Parameter Name="original_Gender" Type="String" />
             <asp:Parameter Name="original_Phone" Type="String" />
             <asp:Parameter Name="original_Email" Type="String" />
             <asp:Parameter Name="original_Qualifications" Type="String" />
             <asp:Parameter Name="original_Experience" Type="String" />
             <asp:Parameter Name="original_Username" Type="String" />
             <asp:Parameter Name="original_Password" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter Name="Phone" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Qualifications" Type="String" />
             <asp:Parameter Name="Experience" Type="String" />
             <asp:Parameter Name="Username" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Name" Type="String" />
             <asp:Parameter Name="Gender" Type="String" />
             <asp:Parameter Name="Phone" Type="String" />
             <asp:Parameter Name="Email" Type="String" />
             <asp:Parameter Name="Qualifications" Type="String" />
             <asp:Parameter Name="Experience" Type="String" />
             <asp:Parameter Name="Username" Type="String" />
             <asp:Parameter Name="Password" Type="String" />
             <asp:Parameter Name="original_UserId" Type="Int32" />
             <asp:Parameter Name="original_Name" Type="String" />
             <asp:Parameter Name="original_Gender" Type="String" />
             <asp:Parameter Name="original_Phone" Type="String" />
             <asp:Parameter Name="original_Email" Type="String" />
             <asp:Parameter Name="original_Qualifications" Type="String" />
             <asp:Parameter Name="original_Experience" Type="String" />
             <asp:Parameter Name="original_Username" Type="String" />
             <asp:Parameter Name="original_Password" Type="String" />
         </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="editcompany.aspx.cs" Inherits="Admin_editcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 50px;">  
    <h2 class="text-center">Edit Company</h2>
  <br />

         
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="40%" AutoGenerateRows="False" DataKeyNames="CompanyId_" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
           <Fields>
               <asp:BoundField DataField="CompanyId_" HeaderText="CompanyId_" InsertVisible="False" ReadOnly="True" SortExpression="CompanyId_" />
               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
               <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
               <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
               <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
               <asp:CommandField ButtonType="Button" ShowEditButton="True">
               <ControlStyle CssClass="btn btn-info" />
               <ItemStyle HorizontalAlign="Center" />
               </asp:CommandField>
           </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [company] WHERE [CompanyId ] = @original_CompanyId_ AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [company] ([Name], [Phone], [Email], [Address], [Username], [Password]) VALUES (@Name, @Phone, @Email, @Address, @Username, @Password)" SelectCommand="SELECT [CompanyId ] AS CompanyId_, [Name], [Phone], [Email], [Address], [Username], [Password] FROM [company]" UpdateCommand="UPDATE [company] SET [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Username] = @Username, [Password] = @Password WHERE [CompanyId ] = @original_CompanyId_ AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_CompanyId_" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
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
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Phone" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Username" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
  
        </div>  
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="updateprofile.aspx.cs" Inherits="User_updateprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 50px;">  
    <h2 class="text-center">User Update Profile </h2>
  <br />

         
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="40%" AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
           <Fields>
               <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
               <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
               <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
               <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
               <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
               <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
               <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
               <asp:CommandField ButtonType="Button" ShowEditButton="True" EditText="Update">
               <ControlStyle CssClass="btn btn-info" />
               <ItemStyle HorizontalAlign="Center" />
               </asp:CommandField>
           </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [user] ([Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password]) VALUES (@Name, @Gender, @Phone, @Email, @Qualifications, @Experience, @Username, @Password)" SelectCommand="SELECT [UserId], [Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password] FROM [user] WHERE ([UserId] = @UserId)" UpdateCommand="UPDATE [user] SET [Name] = @Name, [Gender] = @Gender, [Phone] = @Phone, [Email] = @Email, [Qualifications] = @Qualifications, [Experience] = @Experience, [Username] = @Username, [Password] = @Password WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" OnUpdated="SqlDataSource1_Updated">
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
                <SelectParameters>
                    <asp:SessionParameter Name="UserId" SessionField="UserId" Type="Int32" />
                </SelectParameters>
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
  
        </div>  
</asp:Content>


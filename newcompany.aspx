<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newcompany.aspx.cs" Inherits="newcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 well">
                <h2 class="text-center heading-title">Create New Account For Company</h2>
                <br />
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Name</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Name" class="form-control" placeholder="Enter Company Name..." runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" Display="Dynamic" ControlToValidate="Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only alphabets" Display="Dynamic" ControlToValidate="Name" ValidationExpression="^[A-Za-z\s]+$" ForeColor="Red" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Phone</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Phone" class="form-control" placeholder="966xxxxxxxxx" runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone is Required" Display="Dynamic" ControlToValidate="Phone" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter only 12 digits" ControlToValidate="Phone" Display="Dynamic" ForeColor="Red" ValidationExpression="[0-9]{12}" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Email</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Email" class="form-control" placeholder="Enter Company Email..." runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" Display="Dynamic" ControlToValidate="Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Email" ControlToValidate="Email" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Address</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Address" class="form-control" placeholder="Enter Company Address..." runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is Required" Display="Dynamic" ControlToValidate="Address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Username</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Username" class="form-control" placeholder="Enter Your Username..." runat="server" autocomplete="off"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Username is Required" Display="Dynamic" ControlToValidate="Username" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-3 col-form-label">Password</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="Password" class="form-control" placeholder="Enter Your Password..." runat="server" autocomplete="off" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-md-1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password is Required" Display="Dynamic" ControlToValidate="Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            
                         </div>
                </div>
                <asp:Button ID="Button" runat="server" Text="Submit" class="btn btn-success btn-block" OnClick="Button_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="List" HeaderText="Validation errors" />
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- container -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [company] WHERE [CompanyId ] = @original_CompanyId_ AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [company] ([Name], [Phone], [Email], [Address], [Username], [Password]) VALUES (@Name, @Phone, @Email, @Address, @Username, @Password)" OnInserted="SqlDataSource1_Inserted" SelectCommand="SELECT [CompanyId ] AS CompanyId_, [Name], [Phone], [Email], [Address], [Username], [Password] FROM [company]" UpdateCommand="UPDATE [company] SET [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [Address] = @Address, [Username] = @Username, [Password] = @Password WHERE [CompanyId ] = @original_CompanyId_ AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
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
            <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Address" Name="Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Username" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" Type="String" />
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
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 20px;">





  <div class="row">
    <div class="col-md-6 col-md-offset-3 well">
      <h2 class="text-center heading-title">Create New Account For User (Women)</h2>
      <br />
      
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Name</label>
          <div class="col-md-9">
              <asp:TextBox ID="Name" class="form-control" placeholder="Enter Your Name..."  required="" runat="server" autocomplete="off"></asp:TextBox>            
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Gender</label>
          <div class="col-md-9">
              <asp:DropDownList ID="Gender" class="form-control" runat="server">
                  <asp:ListItem Selected="True">Female</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Phone</label>
          <div class="col-md-9">
              <asp:TextBox ID="Phone" class="form-control" placeholder="Enter Your Phone..."  required="" runat="server" autocomplete="off" TextMode="Phone"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Email</label>
          <div class="col-md-9">
                  <asp:TextBox ID="Email" class="form-control" placeholder="Enter Your Email..."  required="" runat="server" autocomplete="off" TextMode="Email"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Qualifications</label>
          <div class="col-md-9">
            <asp:TextBox ID="Qualifications" class="form-control" placeholder="Enter Your Qualifications..."  required="" runat="server" autocomplete="off"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Experience</label>
          <div class="col-md-9">
            <asp:TextBox ID="Experience" class="form-control" placeholder="Write the number of years of experience"  required="" runat="server" autocomplete="off" TextMode="Number"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Username</label>
          <div class="col-md-9">
            <asp:TextBox ID="Username" class="form-control" placeholder="Enter Your Username..."  required="" runat="server" autocomplete="off"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Password</label>
          <div class="col-md-9">
             <asp:TextBox ID="Password" class="form-control" placeholder="Enter Your Password..."  required="" runat="server" autocomplete="off" TextMode="Password"></asp:TextBox>
          </div>
        </div>
        <asp:Button ID="Button" runat="server" Text="Submit" class="btn btn-success btn-block" OnClick="Button_Click"/>    
    </div>
  </div> <!-- row -->
</div> <!-- container -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [user] ([Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password]) VALUES (@Name, @Gender, @Phone, @Email, @Qualifications, @Experience, @Username, @Password)" OnInserted="SqlDataSource1_Inserted" SelectCommand="SELECT [UserId], [Name], [Gender], [Phone], [Email], [Qualifications], [Experience], [Username], [Password] FROM [user]" UpdateCommand="UPDATE [user] SET [Name] = @Name, [Gender] = @Gender, [Phone] = @Phone, [Email] = @Email, [Qualifications] = @Qualifications, [Experience] = @Experience, [Username] = @Username, [Password] = @Password WHERE [UserId] = @original_UserId AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
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
            <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Gender" Name="Gender" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Qualifications" Name="Qualifications" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Experience" Name="Experience" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Username" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" Type="String" />
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


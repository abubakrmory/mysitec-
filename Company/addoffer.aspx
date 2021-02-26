<%@ Page Title="" Language="C#" MasterPageFile="~/Company/MasterPage.master" AutoEventWireup="true" CodeFile="addoffer.aspx.cs" Inherits="Company_addoffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 20px;">
  <div class="row">
    <div class="col-md-6 col-md-offset-3 well">
      <h2 class="text-center">Add New Offer</h2>
      <br />
      
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Title</label>
          <div class="col-md-9">
              <asp:TextBox ID="OfferTitle" class="form-control" placeholder="Enter Title"  required="" runat="server" autocomplete="off"></asp:TextBox>            
          </div>
        </div>

        <div class="form-group row">
          <label class="col-md-3 col-form-label">Date</label>
          <div class="col-md-9">
              <asp:TextBox ID="Date" class="form-control" placeholder="Enter Date"  required="" runat="server" autocomplete="off" TextMode="Date"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Qualifications</label>
          <div class="col-md-9">
                  <asp:TextBox ID="Qualifications" class="form-control" placeholder="Enter Qualifications"  required="" runat="server" autocomplete="off"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Experience</label>
          <div class="col-md-9">
            <asp:TextBox ID="Experience" class="form-control" placeholder="Write the number of years of experience"  required="" runat="server" autocomplete="off" TextMode="Number"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Salary</label>
          <div class="col-md-9">
            <asp:TextBox ID="Salary" class="form-control" placeholder="Enter Salary"  required="" runat="server" autocomplete="off" TextMode="Number"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">WorkDays</label>
          <div class="col-md-9">
            <asp:TextBox ID="WorkDays" class="form-control" placeholder="Enter WorkDays"  required="" runat="server" autocomplete="off" TextMode="Number"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">WorkHours</label>
          <div class="col-md-9">
             <asp:TextBox ID="WorkHours" class="form-control" placeholder="Enter WorkHours"  required="" runat="server" autocomplete="off" TextMode="Number"></asp:TextBox>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Description</label>
          <div class="col-md-9">
             <asp:TextBox ID="Description" class="form-control" placeholder="Enter Description"  required="" runat="server" autocomplete="off"></asp:TextBox>
          </div>
        </div>
        <asp:Button ID="Button" runat="server" Text="Save Offer" class="btn btn-success btn-block" OnClick="Button_Click1"/>    
    </div>
  </div> <!-- row -->
</div> <!-- container -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [offers] WHERE [OfferId] = @original_OfferId AND (([CompanyId] = @original_CompanyId) OR ([CompanyId] IS NULL AND @original_CompanyId IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [offers] ([CompanyId], [Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description]) VALUES (@CompanyId, @Title, @Date, @Qualifications, @Experience, @Salary, @WorkDays, @WorkHours, @Description)" OldValuesParameterFormatString="original_{0}" OnInserted="SqlDataSource1_Inserted" SelectCommand="SELECT [OfferId], [CompanyId], [Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description] FROM [offers]" UpdateCommand="UPDATE [offers] SET [CompanyId] = @CompanyId, [Title] = @Title, [Date] = @Date, [Qualifications] = @Qualifications, [Experience] = @Experience, [Salary] = @Salary, [WorkDays] = @WorkDays, [WorkHours] = @WorkHours, [Description] = @Description WHERE [OfferId] = @original_OfferId AND (([CompanyId] = @original_CompanyId) OR ([CompanyId] IS NULL AND @original_CompanyId IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_OfferId" Type="Int32" />
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Qualifications" Type="String" />
            <asp:Parameter Name="original_Experience" Type="String" />
            <asp:Parameter Name="original_Salary" Type="Int32" />
            <asp:Parameter Name="original_WorkDays" Type="Int32" />
            <asp:Parameter Name="original_WorkHours" Type="Int32" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="CompanyId" SessionField="CompanyId" Type="Int32" />
            <asp:ControlParameter ControlID="OfferTitle" Name="Title" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Date" Name="Date" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Qualifications" Name="Qualifications" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Experience" Name="Experience" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Salary" Name="Salary" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="WorkDays" Name="WorkDays" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="WorkHours" Name="WorkHours" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="Description" Name="Description" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CompanyId" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Qualifications" Type="String" />
            <asp:Parameter Name="Experience" Type="String" />
            <asp:Parameter Name="Salary" Type="Int32" />
            <asp:Parameter Name="WorkDays" Type="Int32" />
            <asp:Parameter Name="WorkHours" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_OfferId" Type="Int32" />
            <asp:Parameter Name="original_CompanyId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Date" Type="String" />
            <asp:Parameter Name="original_Qualifications" Type="String" />
            <asp:Parameter Name="original_Experience" Type="String" />
            <asp:Parameter Name="original_Salary" Type="Int32" />
            <asp:Parameter Name="original_WorkDays" Type="Int32" />
            <asp:Parameter Name="original_WorkHours" Type="Int32" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>


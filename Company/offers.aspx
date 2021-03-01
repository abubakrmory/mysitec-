<%@ Page Title="" Language="C#" MasterPageFile="~/Company/MasterPage.master" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="Company_offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top: 50px;">
  <h2 class="text-center">View Offers</h2>
  <br />
         <asp:GridView ID="GridView1" cssClass="table table-bordered table-responsive table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" HorizontalAlign="Center" DataKeyNames="OfferId" OnRowDataBound="GridView1_RowDataBound">
             <Columns>
                 <asp:BoundField DataField="OfferId" HeaderText="OfferId" SortExpression="OfferId" InsertVisible="False" ReadOnly="True" Visible="False" />
                 <asp:BoundField DataField="CompanyId" HeaderText="CompanyId" SortExpression="CompanyId" Visible="False" />
                 <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                 <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
                 <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                 <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                 <asp:BoundField DataField="WorkDays" HeaderText="WorkDays" SortExpression="WorkDays" />
                 <asp:BoundField DataField="WorkHours" HeaderText="WorkHours" SortExpression="WorkHours" />
                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                 <asp:HyperLinkField DataNavigateUrlFields="OfferId" DataNavigateUrlFormatString="editoffer.aspx?OfferId={0}" Text="Edit">
                 <ControlStyle CssClass="btn btn-warning" />
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:HyperLinkField>
                 <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                 <ControlStyle CssClass="btn btn-danger" />
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:CommandField>
             </Columns>
         </asp:GridView>
 </div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OfferId], [CompanyId], [Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description] FROM [offers] WHERE ([CompanyId] = @CompanyId)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [offers] WHERE [OfferId] = @original_OfferId AND (([CompanyId] = @original_CompanyId) OR ([CompanyId] IS NULL AND @original_CompanyId IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [offers] ([CompanyId], [Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description]) VALUES (@CompanyId, @Title, @Date, @Qualifications, @Experience, @Salary, @WorkDays, @WorkHours, @Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [offers] SET [CompanyId] = @CompanyId, [Title] = @Title, [Date] = @Date, [Qualifications] = @Qualifications, [Experience] = @Experience, [Salary] = @Salary, [WorkDays] = @WorkDays, [WorkHours] = @WorkHours, [Description] = @Description WHERE [OfferId] = @original_OfferId AND (([CompanyId] = @original_CompanyId) OR ([CompanyId] IS NULL AND @original_CompanyId IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
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
              <asp:Parameter Name="CompanyId" Type="Int32" />
              <asp:Parameter Name="Title" Type="String" />
              <asp:Parameter Name="Date" Type="String" />
              <asp:Parameter Name="Qualifications" Type="String" />
              <asp:Parameter Name="Experience" Type="String" />
              <asp:Parameter Name="Salary" Type="Int32" />
              <asp:Parameter Name="WorkDays" Type="Int32" />
              <asp:Parameter Name="WorkHours" Type="Int32" />
              <asp:Parameter Name="Description" Type="String" />
          </InsertParameters>
          <SelectParameters>
              <asp:SessionParameter Name="CompanyId" SessionField="CompanyId" Type="Int32" />
          </SelectParameters>
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


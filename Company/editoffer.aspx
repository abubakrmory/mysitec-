<%@ Page Title="" Language="C#" MasterPageFile="~/Company/MasterPage.master" AutoEventWireup="true" CodeFile="editoffer.aspx.cs" Inherits="Company_editoffer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container" style="margin-top: 50px;">  
    <h2 class="text-center">Company Manage Job</h2>
  <br />

         
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="40%" AutoGenerateRows="False" DataKeyNames="OfferId" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
           <Fields>
               <asp:BoundField DataField="OfferId" HeaderText="OfferId" InsertVisible="False" ReadOnly="True" SortExpression="OfferId" />
               <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
               <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
               <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
               <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
               <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
               <asp:BoundField DataField="WorkDays" HeaderText="WorkDays" SortExpression="WorkDays" />
               <asp:BoundField DataField="WorkHours" HeaderText="WorkHours" SortExpression="WorkHours" />
               <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
               <asp:CommandField ButtonType="Button" ShowEditButton="True" EditText="Update">
               <ControlStyle CssClass="btn btn-info" />
               <ItemStyle HorizontalAlign="Center" />
               </asp:CommandField>
           </Fields>
        </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [offers] WHERE [OfferId] = @original_OfferId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [offers] ([Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description]) VALUES (@Title, @Date, @Qualifications, @Experience, @Salary, @WorkDays, @WorkHours, @Description)" SelectCommand="SELECT [OfferId], [Title], [Date], [Qualifications], [Experience], [Salary], [WorkDays], [WorkHours], [Description] FROM [offers] WHERE ([OfferId] = @OfferId)" UpdateCommand="UPDATE [offers] SET [Title] = @Title, [Date] = @Date, [Qualifications] = @Qualifications, [Experience] = @Experience, [Salary] = @Salary, [WorkDays] = @WorkDays, [WorkHours] = @WorkHours, [Description] = @Description WHERE [OfferId] = @original_OfferId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Qualifications] = @original_Qualifications) OR ([Qualifications] IS NULL AND @original_Qualifications IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Salary] = @original_Salary) OR ([Salary] IS NULL AND @original_Salary IS NULL)) AND (([WorkDays] = @original_WorkDays) OR ([WorkDays] IS NULL AND @original_WorkDays IS NULL)) AND (([WorkHours] = @original_WorkHours) OR ([WorkHours] IS NULL AND @original_WorkHours IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}" OnUpdated="SqlDataSource1_Updated">
                <DeleteParameters>
                    <asp:Parameter Name="original_OfferId" Type="Int32" />
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
                    <asp:QueryStringParameter Name="OfferId" QueryStringField="OfferId" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="Qualifications" Type="String" />
                    <asp:Parameter Name="Experience" Type="String" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                    <asp:Parameter Name="WorkDays" Type="Int32" />
                    <asp:Parameter Name="WorkHours" Type="Int32" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="original_OfferId" Type="Int32" />
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
  
        </div>  
</asp:Content>


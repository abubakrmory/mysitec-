<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="Admin_offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-fluid" style="margin-top: 50px;">
  <h2 class="text-center">View Offers</h2>
  <br />
         <asp:GridView ID="GridView1" cssClass="table table-bordered table-responsive" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" HorizontalAlign="Center" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                 <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                 <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                 <asp:BoundField DataField="Qualifications" HeaderText="Qualifications" SortExpression="Qualifications" />
                 <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                 <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                 <asp:BoundField DataField="WorkDays" HeaderText="WorkDays" SortExpression="WorkDays" />
                 <asp:BoundField DataField="WorkHours" HeaderText="WorkHours" SortExpression="WorkHours" />
                 <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" />
             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#808080" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#383838" />
         </asp:GridView>
 </div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT company.Name, company.Phone, company.Email, company.Address, offers.Title, offers.Date, offers.Qualifications, offers.Experience, offers.Salary, offers.WorkDays, offers.WorkHours, offers.Description FROM company INNER JOIN offers ON company.[CompanyId ] = offers.CompanyId"></asp:SqlDataSource>
</asp:Content>


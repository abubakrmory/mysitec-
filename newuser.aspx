<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="newuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" style="margin-top: 20px;">





  <div class="row">
    <div class="col-md-6 col-md-offset-3 well">
      <h2 class="text-center">Create New Account For User (Women)</h2>
      <br />
      
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Name</label>
          <div class="col-md-9">
              <asp:TextBox ID="Name" class="form-control" placeholder="Enter Your Username..."  required="" runat="server" autocomplete="off"></asp:TextBox>            
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Gender</label>
          <div class="col-md-9">
            <select name="Gender" class="form-control" >
              <!-- <option>Male</option> -->
              <option>Female</option>
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label class="col-md-3 col-form-label">Phone</label>
          <div class="col-md-9">
              <asp:TextBox ID="Phone" class="form-control" placeholder="Enter Your Phone..."  required="" runat="server" autocomplete="off"></asp:TextBox>
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
            <asp:TextBox ID="Experience" class="form-control" placeholder="Enter Your Experience..."  required="" runat="server" autocomplete="off"></asp:TextBox>
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

        <button type="submit" name="submit" class="btn btn-success btn-block">Submit</button>
     
    </div>
  </div> <!-- row -->
</div> <!-- container -->
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .intro {
  width: 100%;
  height: 600px;
  margin: -20px auto 10px auto;
  background: url(img/pexels-breakingpic-3061.jpg);
  display: table;
  top: 0;
  background-size: cover;
}
.intro .inner {
  display: table-cell;
  vertical-align: middle;
  width: 100%;
  max-width: none;
}
.content {
  max-width: 500%;
  margin: 0 auto;
  text-align: center;
}
.content h1 {
  font-family: "Raleway", sans-serif;
  color: #ffffff;
  text-shadow: 0px 0px 300px #000;
  font-size: 400%;
  text-transform: uppercase;
}
.btn {
  border-radius: 9px;
  font-family: "Oswald", sans-serif;

  font-size: 135%;
  padding: 10px 20px;
  color: #ffffff;
  border: solid #ffffff 3px;
  text-transform: uppercase;
  text-decoration: none;
}
.btn:hover {
  color: #ff0000;
  border: solid #ff0000 3px;
}
p {
  font-size: 160%;
  line-height: 210%;
  text-align: justify;
  margin: 3%;
  font-family: sans-serif;
}
@media screen and (max-width: 768px) {
  .content h1 {
    font-size: 250%;
  }
  .btn {
    font-size: 110%;
    padding: 7px 15px;
  }
  /*p {
    font-size: 100%;
    line-height: 160%;
  }*/
}
    </style>
    
 <section class="intro">
    <div class="inner">
      <div class="content">
        <h1>women's job center online</h1>
        <a href="admin.aspx" class="btn">Get Started</a>
      </div>
    </div>
  </section>
  <p class="lead">
    The idea of the project is an electronic platform that allows visitors to register and benefit from its services in
    the field of job offers for women only.
    The platform provides a page for registering companies that want to acquire employees. The platform also provides a
    registration page for female users looking for jobs.
    The platform makes it easy for companies offering jobs to communicate with jobseekers.
    It is designed in a simple way, which helps users to deal with it simply, as the privacy and confidentiality of the
    data entered into the platform are taken into consideration.

  </p>
   
</asp:Content>


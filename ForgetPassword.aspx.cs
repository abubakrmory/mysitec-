using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(conn);
        string sqlquery = "SELECT Username,Password FROM [dbo].[Company] WHERE email=@Email";
        SqlCommand sqlcomm = new SqlCommand(sqlquery,sqlconn);
        sqlcomm.Parameters.AddWithValue("@Email", Email.Text);
        sqlconn.Open();
        SqlDataReader sdr = sqlcomm.ExecuteReader();
        if (sdr.Read())
        {
            string username = sdr["Username"].ToString();
            string password = sdr["Password"].ToString();
            MailMessage mm = new MailMessage("myprojectcsharp@gmail.com", Email.Text);
            mm.Subject = "Your Password !";
            mm.Body = string.Format("Hello : <h1>{0}</h1> is your Username <br/> your password is <h1>{1}</h1>", username, password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "myprojectcsharp@gmail.com";
            nc.Password = "Csharp1234";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(mm);
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Your Password has been sent Email');", true);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('This Email is Not Exists in our Database !');", true);
        }


    }
}
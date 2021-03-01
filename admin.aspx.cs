using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login(object sender, EventArgs e)
    {
        DataView view1 = new DataView();
        view1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        view1.RowFilter = "username='" + username.Text.ToString() + "' and password='" + password.Text.ToString() + "'";
        DataTable dt1 = view1.ToTable();
        if (view1.Count != 0)
        {
            (Session)["AdminId"] = dt1.Rows[0][0].ToString();
            (Session)["Name"] = dt1.Rows[0][1].ToString();
            (Session)["role"] = "Admin";
            Response.Redirect("Admin/Default.aspx");

        }

        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Check Username & Password !!!');", true);
    }
}
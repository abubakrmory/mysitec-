using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newcompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
        }
        catch (Exception ex)
        {

            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('" + ex.ToString() + "');", true);
        }
    }
    protected void SqlDataSource1_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('It has been saved successfully');", true);
    }
}
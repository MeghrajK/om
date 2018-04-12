using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["IsLogin"].ToString() != "Success") || (Session["IsLogin"].ToString()==""))
        {                      
            Response.Redirect("Login.aspx");
        }
       

    }
    protected void LogOut_Click(object sender, EventArgs e)
    {

        Session["IsLogin"] = "";
        Response.Redirect("Login.aspx");
    }
}

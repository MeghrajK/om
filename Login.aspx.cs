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
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            ViewState["LoginAttempts"] = 0;
        }
        else
        {
            if (Convert.ToInt32(ViewState["LoginAttempts"]) > 3)
            {
                Login1_LoginError1();
            }
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Boolean res = Confirm(Login1.UserName, Login1.Password);
        if (res == true)
        {
            Session["IsLogin"] = "Success";
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            e.Authenticated = false;
        }
    }
    protected void Login1_LoginError(object sender, EventArgs e)
    {
        if (ViewState["LoginAttempts"] == null)
        {
            ViewState["LoginAttempts"] = 0;
        }
        int error = Convert.ToInt32(ViewState["LoginAttempts"]) + 1;
        ViewState["LoginAttempts"]=error;
         if (Convert.ToInt32(ViewState["LoginAttempts"]) > 3)
            {
                Login1_LoginError1();
            }

    }
    private bool Confirm(string UserName, string Password)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "select User_Name,Password from Credential";
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            if((UserName==dr["User_Name"].ToString())&&(Password==dr["Password"].ToString()))
            {
                dr.Close();
                con.Close();
                return true;
            }
            else
            {
                dr.Close();
                con.Close();
                return false;
            }
        }
        dr.Close();
        con.Close();
        return false;

    }
    protected void Login1_LoginError1()
    {
        Response.Write("<script>alert('You have made login attempts more than 3')</script>");

    }
}

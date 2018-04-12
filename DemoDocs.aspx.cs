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

public partial class DemoDocs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Btn_Home.CssClass = "Clicked";
            MV_Docs.ActiveViewIndex = 0;
        }

    }
    protected void Btn_Home_Click(object sender, EventArgs e)
    {
        Btn_Home.CssClass = "Clicked";
        Btn_Farm.CssClass = "Initial";
        Btn_Plot.CssClass = "Initial";
        MV_Docs.ActiveViewIndex = 0;
    }
    protected void Btn_Farm_Click(object sender, EventArgs e)
    {
        Btn_Home.CssClass = "Initial";
        Btn_Farm.CssClass = "Clicked";
        Btn_Plot.CssClass = "Initial";
        MV_Docs.ActiveViewIndex = 1;
    }
    protected void Btn_Plot_Click(object sender, EventArgs e)
    {
        Btn_Home.CssClass = "Initial";
        Btn_Farm.CssClass = "Initial";
        Btn_Plot.CssClass = "Clicked";
        MV_Docs.ActiveViewIndex = 2;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["path"] = "~/DemoDocs/lab.pdf";
        Response.Redirect("ViewPdf.aspx");
    }
}

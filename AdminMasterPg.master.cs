using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class AdminMasterPg : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Admin_Menus_SelectedNodeChanged(object sender, EventArgs e)
    {
        string page = Admin_Menus.SelectedNode.Value.ToString();
        page = page + ".aspx";
        Response.Redirect(page);
    }
}

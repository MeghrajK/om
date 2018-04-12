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

public partial class MasterPage2 : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void Btn_QuickFind_Click(object sender, EventArgs e)
    //{
    //    if ((Rb_Home.Checked == false) && (Rb_Land.Checked == false))
    //    {
    //        Response.Write("<script>alert('Please select Home/Land to find')</script>");
    //    }
    //    else
    //    {

    //        Min_Prc = Convert.ToInt32(Tb_QckFnd_MinPrc.Text.ToString());
    //        Max_Prc = Convert.ToInt32(Tb_QckFnd_MaxPrc.Text.ToString());
    //        City = Convert.ToString(Tb_QckFnd_City.Text.ToString());
    //        Session["MinPrc"] = Min_Prc;
    //        Session["MaxPrc"] = Max_Prc;
    //        Session["City"] = City;
    //        if (Rb_Home.Checked)
    //        {

    //            Response.Redirect("QckFnd_Home.aspx");
    //        }
    //        if (Rb_Land.Checked)
    //        {
    //            Response.Redirect("QckFnd_Land.aspx");
    //        }
    //    }
    //}
   
}

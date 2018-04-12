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

public partial class Home : System.Web.UI.Page
{
    int Min_Prc;
    int Max_Prc;
    string City;
    public int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        //Rb_Home.Checked = true;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GridView1.SelectedValue);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Please select the image to upload"+id+"')", true);
        string Type = "SO_Home";
        Session["Type"] = Type;
        Session["ID"] = id;
        Response.Redirect("Description.aspx");   
    }
    protected void GV_SOL_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GV_SOL.SelectedValue);
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Please select the image to upload"+id+"')", true);
        string Type = "SO_Land";
        Session["Type"] = Type;
        Session["ID"] = id;
        Response.Redirect("Description.aspx"); 
    }
    protected void Btn_QuickFind_Click(object sender, EventArgs e)
    {
        //Validate("Qfnd_Valid");
        //if (Tb_QckFnd_City.Text != "" && Tb_QckFnd_MaxPrc.Text != "" && Tb_QckFnd_MinPrc.Text != "")
        //{
           // if ((Rb_Home.Checked == false) && (Rb_Land.Checked == false))
           // {
                Response.Write("<script>alert('Please select Home/Land to find')</script>");
           // }
           // else
           // {

                Min_Prc = Convert.ToInt32(Tb_QckFnd_MinPrc.Text.ToString());
                Max_Prc = Convert.ToInt32(Tb_QckFnd_MaxPrc.Text.ToString());
                City = Convert.ToString(Tb_QckFnd_City.Text.ToString());
                Session["MinPrc"] = Min_Prc;
                Session["MaxPrc"] = Max_Prc;
                Session["City"] = City;
                if (Rb_Home.Checked)
                {

                    Response.Redirect("QckFnd_Home.aspx");
                }
                if (Rb_Land.Checked)
                {
                    Response.Redirect("QckFnd_Land.aspx");
                }
           // }
       // }
    }
 
}

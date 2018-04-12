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

public partial class EditHome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LogOut_Click(object sender, EventArgs e)
    {

    }
    protected void Btn_SearchHome_Click(object sender, EventArgs e)
    {
        string query="";
        if (Tb_HomeId.Text.ToString() == "" && Tb_HomeNm.Text.ToString() == "")
        {
            query = "select Home_id,Name,Area,Price,City,Category from Home ";
        }
        else if (Tb_HomeId.Text.ToString() != "" && Tb_HomeNm.Text.ToString() == "")
        {
            query = "select Home_id,Name,Area,Price,City,Category from Home where Home_id = "+Tb_HomeId.Text+" ";
        }
        else if (Tb_HomeId.Text.ToString() == "" && Tb_HomeNm.Text.ToString() != "")
        {
            query = "select Home_id,Name,Area,Price,City,Category from Home where Name like " + "'" + "%" + Tb_HomeNm.Text + "%" + "'";
        }
        else if (Tb_HomeId.Text.ToString() != "" && Tb_HomeNm.Text.ToString() != "")
        {
            query = "select Home_id,Name,Area,Price,City,Category from Home where Home_id = "+Tb_HomeId.Text+" and Name like " + "'" + "%" + Tb_HomeNm.Text + "%" + "'";
        }

        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "HomeResult");
        GV_HmSearchResult.DataSource = ds.Tables["HomeResult"];
        GV_HmSearchResult.DataBind();
        con.Close();
  
    }
    protected void GV_HmSearchResult_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GV_HmSearchResult.SelectedValue);
        Session["ID"] = id;
        Response.Redirect("EditHomeDetails.aspx");
    }
}

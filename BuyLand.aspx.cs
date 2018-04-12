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

public partial class BuyLand : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_FindBuyLnd_Click(object sender, EventArgs e)
    {
        string query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land where Price BETWEEN "+Tb_MinPrcBuyLnd.Text+" and "+Tb_MaxPrcBuyLnd.Text+" ";
        if (Tb_CityBuyLnd.Text.ToString() != "")
        {
            query = query + " and city='" + Tb_CityBuyLnd.Text + "' ";
        }
       
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        ds=new DataSet();
        da.Fill(ds, "Land");
        GV_FindLand.DataSource = ds.Tables["Land"];
        GV_FindLand.DataBind();
        con.Close();

    }
    protected void GV_FindLand_SelectedIndexChanged(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(GV_FindLand.SelectedValue);
        string Type = "Land";
        Session["Type"] = Type;
        Session["ID"] = id;
        Response.Redirect("Description.aspx");  
    }
}

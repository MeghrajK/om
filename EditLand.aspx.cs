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

public partial class EditLand : System.Web.UI.Page
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
    protected void Btn_LandSearch_Click(object sender, EventArgs e)
    {
        string query = "";
        


        if (Tb_Land_Id.Text.ToString() == "" && Tb_LandNm.Text.ToString() == "")
        {
            query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land";
        }
        else if (Tb_Land_Id.Text.ToString() != "" && Tb_LandNm.Text.ToString() == "")
        {
            query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land where Land_id = " + Tb_Land_Id.Text + " ";
        }
        else if (Tb_Land_Id.Text.ToString() == "" && Tb_LandNm.Text.ToString() != "")
        {
            query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land where Name like " + "'" + "%" + Tb_LandNm.Text + "%" + "'";
        }
        else if (Tb_Land_Id.Text.ToString() != "" && Tb_LandNm.Text.ToString() != "")
        {
            query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land where Land_id = " + Tb_Land_Id.Text + " and Name like " + "'" + "%" + Tb_LandNm.Text + "%" + "'";
        }
        
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        
        da.Fill(ds, "LandResult");
        
        GV_LndSearchResult.DataSource = ds.Tables["LandResult"];
        GV_LndSearchResult.DataBind();
        con.Close();
    }
    protected void GV_LndSearchResult_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id =Convert.ToInt32(GV_LndSearchResult.SelectedValue);
        Response.Write(id);
    }
}

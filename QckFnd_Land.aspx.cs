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

public partial class QckFnd_Land : System.Web.UI.Page
{
    int Min_Prc;
    int Max_Prc;
    string City;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Min_Prc = Convert.ToInt32(Session["MinPrc"].ToString());
            Max_Prc = Convert.ToInt32(Session["MaxPrc"].ToString());
            City = Convert.ToString(Session["City"].ToString());
            FillGrid();
        }
    }
    protected void FillGrid()
    {
        con.Open();
        string query = "select Land_id,Name,CONVERT(varchar,Area)+' '+Unit as 'Area' ,Price,City from Land where City = '" + City + "' and Price between " + Min_Prc + " and " + Max_Prc;
        cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        ds2 = new DataSet();
        da.Fill(ds2, "Land");
        GV_QckFnd.DataSource = ds2.Tables["Land"]; 
        GV_QckFnd.DataBind();
        con.Close();
    }
    protected void GV_QckFnd_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(GV_QckFnd.SelectedValue);
        string Type = "Land";
        Session["Type"] = Type;
        Session["ID"] = id;
        Response.Redirect("Description.aspx");  
    }
}

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


public partial class SearchEnquiry : System.Web.UI.Page
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
    protected void Btn_Find_Click(object sender, EventArgs e)
    {


        //string ToDt = Request.Form["datepicker1"];
        //Response.Write("<script>alert('val: ')</script>"+ToDt);
        //string ToDt = Convert.ToString(Request.Form["Tb_ToDt"]);
        
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "SELECT Enquiry_id,Title+' '+ FName+' '+MName+' '+LName as 'Name',City,Mobile,Phone_no  FROM Enquiry";
        cmd.Connection = con;

        
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds,"Enquiry");

        GV_SearchEnqRes.DataSource = ds.Tables["Enquiry"];
        GV_SearchEnqRes.DataBind();
        con.Close();
       
        
        
    }
    protected void GV_SearchEnqRes_SelectedIndexChanged(object sender, EventArgs e)
    {
        int PrmKey = Convert.ToInt32(GV_SearchEnqRes.SelectedValue);
        Session["EnqID"] = PrmKey;
        Response.Redirect("Followup.aspx");
    }
   
}

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

public partial class Buy : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    int status = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Btn_FindBuyHm_Click(object sender, EventArgs e)
    {

        //try
        //{
        //    int.Parse(Tb_MinPrc.Text);
        //    int.Parse(Tb_MaxPrc.Text);
        //    status = 1;
        //}
        //catch(Exception Ex)
        //{
        //    //Response.Write("You have not entered a number"+Ex.Message);
        //    Response.Write("<script>alert('You have not entered a number')</script>");
        //}
       
        //if(status==1)
        //{
            string query = "select Home_id,Name,Area,Price,City,Category from Home where stauts=1 and Price between "+ Tb_MinPrc.Text+" and "+Tb_MaxPrc.Text+" ";
            if (Tb_City.Text.ToString() != "")
            {
                query = query + "and City ='"+Tb_City.Text+"'";
            }
            if (Tb_MinArea.Text.ToString() != "" && Tb_MaxArea.Text.ToString() != "")
            {
                query=query+"and Area between "+Tb_MinArea.Text+" and "+Tb_MaxArea.Text+" ";
            }
            if (Tb_MinArea.Text.ToString() != "" && Tb_MaxArea.Text.ToString() == "")
            {
                query = query + "and Area = " + Tb_MinArea.Text+ " ";
            }
            if (Tb_MinArea.Text.ToString() == "" && Tb_MaxArea.Text.ToString() != "")
            {
                query = query + "and Area = "+Tb_MaxArea.Text + " ";
            }

            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "Home");
            GV_FindHmResult.DataSource = ds.Tables["Home"];
            GV_FindHmResult.DataBind();
            con.Close();
       // }
    }
    protected void GV_FindHmResult_SelectedIndexChanged(object sender, EventArgs e)
    {
        int id =Convert.ToInt32(GV_FindHmResult.SelectedValue);
        string Type = "Home";
        Session["Type"] = Type;
        Session["ID"] = id;
        Response.Redirect("Description.aspx");  
    }
}

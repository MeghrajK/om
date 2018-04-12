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

public partial class EditHomeDetails : System.Web.UI.Page
{
    int id;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    SqlCommand cmd1;
    SqlCommand cmd2;
    SqlDataReader dr1;
   // DataTable dt;
    string query;
    string query1;
    string path;
    int pathlength;
    int Home_ImgId;
    int Status;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            id = Convert.ToInt32(Session["ID"].ToString());
            Response.Write(id);
            if (!IsPostBack)
            {
                FillData(id);
            }
            IsImgPath(id);
        

    }
    protected void LogOut_Click(object sender, EventArgs e)
    {

    }

    protected void Btn_Update_Click(object sender, EventArgs e)
    {
        string ImgPath = string.Empty;
        string DbImgPath = string.Empty;
        if (CB_Sale.Checked == true)
        {
            Status = 2;
        }
        else
        {
            Status = 1;
        }
        try
        {

            con.Open();
            if (FU_EditHome.HasFile)
            {
                ImgPath = (Server.MapPath("~/UploadedFiles/") + Guid.NewGuid() + FU_EditHome.FileName);
                FU_EditHome.SaveAs(ImgPath);

                DbImgPath = ImgPath.Substring(ImgPath.LastIndexOf("\\"));
                DbImgPath = DbImgPath.Insert(0, "UploadedFiles");
            }
            else if ((pathlength != 0) && !(FU_EditHome.HasFile))
            {
                DbImgPath = path.ToString();
            }
            else
            {
                DbImgPath = "";
            }
            cmd2 = new SqlCommand();
            cmd2.CommandText = "Home_Update";
            cmd2.Connection = con;
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.AddWithValue("@Home_id", id);
            cmd2.Parameters.Add("@Name", SqlDbType.VarChar).Value = Tb_Name.Text.ToString();
            cmd2.Parameters.Add("@Area", SqlDbType.Int).Value = Convert.ToInt32(Tb_Area.Text);
            cmd2.Parameters.AddWithValue("@Price", Tb_Price.Text);
            cmd2.Parameters.Add("@Address", SqlDbType.VarChar).Value = Tb_Addr.Text.ToString();
            cmd2.Parameters.Add("@City", SqlDbType.VarChar).Value = Dp_City.SelectedValue.ToString();
            cmd2.Parameters.Add("@State_Nm", SqlDbType.VarChar).Value = Dp_State.SelectedValue.ToString();
            //cmd2.Parameters.Add("@Pin_Code",SqlDbType.Int).Value=Convert.ToInt32(Tb_Pincode.Text);
            //cmd2.Parameters.AddWithValue("@Pin_Code", Convert.ToInt32(Tb_Pincode.Text));
            cmd2.Parameters.AddWithValue("@Pin_Code", Tb_Pincode.Text.ToString());
            cmd2.Parameters.Add("@Description", SqlDbType.VarChar).Value = Tb_Descr.Text.ToString();
            cmd2.Parameters.Add("@Type", SqlDbType.VarChar).Value = DP_Type.SelectedValue.ToString();
            cmd2.Parameters.Add("@Category", SqlDbType.VarChar).Value = DP_Category.SelectedValue.ToString();
            cmd2.Parameters.AddWithValue("@Status", Status);
            cmd2.Parameters.AddWithValue("@Home_ImgId", Home_ImgId);
            cmd2.Parameters.Add("@Img_Path", SqlDbType.VarChar).Value = DbImgPath.ToString();
            cmd2.ExecuteNonQuery();

            con.Close();

            Response.Write("<script>alert('Entry saved successfully')</script>");
           // ClearPage();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured :" + ex.Message.ToString() + "')", true);
        }

        finally
        {
            ImgPath = string.Empty;
            DbImgPath = string.Empty;
            Response.Redirect("EditHome.aspx");
        }    

    }
    protected void ClearPage()
    {
        Tb_Name.Text = "";
        Tb_Area.Text = "";
        Tb_Price.Text = "";
        Tb_Addr.Text = "";
        Tb_Pincode.Text = "";
        Tb_Descr.Text = "";

    }
    protected void FillData(int prmkey)
    {
        con.Open();
        cmd = new SqlCommand();
        query = "select * from Home where home_id = "+prmkey;
        cmd.CommandText = query;
        cmd.Connection = con;

        //GV_HmSearchResult.DataSource = ds.Tables["HomeResult"];
        //GV_HmSearchResult.DataBind();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Tb_Name.Text = dr[1].ToString();
            Tb_Area.Text = dr[3].ToString();
            Tb_Price.Text = dr[2].ToString();
            Tb_Addr.Text = dr[9].ToString();
            Dp_City.Text=dr[5].ToString();
            Dp_State.Text=dr[10].ToString();
            Tb_Descr.Text=dr[8].ToString();
            Tb_Pincode.Text = dr[11].ToString();
            DP_Type.Text = dr[6].ToString();

            DP_Category.Text = dr[7].ToString();
            if(Convert.ToInt32(dr[4].ToString())==1)
            {
                CB_Sale.Checked =false;
            }
            else
            {
                CB_Sale.Checked = true;
            }
        }
        dr.Close();
        con.Close();
        IsImgPath(prmkey);
        //con.Open();
        //query1 = "select Home_imgid,Image_path from Home_Img where Home_id=" + prmkey;
        //cmd1 = new SqlCommand();
        //cmd1.CommandText = query1;
        //cmd1.Connection = con;
        //dr1 = cmd1.ExecuteReader();
        //while (dr1.Read())
        //{
        //    Home_ImgId =Convert.ToInt32(dr1[0].ToString());
        //    path = dr1[1].ToString();
        //    pathlength = Convert.ToInt32(path.Length);
        //}
        //if (pathlength==0)
        //{
        //    LB_Img1.Visible = false;
        //    Home_ImgId = 0;
        //}
        //else
        //{
        //    LB_Img1.Visible = true;
        //    LB_Img1.Text = "Show";
        //}

        //dr1.Close();
        //con.Close();

    }
    protected void IsImgPath(int prmkey)
    {
        con.Open();
        query1 = "select Home_imgid,Image_path from Home_Img where Home_id=" + prmkey;
        cmd1 = new SqlCommand();
        cmd1.CommandText = query1;
        cmd1.Connection = con;
        dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            Home_ImgId = Convert.ToInt32(dr1[0].ToString());
            path = dr1[1].ToString();
            pathlength = Convert.ToInt32(path.Length);
        }
        if (pathlength == 0)
        {
            LB_Img1.Visible = false;
            Home_ImgId = 0;
        }
        else
        {
            LB_Img1.Visible = true;
            LB_Img1.Text = "Show";
        }

        dr1.Close();
        con.Close();
    }
}

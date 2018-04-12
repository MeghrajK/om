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

public partial class ManageLand : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        string ImgPath = string.Empty;
        string DbImgPath = string.Empty;
        try
        {
            if (FileUpload1.HasFile)
            {
                ImgPath = (Server.MapPath("~/UploadedFiles/") + Guid.NewGuid() + FileUpload1.FileName);
                FileUpload1.SaveAs(ImgPath);

                DbImgPath = ImgPath.Substring(ImgPath.LastIndexOf("\\"));
                DbImgPath = DbImgPath.Insert(0, "UploadedFiles");
            }
            else
            {
                DbImgPath = "";
            }

            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "Land_Insert";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", Tb_Name.Text.ToString());
            cmd.Parameters.AddWithValue("@Area", Tb_Area.Text.ToString());
            cmd.Parameters.AddWithValue("@Unit", DP_Unit.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Price", Tb_Price.Text);
            cmd.Parameters.AddWithValue("@Address", Tb_Addr.Text.ToString());
            cmd.Parameters.AddWithValue("@City", Dp_City.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@State_Nm", Dp_State.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@Pin_Code", Tb_Pincode.Text.ToString());
            cmd.Parameters.AddWithValue("@Description", Tb_Descr.Text.ToString());
            cmd.Parameters.Add("@Img_Path", SqlDbType.VarChar).Value = DbImgPath.ToString();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Entry saved successfully')</script>");
            ClearPage();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured :" + ex.Message.ToString() + "')", true);
        }
        finally
        {
            ImgPath = string.Empty;
            DbImgPath = string.Empty;
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
    protected void LogOut_Click(object sender, EventArgs e)
    {

    }

}

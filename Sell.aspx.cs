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

public partial class Sell : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    public string Etype;
    public int PK;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_Save1_Click(object sender, EventArgs e)
    {
        Etype = "Sell";
        PK = 0;

        try
        {
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "Enquiry_Insert";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = Etype.ToString();
            cmd.Parameters.Add("@PK", SqlDbType.Int).Value = Convert.ToInt32(PK);
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = Dp_Title1.SelectedValue.ToString();
            cmd.Parameters.Add("@Fname", SqlDbType.VarChar).Value = Tb_Fname1.Text.ToString();
            cmd.Parameters.Add("@Mname", SqlDbType.VarChar).Value = Tb_Mname1.Text.ToString();
            cmd.Parameters.Add("@Lname", SqlDbType.VarChar).Value = Tb_Lname1.Text.ToString();
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Tb_Addr1.Text.ToString();
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = Dp_City1.SelectedValue.ToString();
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = Dp_State1.SelectedValue.ToString();
            cmd.Parameters.Add("@Pin", SqlDbType.VarChar).Value = Tb_Pincode1.Text.ToString();
            cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Tb_Mobno1.Text.ToString();
            cmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = Tb_Phoneno1.Text.ToString();
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Tb_Email1.Text.ToString();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Enquiry saved successfully')", true);
            Tb_Fname1.Text = "";
            Tb_Mname1.Text = "";
            Tb_Lname1.Text = "";
            Tb_Addr1.Text = "";
            Tb_Pincode1.Text = "";
            Tb_Phoneno1.Text = "";
            Tb_Mobno1.Text = "";
            Tb_Email1.Text = "";
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured :" + ex.Message.ToString() + "')", true);
        }
    }
}

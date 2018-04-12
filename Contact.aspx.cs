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

public partial class Contact : System.Web.UI.Page
{
    public string Etype;
    public int PK;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Etype=Session["EType"].ToString();
        PK = Convert.ToInt32(Session["PK"]);
       // Response.Write(Etype.ToString());
       // Response.Write(PK.ToString());
    }

    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "Enquiry_Insert";
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Type", SqlDbType.VarChar).Value = Etype.ToString();
            cmd.Parameters.Add("@PK", SqlDbType.Int).Value = Convert.ToInt32(PK);
            cmd.Parameters.Add("@Title", SqlDbType.VarChar).Value = Dp_Title.SelectedValue.ToString();
            cmd.Parameters.Add("@Fname", SqlDbType.VarChar).Value = Tb_Fname.Text.ToString();
            cmd.Parameters.Add("@Mname", SqlDbType.VarChar).Value = Tb_Mname.Text.ToString();
            cmd.Parameters.Add("@Lname", SqlDbType.VarChar).Value = Tb_Lname.Text.ToString();
            cmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = Tb_Addr.Text.ToString();
            cmd.Parameters.Add("@City", SqlDbType.VarChar).Value = Dp_City.SelectedValue.ToString();
            cmd.Parameters.Add("@State", SqlDbType.VarChar).Value = Dp_State.SelectedValue.ToString();
            cmd.Parameters.Add("@Pin", SqlDbType.VarChar).Value = Tb_Pincode.Text.ToString();
            cmd.Parameters.Add("@Mobile", SqlDbType.VarChar).Value = Tb_Mobno.Text.ToString();
            cmd.Parameters.Add("@Phone", SqlDbType.VarChar).Value = Tb_Phoneno.Text.ToString();
            cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = Tb_Email.Text.ToString();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Enquiry saved successfully')", true);
            Tb_Fname.Text = "";
            Tb_Mname.Text = "";
            Tb_Lname.Text = "";
            Tb_Addr.Text = "";
            Tb_Pincode.Text = "";
            Tb_Phoneno.Text = "";
            Tb_Mobno.Text = "";
            Tb_Email.Text = "";
        }
        catch( Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured :"+ex.Message.ToString()+"')", true);
        }
    }
}

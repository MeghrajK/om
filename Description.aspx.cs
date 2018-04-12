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

public partial class Description : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);

    SqlCommand cmd;
    SqlCommand cmd1;
    SqlCommand cmd3;
    SqlDataReader dr;
    SqlDataReader dr1;
    SqlDataReader dr2;
    SqlDataReader dr3;
    DataTable dt;
    DataSet ds;
    DataTable dt2;
    DataTable dt3;
    SqlDataAdapter adp;
    int Id;
    string Type;
    public string TypeCheck;
    int IdCheck;

    
    protected void Page_Load(object sender, EventArgs e)
    {
       
            Id = Convert.ToInt32(Session["ID"]);
            Type = Session["Type"].ToString();
            GetValues(Id, Type);
        
    }
    public void GetValues(int Id,string Type)
    {
        con.Open();

        cmd = new SqlCommand();
        cmd3 = new SqlCommand();
        if (Type == "Home")
        {
            con1.Open();
            cmd3.CommandText = "select SOH_id from Special_offer_home where Valid_Status=1 and Home_id=@PrmKey1";
            cmd3.Connection = con1;
          //  Response.Write(Id.ToString());
            cmd3.Parameters.AddWithValue("PrmKey1", SqlDbType.Int).Value = Id;
           // dt3 = new DataTable();
            dr3 = cmd3.ExecuteReader();
           // dt3.Load(dr3);
            while (dr3.Read())
            {
                if(dr3.HasRows)
                {
                    Type = "SO_Home";
                    Id = Convert.ToInt32(dr3.GetValue(0));
                  //  Response.Write(Id.ToString());
                }
            }

            con1.Close();
        }
        if (Type == "Land")
        {
            con1.Open();
            cmd3.CommandText = "select SOL_id from Special_offer_land where Valid_Status=1 and Land_id=@PrmKey1";
            cmd3.Connection = con1;
           // Response.Write(Id.ToString());
            cmd3.Parameters.AddWithValue("PrmKey1", SqlDbType.Int).Value = Id;
            dr3 = cmd3.ExecuteReader();
            // dt3.Load(dr3);
            while (dr3.Read())
            {
                if (dr3.HasRows)
                {
                    Type = "SO_Land";
                    Id=Convert.ToInt32(dr3.GetValue(0));
                   // Response.Write(Id.ToString());
                }
            }
            con1.Close();
        }
        
        

        if (Type == "SO_Home")
        {
            cmd.CommandText = "select h.Name,h.Area,h.City,h.Category,h.Type,soh.Original_price as 'Original Price',soh.Special_price as 'Special Price',soh.Valid_to as 'Valid Till' from Special_offer_home soh inner join Home h on soh.Home_id=h.Home_id where soh.valid_status=1 and soh.SOH_id=@PrmKey";
            //TypeCheck = "SO_Home";
        }
        else if (Type == "SO_Land")
        {

           cmd.CommandText = " select l.Name,l.Area,l.Unit,l.City,sol.Original_price as 'Original Price',sol.Special_price as 'Special Price',sol.Valid_to as 'Valid Till' from Land l inner join Special_offer_land sol on l.Land_id=sol.Land_id where sol.valid_status=1 and sol.SOL_id=@PrmKey";
           //TypeCheck = "SO_Land";
        }
        else if (Type == "Home")
        {
            cmd.CommandText = "select Name,Area,Price,Type,Category,State_Nm as 'State' from Home where Home_id=@PrmKey";
           // TypeCheck = "Home";
        }
        else if (Type == "Land")
        {
            cmd.CommandText = "select Name,CONVERT(varchar,Area)+' '+Unit as 'Area',Price,City,State_Nm as 'State' from Land where Land_id=@PrmKey";
          //  TypeCheck = "Land";
        }

        cmd.Parameters.AddWithValue("PrmKey", SqlDbType.Int).Value = Id;
        cmd.Connection = con;
        dt = new DataTable();
        dr = cmd.ExecuteReader();
        dt.Load(dr);
        DV_DescPage.DataSource = dt;
        DV_DescPage.DataBind();
        con.Close();
        con.Open();
        if (Type == "SO_Home")
        {
            cmd.CommandText = "select h.Description from Special_offer_home soh inner join Home h on soh.Home_id=h.Home_id where soh.SOH_id=@PrmKey";
        }
        else if (Type == "SO_Land")
        {
            cmd.CommandText = "select l.Description from Special_offer_land sol inner join Land l  on sol.Land_id=l.Land_id where sol.SOL_id=@PrmKey";
        }
        else if (Type == "Home")
        {
            cmd.CommandText = "select Description from Home where Home_id=@PrmKey";
        }
        else if (Type == "Land")
        {
            cmd.CommandText = "select Description from Land where Land_id=@PrmKey";
        }

        cmd.Connection = con;
        
        dr1 = cmd.ExecuteReader();
        
        if (dr1.Read())
        {
            Tb_Description.Text = dr1[0].ToString();
        }
        con.Close();

        ////
        con.Open();
        cmd1 = new SqlCommand();
        if (Type == "SO_Home")
        {
            cmd1.CommandText = "select h.Hm_Address from Special_offer_home soh inner join Home h on soh.Home_id=h.Home_id where soh.SOH_id=@PrmKey";
        }
        else if (Type == "SO_Land")
        {
            cmd1.CommandText = "select l.Ld_Address from Special_offer_land sol inner join Land l  on sol.Land_id=l.Land_id where sol.SOL_id=@PrmKey";
        }
        else if (Type == "Home")
        {
            cmd1.CommandText = "select Hm_Address from Home where Home_id=@PrmKey";
        }
        else if (Type == "Land")
        {
            cmd1.CommandText = "select Ld_Address from Land where Land_id=@PrmKey";
        }
        cmd1.Parameters.AddWithValue("PrmKey", SqlDbType.Int).Value = Id;
        cmd1.Connection = con;

        dr2 = cmd1.ExecuteReader();

        if (dr2.Read())
        {
            Tb_Address.Text = dr2[0].ToString();
        }
        con.Close();
        ////

        con.Open();


        SqlCommand cmd2 = new SqlCommand();
        cmd2.Parameters.Add("@PrmKey", SqlDbType.Int).Value = Id;
        DataTable dt2 = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter();
        if (Type == "Home")
        {
            cmd2.CommandText = "select * from Home_Img where Home_id=@PrmKey";
        }
        if (Type == "Land")
        {
            cmd2.CommandText = "select * from Land_Img where Land_id=@PrmKey";
        }
            
        try
        {
            cmd2.Connection=con;
            adp.SelectCommand = cmd2;
            adp.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                GridImg.DataSource = dt2;
                GridImg.DataBind();
            }
            else
            {
                GridImg.DataSource = null;
                GridImg.DataBind();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : '" + ex.Message.ToString() + "');", true);
        }
        finally
        {
            dt2.Clear();
            dt2.Dispose();
            adp.Dispose();
        }

        con.Close();

        TypeCheck = Type;
        IdCheck = Id;
      //  Response.Write(Id.ToString());
      //  Response.Write(IdCheck.ToString());
    }

    protected void Btn_ImInterested_Click(object sender, EventArgs e)
    {
        Session["Etype"] = TypeCheck;
        Session["PK"] = IdCheck;
        Response.Redirect("Contact.aspx");
    }
}

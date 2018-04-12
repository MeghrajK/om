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

public partial class Followup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable dt;

    SqlCommand cmd1;
    SqlDataReader dr1;
    DataTable dt1;
    SqlCommand cmd2;
    
    int Enq_Id;
    string Full_Name;
    int Enq_Type;
    int Is_Special=0;
    int Home_id;
    int Land_id;
    string Foll_Required;
    DateTime Next_Foll_Date;
    protected void Page_Load(object sender, EventArgs e)
    {
        Enq_Id=Convert.ToInt32(Session["EnqID"].ToString());
       
            FillData();
        
        
    }
    protected void LogOut_Click(object sender, EventArgs e)
    {

    }
    protected void FillData()
    {
        dt = new DataTable();
        
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM Enquiry where Enquiry_id= " + Enq_Id;
        cmd.Connection = con;

        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Full_Name = dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString() + " " + dr[4].ToString()+", Address: "+dr[5].ToString();
            Enq_Type = Convert.ToInt32(dr[11].ToString());
        }
        Lbl_Marquee.Text = Full_Name.ToString();
        Tb_EnqName.Text = dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString() + " " + dr[4].ToString();
        Tb_Address.Text = dr[5].ToString();
        Tb_City.Text = dr[6].ToString();
        Tb_Mobile.Text = dr[8].ToString();
        Tb_PhoneNo.Text = dr[9].ToString();
        Tb_Email.Text = dr[10].ToString();
        Tb_EnqDate.Text = dr[13].ToString();
        Tb_FollDate.Text = DateTime.Now.ToString();
          
        
        if (Enq_Type == 1)
        {
            Rb_Home.Checked = true;
            
        }
        if (Enq_Type == 2)
        {
            Rb_Land.Checked = true;
        }
        if (Enq_Type == 3)
        {
            Rb_Sell.Checked = true;
        }
        if (Enq_Type == 4)
        {
            Rb_General.Checked = true;
        }

        dr.Close();
        con.Close();

        con.Open();
        con1.Open();
        cmd1 = new SqlCommand();
        cmd.CommandText = "select * FROM Enquiry_home where Enquiry_id=" + Enq_Id;
        cmd1.CommandText = "select * FROM Enquiry_Land where Enquiry_id=" + Enq_Id;
        cmd.Connection = con;
        cmd1.Connection = con1;
        dr = cmd.ExecuteReader();
        dr1 = cmd1.ExecuteReader();
        if (Enq_Type == 1)
        {
            if (dr.Read())
            {
                Is_Special = Convert.ToInt32(dr[3].ToString());
                Home_id = Convert.ToInt32(dr[2].ToString());
            }
        }
        else if (Enq_Type == 2)
        {
            if (dr1.Read())
            {
                Is_Special = Convert.ToInt32(dr1[3].ToString());
                Land_id = Convert.ToInt32(dr1[2].ToString());
            }
        }
        if (Is_Special != 0)
        {
            Rb_IsSpecialYes.Checked = true;
        }
        else
        {
            Rb_IsSpecialNo.Checked = true;
        }

        dr.Close();
        con.Close();
        con1.Close();

        con.Open();

        if (Enq_Type == 1)
        {
            if (Is_Special == 0)
            {
                cmd.CommandText = "select Name,CONVERT(varchar,Area)+' sq. feet' as Area,Price,City,Type,Hm_Address as 'Address',Description FROM Home where Home_id=" + Home_id;
            }
            else
            {
                cmd.CommandText = "select H.Name,CONVERT(varchar,H.Area)+' sq. feet' as Area,H.Price,SOH.Special_price as 'Special Price',H.City,H.Type,H.Hm_Address as 'Address',H.Description FROM Home H inner join Special_offer_home SOH on H.Home_id=SOH.Home_id where H.Home_id= " + Home_id + " and SOH.SOH_id= " + Is_Special;

            }
        }
        if (Enq_Type == 2)
        {
            if (Is_Special == 0)
            {
                cmd.CommandText = "select Name,CONVERT(varchar,Area)+' '+Unit as Area,Price,City,Description,Ld_Address as 'Address' from Land where Land_id= " + Land_id;
            }
            else
            {
                cmd.CommandText = "select L.Name,CONVERT(varchar,L.Area)+' '+L.Unit as Area,L.Price,SOL.Special_price as 'Special Price',L.City,L.Description,L.Ld_Address as 'Address' from Land L inner join Special_offer_land SOL ON L.Land_id=SOL.Land_id where L.Land_id= " + Land_id + " and SOL.SOL_id= " + Is_Special;
            }
        }


        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        dt.Load(dr);
        
        DV_Details.DataSource = dt;
        DV_Details.DataBind();

        dr.Close();
        con.Close();

        dt1 = new DataTable();
        con.Open();
        cmd.CommandText = "SELECT Convert(date,Followup_Date) as 'Followup Date',Remark,Current_Status as 'Current Status',Followup_Required as 'Followup Required',Next_Followup_Date as 'Next Followup' FROM Enquiry_Followup where Enquiry_id=" + Enq_Id;
        cmd.Connection = con;

        dr = cmd.ExecuteReader();
        dt1.Load(dr);
        GV_FollRes.DataSource = dt1;
        GV_FollRes.DataBind();

        dr.Close();
        con.Close();

        
    }
    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        if(Rb_FollRqrd_Ys.Checked==true)
        {
            Foll_Required="Yes";
            string HasText;
            HasText = Request.Form["Tb_NxtFollDt"];
            if (HasText != "")
            {
                Next_Foll_Date = Convert.ToDateTime(Request.Form["Tb_NxtFollDt"]);
            }
            else
            {
                //Next_Foll_Date = Convert.ToDateTime("1900-01-01 00:00:00.000");
                Next_Foll_Date = DateTime.Now.Date;
            }
        }
        else
        {
            Foll_Required="No";
            Next_Foll_Date =Convert.ToDateTime( "1900-01-01 00:00:00.000");
        }


        try
        {
            con.Open();
            cmd2 = new SqlCommand();
            cmd2.CommandText = "Enq_FollowupInsert";
            cmd2.Connection = con;
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.AddWithValue("@Enq_ID", Convert.ToInt32(Enq_Id));
            cmd2.Parameters.AddWithValue("@Remark", Tb_Remark.Text.ToString());
            cmd2.Parameters.AddWithValue("@Followup_Date",DateTime.Now);
            cmd2.Parameters.AddWithValue("@Followup_Req", Foll_Required.ToString());
            cmd2.Parameters.AddWithValue("@Next_Followup_Date", Next_Foll_Date);
            cmd2.ExecuteNonQuery();
            Response.Write("<script>alert('Followup saved successfully')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message.ToString() + "')</script>");
        }
        finally
        {
            con.Close();
            Response.Redirect("SearchEnquiry.aspx");
        }
        
    }
}

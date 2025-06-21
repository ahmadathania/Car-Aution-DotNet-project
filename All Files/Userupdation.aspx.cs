using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Userupdation : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter sda = new SqlDataAdapter("select * from user_reg where username='" + Session["user1"].ToString() + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            name_txt.Text = ds.Tables[0].Rows[0][1].ToString();
            usrame_txt.Text = Session["user1"].ToString();
            pass_txt.Text = ds.Tables[0].Rows[0][3].ToString();
            gndr_txt.Text = ds.Tables[0].Rows[0][4].ToString();
            dob_txt.Text = ds.Tables[0].Rows[0][5].ToString();
            add_txt.Text = ds.Tables[0].Rows[0][6].ToString();
            fon_txt.Text = ds.Tables[0].Rows[0][7].ToString();

            email_txt.Text = ds.Tables[0].Rows[0][8].ToString();
        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("update User_reg set Password='" + newpass_txt.Text + "',Address='" + add_txt.Text + "',contactno='" + fon_txt.Text + "',Emailid='" + email_txt.Text + "' where UserName='" + usrame_txt.Text + "'", con);
        SqlCommand cmdlog = new SqlCommand("update login set Password='" + newpass_txt.Text + "'", con);
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            cmdlog.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception ex)
        {
            Label2.Text = "err" + ex;
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        newpass_txt.Visible = true;

    }


    //else
    //{
    //    SqlCommand cmd = new SqlCommand("update userreg set Password='"+pass_txt.Text+"',Address='" + add_txt.Text + "',fone='" + fon_txt.Text + "',credit='" + credit_txt.Text + "',email='" + email_txt.Text + "' where UserName='" + usrame_txt.Text + "'", con);
    //    try
    //    {
    //        con.Open();
    //        cmd.ExecuteNonQuery();
    //        con.Close();
    //    }
    //    catch (Exception ex)
    //    {
    //        Label2.Text = "err" + ex;
    //    }
    //}


}

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
public partial class Auctionuser : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    static double initrate, oldrate;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter sdabind = new SqlDataAdapter("select Aid,Brand,model,Xtrafet,image,Iprice,Bidrate,Lastdate from Auction where Aid='" + Request.QueryString["FBNo"].ToString() + "'", con);
            DataSet dsb = new DataSet();
            sdabind.Fill(dsb);
            Label2.Text = dsb.Tables[0].Rows[0][1].ToString();
            Label3.Text = dsb.Tables[0].Rows[0][2].ToString();
            Label4.Text = dsb.Tables[0].Rows[0][3].ToString();
            Label6.Text = dsb.Tables[0].Rows[0][1].ToString();
            Image1.ImageUrl = dsb.Tables[0].Rows[0][4].ToString();
            string test1 = dsb.Tables[0].Rows[0][5].ToString();
            initrate = Convert.ToDouble(dsb.Tables[0].Rows[0][5].ToString());
            oldrate = Convert.ToDouble(dsb.Tables[0].Rows[0][6].ToString());
            Label7.Text = dsb.Tables[0].Rows[0][5].ToString();
            Label1.Text = dsb.Tables[0].Rows[0][6].ToString();
            Label8.Text = dsb.Tables[0].Rows[0][7].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double newval;
        newval = Convert.ToDouble(TextBox2.Text);

        if (newval > initrate && newval > oldrate)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlCommand cmdupd = new SqlCommand("update Auction set Bidrate='" + newval + "',date='" + DateTime.Now.ToShortDateString() + "',uname='" + Session["user"].ToString() + "',Email='" + TextBox1.Text + "' where Aid='" + Request.QueryString["FBNo"].ToString() + "'", con);
            con.Open();
            cmdupd.ExecuteNonQuery();
            Label5.Text = "Your Entry Updated, You will get a confirmation Message";
            con.Close();

        }
        else
        {
            Label5.Text = "Invalid value";
        }
    }
}

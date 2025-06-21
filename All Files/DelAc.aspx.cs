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
public partial class DelAc : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmddel = new SqlCommand("Delete Login where Username='" + Session["user"].ToString() + "'", con);
        SqlCommand cmdel2 = new SqlCommand("Delete User_reg where Username='" + Session["user"].ToString() + "'", con);
        con.Open();
        cmddel.ExecuteNonQuery();
        cmdel2.ExecuteNonQuery();
        Image1.Visible = true;
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userhome.aspx");
    }
}

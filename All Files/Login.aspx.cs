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
public partial class Login : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select * from login where Username='" + TextBox3.Text + "' and Password='" + TextBox4.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
            Label2.Text = "Please use a different username and Password";
        else
        {
            Session["user"] = ds.Tables[0].Rows[0][0].ToString();
            Session["Role"] = ds.Tables[0].Rows[0][2].ToString();
            if (ds.Tables[0].Rows[0][2].ToString() == "Admin")
                Response.Redirect("adminhome.aspx");

            else
                Response.Redirect("userhome.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_reg.aspx");
    }
}

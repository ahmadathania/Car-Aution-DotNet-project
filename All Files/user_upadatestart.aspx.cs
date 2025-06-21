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

public partial class userupdate_start : System.Web.UI.Page
{
    SqlConnection con;
    static string strcon;
    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select username,password from user_reg where UserName= '" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' ", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Label1.Text = "Invalid User!!!";
            Label2.Text = "Please check username and password.";
        }
        else
        {
            Session["user1"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("userupdation.aspx");
        }
    }
}

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
public partial class Searchmob : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;

    //SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sdacheck = new SqlDataAdapter("select * from Products where brand like '%" + TextBox1.Text + "%' or model like '%" + TextBox1.Text + "%'", con);
        DataSet ds = new DataSet();
        sdacheck.Fill(ds);
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
    }
}

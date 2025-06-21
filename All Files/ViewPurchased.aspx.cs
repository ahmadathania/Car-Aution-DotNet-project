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
public partial class ViewPurchased : System.Web.UI.Page
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
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmddel = new SqlCommand("delete Cart where Bno='" + e.Item.Cells[1].Text + "'", con);
        con.Open();
        cmddel.ExecuteNonQuery();
        DataGrid1.DataBind();
        Response.Redirect("ViewPurchased.aspx");
        con.Close();

    }
}

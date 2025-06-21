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
public partial class FinalAuction : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter sdabnd = new SqlDataAdapter("select * from Auction where Lastdate<'" + DateTime.Now.ToString() + "' and Status!='Delivered'", con);
            DataSet ds = new DataSet();
            sdabnd.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("No Data Found");
            }
            else
            {
                DataGrid1.DataSource = ds.Tables[0];
                DataGrid1.DataBind();
            }
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmdupd = new SqlCommand("update Auction set Status='Delivered' where Aid='" + e.Item.Cells[1].Text + "'", con);
        con.Open();
        cmdupd.ExecuteNonQuery();
        DataGrid1.DataBind();
        Label1.Text = "Updated";
        con.Close();
    }
}

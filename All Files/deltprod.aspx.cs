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

public partial class deltprod : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            //filed();
        }

    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("delete Products where ProdId='" + e.Item.Cells[1].Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        DataGrid1.DataBind();
        Response.Redirect("deltprod.aspx");
        con.Close();
    }
    public void filed()
    {
        int i;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);

        SqlDataAdapter sda2 = new SqlDataAdapter("select distinct catname from Brand", con);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2);
        for (i = 0; i < ds2.Tables[0].Rows.Count; i++)
        {
            DropDownList1.Items.Add(ds2.Tables[0].Rows[i][0].ToString());
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select * from products where category='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            DataGrid1.Visible = false;
            Label1.Text = "NO PRODUCTS IN THE STOCK ";


        }
        else
        {
            Label1.Visible = false;
            DataGrid1.Visible = true;
        }
    }
}

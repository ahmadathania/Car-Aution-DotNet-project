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

public partial class Auction : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    PagedDataSource pds = new PagedDataSource();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            filed();
        }

    }
    public void filed()
    {
        int i;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);

        SqlDataAdapter sda2 = new SqlDataAdapter("select distinct brand from Products", con);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2);
        for (i = 0; i < ds2.Tables[0].Rows.Count; i++)
        {
            DropDownList1.Items.Add(ds2.Tables[0].Rows[i][0].ToString());
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("Select");
        int i;
        if (DropDownList1.SelectedItem.Text == "Select")
        {
            DropDownList2.Enabled = false;
        }
        else
        {
            DropDownList2.Enabled = true;
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter sda3 = new SqlDataAdapter("select model from Products where brand='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds3 = new DataSet();
            sda3.Fill(ds3);
            for (i = 0; i < ds3.Tables[0].Rows.Count; i++)
            {
                DropDownList2.Items.Add(ds3.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    private void BindGrid()
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select * from Products where model='" + DropDownList2.SelectedItem.ToString() + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();



        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = Convert.ToInt16(ddlPageSize.SelectedValue);
        pds.CurrentPageIndex = CurrentPage;
        lnkbtnNext.Enabled = !pds.IsLastPage;
        lnkbtnPrevious.Enabled = !pds.IsFirstPage;

        DataList1.DataSource = pds;
        DataList1.DataBind();

        doPaging();
    }
    public int CurrentPage
    {

        get
        {
            if (this.ViewState["CurrentPage"] == null)
                return 0;
            else
                return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
        }

        set
        {
            this.ViewState["CurrentPage"] = value;
        }

    }
    private void doPaging()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("PageIndex");
        dt.Columns.Add("PageText");
        for (int i = 0; i < pds.PageCount; i++)
        {
            DataRow dr = dt.NewRow();
            dr[0] = i;
            dr[1] = i + 1;
            dt.Rows.Add(dr);
        }

        //dlpaging.DataSource = dt;
        //dlpaging.DataBind();
    }
    protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        CurrentPage = 0;
        BindGrid();
    }
    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage += 1;
        BindGrid();
    }
    protected void lnkbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage -= 1;
        BindGrid();
    }
    protected void dlpaging_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
        if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
        {
            lnkbtnPage.Enabled = false;
            lnkbtnPage.Font.Bold = true;
        }
    }
    protected void dlpaging_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("lnkbtnPaging"))
        {
            CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
            BindGrid();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

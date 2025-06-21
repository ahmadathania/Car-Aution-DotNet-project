using System;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SelectAuction : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    PagedDataSource pds = new PagedDataSource();
    const int pageSize = 1; // fixed page size

    protected void Page_Load(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);

        if (!IsPostBack)
        {
            CurrentPage = 0;
            BindGrid();
        }
    }

    private void BindGrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Auction WHERE Lastdate < @Now", con);
        da.SelectCommand.Parameters.AddWithValue("@Now", DateTime.Now);
        DataTable dt = new DataTable();
        da.Fill(dt);

        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = pageSize;

        // Prevent index out of range
        if (CurrentPage < 0)
            CurrentPage = 0;
        if (CurrentPage >= pds.PageCount && pds.PageCount > 0)
            CurrentPage = pds.PageCount - 1;

        pds.CurrentPageIndex = CurrentPage;

        lnkbtnPrevious.Enabled = !pds.IsFirstPage;
        lnkbtnNext.Enabled = !pds.IsLastPage;

        DataList1.DataSource = pds;
        DataList1.DataBind();
    }

    protected void lnkbtnNext_Click(object sender, EventArgs e)
    {
        CurrentPage++;
        BindGrid();
    }

    protected void lnkbtnPrevious_Click(object sender, EventArgs e)
    {
        CurrentPage--;
        BindGrid();
    }

    public int CurrentPage
    {
        get
        {
            if (ViewState["CurrentPage"] == null)
                return 0;
            return Convert.ToInt32(ViewState["CurrentPage"]);
        }
        set
        {
            ViewState["CurrentPage"] = value;
        }
    }
}

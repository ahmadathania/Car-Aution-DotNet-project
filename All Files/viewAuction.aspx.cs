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
public partial class viewAuction : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter sdabind = new SqlDataAdapter("select Aid,Prodid,Brand,model,XtraFet,Iprice,Lastdate,Image from Auction", con);
            DataSet dsb = new DataSet();
            sdabind.Fill(dsb);
            DataList1.DataSource = dsb.Tables[0];
            DataList1.DataBind();

        }
    }
}

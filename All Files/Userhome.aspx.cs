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
public partial class Userhome : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlDataAdapter chk = new SqlDataAdapter("select * from Auction where uname='" + Session["user"].ToString() + "' and lastdate='" + DateTime.Now.ToShortDateString() + "'", con);
            DataSet ds = new DataSet();
            chk.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
            }
            else
            {
                string email = ds.Tables[0].Rows[0][12].ToString();
                if (GmailSender.SendMail("ahmadnoor0000p@gmail.com", "universe", email.ToString(), Session["user"].ToString() + "Please contact", DateTime.Now.ToShortDateString() + "\nCheckit"))
                {
                    Label1.Text = "Notification Mail Sent Successfully";

                }
                else
                {
                    Label1.Text = "Notification Mail Failure";
                }
            }
        }
    }
}

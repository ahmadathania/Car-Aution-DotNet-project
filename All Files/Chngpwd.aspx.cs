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
public partial class Chngpwd : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select Password from login where username='" + Session["user"].ToString() + "'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            lbl_invalid.Text = "Invalid password";
        }
        else
        {
            Label1.Visible = true;
            Label2.Visible = true;
            txt_new_password.Visible = true;
            txt_confirm_password.Visible = true;
            update_button.Visible = true;
            cancel_button.Visible = true;

        }
    }
    protected void update_button_Click(object sender, EventArgs e)
    {
        if (txt_new_password.Text == txt_confirm_password.Text)
        {
            lbl_invalid.Text = " ";
            lbl_not_equal.Text = " ";
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlCommand cmd = new SqlCommand("Update login set password='" + txt_new_password.Text + "' where username='" + Session["user"].ToString() + "' and role='Admin'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lbl_success.Text = "Password succesfully changed";
        }
        else
        {
            lbl_not_equal.Text = "Password mismatch";
        }
    }
    protected void cancel_button_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userhome.aspx");
    }
    protected void txt_current_password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_new_password_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_confirm_password_TextChanged(object sender, EventArgs e)
    {

    }
}

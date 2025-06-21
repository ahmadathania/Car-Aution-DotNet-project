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



public partial class user_reg : System.Web.UI.Page
{
    SqlConnection con;
    static string strcon;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bttn_submit_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" || TextBox2.Text != "" || TextBox3.Text != "" || TextBox4.Text != "" || TextBox5.Text != "" || TextBox6.Text != "" || TextBox8.Text != "" || TextBox9.Text != "")
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            SqlCommand cmdins = new SqlCommand("insert into user_reg(userid,Name,Username,Password,Gender,Dob,Address,contactno,Emailid) values('" + GenerateId() + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox9.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "')", con);
            SqlCommand cmdlogin = new SqlCommand("insert into login values('" + TextBox2.Text + "','" + TextBox4.Text + "','Customer')", con);
            try
            {
                con.Open();
                int p = cmdins.ExecuteNonQuery();
                int q = cmdlogin.ExecuteNonQuery();
                con.Close();
                if (p > 0 && q > 0)
                {
                    Label2.Text = "User registration successfully completed";
                    Label1.Visible = false;
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Label2.Text = "Check the values you entered";
                }

            }
            catch
            {
                Label2.Text = "Check the values you entered";
            }

        }
        else
        {
            Label2.Text = "All fields are mandatory";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox9.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
    private string GenerateId()
    {
        string strNewOrderID, strMaxOrderID;
        int intMaxOrderID;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("Select max(Userid) from user_reg", con);
        DataSet dsTemp = new DataSet();
        sda.Fill(dsTemp);
        strMaxOrderID = dsTemp.Tables[0].Rows[0][0].ToString();
        if (strMaxOrderID == "")
            strNewOrderID = "C101";
        else
        {
            intMaxOrderID = Convert.ToInt32(strMaxOrderID.Substring(1, 3));
            intMaxOrderID += 1;
            strMaxOrderID = Convert.ToString(intMaxOrderID);
            int intCnt, intLen;
            strNewOrderID = "C";
            intLen = 3 - strMaxOrderID.Length;
            for (intCnt = 0; intCnt < intLen; ++intCnt)
                strNewOrderID += "1";

            strNewOrderID += Convert.ToString(intMaxOrderID);
        }
        return strNewOrderID;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sdacheck = new SqlDataAdapter("select Username from user_reg where Username='" + TextBox2.Text + "'", con);
        DataSet ds = new DataSet();
        sdacheck.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            bttn_submit.Enabled = true;
            Label1.Text = "Username is avalilable";
        }
        else
        {
            Label1.Text = "Username is not avalilable, choose another one";
        }

    }
}

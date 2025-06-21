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
public partial class Add2Auction : System.Web.UI.Page
{
    static string strcon;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
{
    if (!IsPostBack)
    {
        string fbNo = Request.QueryString["FBNo"];
        if (!string.IsNullOrEmpty(fbNo))
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);

            SqlDataAdapter sdabind = new SqlDataAdapter("SELECT Prodid, Brand, model, image, description FROM products WHERE prodid = @fbNo", con);
            sdabind.SelectCommand.Parameters.AddWithValue("@fbNo", fbNo);
            DataSet dsb = new DataSet();
            sdabind.Fill(dsb);

            if (dsb.Tables[0].Rows.Count > 0)
            {
                Label1.Text = fbNo;
                Label2.Text = dsb.Tables[0].Rows[0]["Brand"].ToString();
                Label3.Text = dsb.Tables[0].Rows[0]["model"].ToString();
                Label4.Text = dsb.Tables[0].Rows[0]["description"].ToString(); // ✅ Fixed here
                Image1.ImageUrl = dsb.Tables[0].Rows[0]["image"].ToString();
                Label6.Text = dsb.Tables[0].Rows[0]["model"].ToString();
            }
            else
            {
                Label5.Text = "No product found with that ID.";
            }
        }
        else
        {
            Label5.Text = "No product ID provided in the URL.";
        }
    }
}

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            string prodid;
            prodid = GenerateId();
            if (filename.PostedFile != null)
            {
                //string sPath=uploadFolder;
                string sFileInfo = "<br>FileName:" + filename.PostedFile.FileName + "<br>ContentType" + "<br>ContentLength:" + filename.PostedFile.ContentLength.ToString();

                string url = filename.FileName;
                url = url.Substring(url.LastIndexOf("\\") + 1);

                string[] ext = url.Split(new Char[] { '.' });
                string saveasname = "Auction_" + prodid + "." + ext[1];

                url = "~/Auction/" + saveasname;

                string absolutepath = Server.MapPath(url);

                try
                {
                    filename.PostedFile.SaveAs(absolutepath);
                    Label5.Text = "Upload Cars";
                    Image1.Visible = true;
                    Image1.ImageUrl = url;
                    updateImage(url, prodid);
                }

                catch
                {
                    //blb_statusdisplay.Text="Error saving file"+sFileInfo+"<br>"+exc.ToString;
                }

            }
            else
            {

                Label5.Text = "File not specified";

            }
        }
        else
        {
            Label5.Text = "All fields are mandatory";
        }
    }
    protected void updateImage(string imgname, string prodid1)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("insert into Auction(Aid,Brand,model,pid,XtraFet,uname,Iprice,Bidrate,Date,Lastdate,Image) values('" + prodid1 + "','" + Label2.Text + "','" + Label3.Text + "','" + Label1.Text + "','" + TextBox1.Text + "','gigin','" + TextBox2.Text + "',0,'" + DateTime.Now.ToShortDateString() + "','" + TextBox3.Text + "','" + imgname + "')", con);
        try
        {
            con.Open();
            int p = cmd.ExecuteNonQuery();
            con.Close();
            if (p > 0)
            {
                //LinkButton1.Visible = true;
                //LinkButton2.Visible = true;
                Label5.Text = "Modified Car added to Auction";
            }
            else
            {
                Label5.Text = "Not inserted";
            }

        }
        catch (Exception ex)
        {
            Label5.Text = "Not completed'" + ex + "'";

        }
    }
    private string GenerateId()
    {
        string strNewOrderID, strMaxOrderID;
        int intMaxOrderID;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("Select max(Aid) from Auction ", con);
        DataSet dsTemp = new DataSet();
        sda.Fill(dsTemp);
        strMaxOrderID = dsTemp.Tables[0].Rows[0][0].ToString();
        if (strMaxOrderID == "")
            strNewOrderID = "A101";
        else
        {
            intMaxOrderID = Convert.ToInt32(strMaxOrderID.Substring(1, 3));
            intMaxOrderID += 1;
            strMaxOrderID = Convert.ToString(intMaxOrderID);
            int intCnt, intLen;
            strNewOrderID = "A";
            intLen = 3 - strMaxOrderID.Length;
            for (intCnt = 0; intCnt < intLen; ++intCnt)
                strNewOrderID += "A";

            strNewOrderID += Convert.ToString(intMaxOrderID);
        }
        return strNewOrderID;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
}


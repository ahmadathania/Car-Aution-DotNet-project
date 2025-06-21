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

public partial class UploadMobiles : System.Web.UI.Page
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
        if (ddlBrandNames.SelectedIndex > 0 || DropDownList1.SelectedIndex > 0 || TextBox1.Text != "" || TextBox3.Text != "")
        {

            strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            con = new SqlConnection(strcon);
            string prodid;
            prodid = GenerateId();
            if (filename.PostedFile != null)
            {
                string sFileInfo = "<br>FileName:" + filename.PostedFile.FileName + "<br>ContentType" + "<br>ContentLength:" + filename.PostedFile.ContentLength.ToString();

                string url = filename.FileName;
                url = url.Substring(url.LastIndexOf("\\") + 1);

                string[] ext = url.Split(new Char[] { '.' });
                string saveasname = "Product_" + prodid + "." + ext[1];

                url = "~/My Images/" + saveasname;

                string absolutepath = Server.MapPath(url);

                try
                {
                    filename.PostedFile.SaveAs(absolutepath);
                    Label1.Text = "Upload to Used CArs now";
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

                Label1.Text = "File not specified";

            }
        }
        else
        {
            Label1.Text = "Please select an item";
        }
        addnewbttn.Visible = true;
    }



    protected void updateImage(string imgname, string prodid1)
    {
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("insert into Products(ProdId,category,brand,model,image,price,description) values('" + prodid1 + "','" + DropDownList1.SelectedItem.ToString() + "','" + ddlBrandNames.SelectedItem.Text + "','" + newmodl_txt.Text + "','" + imgname + "','" + TextBox1.Text + "','" + TextBox3.Text + "')", con);

        try
        {
            con.Open();
            int p = cmd.ExecuteNonQuery();
            con.Close();
            if (p > 0)
            {

                Label1.Text = "New Details  uploaded";
            }
            else
            {
                Label1.Text = "Not inserted";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = "Not completed'" + ex + "'";

        }
    }
    private string GenerateId()
    {
        string strNewOrderID, strMaxOrderID;
        int intMaxOrderID;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("Select max(prodid) from Products ", con);
        DataSet dsTemp = new DataSet();
        sda.Fill(dsTemp);
        strMaxOrderID = dsTemp.Tables[0].Rows[0][0].ToString();
        if (strMaxOrderID == "")
            strNewOrderID = "P101";
        else
        {
            intMaxOrderID = Convert.ToInt32(strMaxOrderID.Substring(1, 3));
            intMaxOrderID += 1;
            strMaxOrderID = Convert.ToString(intMaxOrderID);
            int intCnt, intLen;
            strNewOrderID = "P";
            intLen = 3 - strMaxOrderID.Length;
            for (intCnt = 0; intCnt < intLen; ++intCnt)
                strNewOrderID += "1";

            strNewOrderID += Convert.ToString(intMaxOrderID);
        }
        return strNewOrderID;

    }
    private string GenerateId1()
    {
        string strNewOrderID, strMaxOrderID;
        int intMaxOrderID;
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("Select max(Brandid) from Brand ", con);
        DataSet dsTemp1 = new DataSet();
        sda.Fill(dsTemp1);
        strMaxOrderID = dsTemp1.Tables[0].Rows[0][0].ToString();
        if (strMaxOrderID == "")
            strNewOrderID = "A100";
        else
        {
            intMaxOrderID = Convert.ToInt32(strMaxOrderID.Substring(1, 3));
            intMaxOrderID += 1;
            strMaxOrderID = Convert.ToString(intMaxOrderID);
            int intCnt, intLen;
            strNewOrderID = "A";
            intLen = 3 - strMaxOrderID.Length;
            for (intCnt = 0; intCnt < intLen; ++intCnt)
                strNewOrderID += "1";

            strNewOrderID += Convert.ToString(intMaxOrderID);
        }
        return strNewOrderID;
    }

    int i;
    public void filed()
    {
        ddlBrandNames.Items.Clear();
        ddlBrandNames.Items.Add("Select");
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);
        SqlDataAdapter sda2 = new SqlDataAdapter("select distinct brandname from Brand where catname='" + DropDownList1.SelectedItem.Text + "'", con);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2);
        for (i = 0; i < ds2.Tables[0].Rows.Count; i++)
        {
            ddlBrandNames.Items.Add(ds2.Tables[0].Rows[i][0].ToString());
        }


    }

    protected void brnd_list_SelectedIndexChanged(object sender, EventArgs e)
    {
        //model_list.Items.Clear();

        //model_list.Enabled = true;
        //strcon = ConfigurationSettings.AppSettings["con"].ToString();
        //con = new SqlConnection(strcon);
        //SqlDataAdapter sda3 = new SqlDataAdapter("select brandid,model from Brand where Brandname='" + ddlBrandNames.SelectedItem.Text + "'", con);
        //DataSet ds3 = new DataSet();
        //sda3.Fill(ds3);
        //model_list.DataSource = ds3;
        //model_list.DataTextField = "model";
        //model_list.DataValueField = "brandid";
        //model_list.DataBind();

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //model_list.Enabled = false;
        ddlBrandNames.Enabled = false;
        newbrnd_txt.Visible = true;
        newmodl_txt.Visible = true;
        Label2.Visible = true;
        // Label3.Visible = true;
        Button2.Visible = true;
        // Button3.Visible = true;

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        // Hide unnecessary UI elements
        Label2.Visible = false;
        Button2.Visible = false;
        ddlBrandNames.Enabled = true;

        // Retrieve connection string
        strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(strcon);

        try
        {
            // Ensure necessary fields are filled
            if (string.IsNullOrEmpty(newbrnd_txt.Text) || string.IsNullOrEmpty(newmodl_txt.Text))
            {
                Label1.Text = "Brand name and model name are required!";
                return;
            }

            // Generate unique brand ID
            string brandId = GenerateId1();

            // Use parameterized query to insert data safely
            SqlCommand cmd = new SqlCommand("INSERT INTO Brand (Brandid, catname, Brandname, model) VALUES (@Brandid, @CatName, @BrandName, @Model)", con);
            cmd.Parameters.AddWithValue("@Brandid", brandId);
            cmd.Parameters.AddWithValue("@CatName", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@BrandName", newbrnd_txt.Text);
            cmd.Parameters.AddWithValue("@Model", newmodl_txt.Text);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            // Confirm successful insertion
            if (rowsAffected > 0)
            {
                Response.Redirect("UploadMobiles.aspx");
            }
            else
            {
                Label1.Text = "Failed to insert the brand details.";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: " + ex.Message;
        }
    }


    protected void addnewbttn_Click(object sender, EventArgs e)
    {
        Response.Redirect("UploadMobiles.aspx");
    }
    protected void model_list_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        filed();

    }
}
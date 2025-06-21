using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class credit : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    string Brand, Model, Price, prod;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            con = new SqlConnection(strcon);
            TextBox7.Text = DateTime.Now.ToShortDateString();

            if (Request.QueryString["FBno"] != null)
            {
                LoadProductDetails(Request.QueryString["FBno"]);
                LoadUserDetails();
            }
            else
            {
                Label1.Text = "Product not found.";
            }
        }
    }

    void LoadProductDetails(string prodId)
    {
        SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Products WHERE Prodid=@pid", con);
        sda.SelectCommand.Parameters.AddWithValue("@pid", prodId);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            DataRow row = ds.Tables[0].Rows[0];
            Brand = row["brand"].ToString();
            Model = row["model"].ToString();
            Price = row["price"].ToString();
            prod = Brand + " " + Model;

            TextBox6.Text = prod;
            TextBox4.Text = Price;
            TextBox5.Text = row["description"].ToString();
            Image1.ImageUrl = ResolveUrl(row["image"].ToString());
        }
    }

    void LoadUserDetails()
    {
        if (Session["user"] != null)
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM User_reg WHERE Username=@uname", con);
            sda.SelectCommand.Parameters.AddWithValue("@uname", Session["user"].ToString());
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                TextBox1.Text = row["Username"].ToString();
                TextBox2.Text = row["Name"].ToString(); // Assuming 'Name' is 2nd column
            }
        }
        else
        {
            Label1.Text = "User not logged in.";
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        LinkButton1.Enabled = !string.IsNullOrWhiteSpace(TextBox3.Text);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string newId = GenerateId();
        con = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand("INSERT INTO cart(Bno, Prodid, Username, Credit, Product, dateofpurchase, Price) VALUES (@bno, @pid, @user, @credit, @product, @date, @price)", con);

        cmd.Parameters.AddWithValue("@bno", newId);
        cmd.Parameters.AddWithValue("@pid", Request.QueryString["FBno"]);
        cmd.Parameters.AddWithValue("@user", Session["user"].ToString());
        cmd.Parameters.AddWithValue("@credit", TextBox3.Text);
        cmd.Parameters.AddWithValue("@product", TextBox6.Text);
        cmd.Parameters.AddWithValue("@date", DateTime.Now.ToShortDateString());
        cmd.Parameters.AddWithValue("@price", TextBox4.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Label1.Text = "Item " + TextBox6.Text + " purchased successfully!";
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewMobiles.aspx");
    }

    private string GenerateId()
    {
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("SELECT MAX(Bno) FROM cart", con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        string maxId = ds.Tables[0].Rows[0][0].ToString();
        int num = 101;
        if (!string.IsNullOrEmpty(maxId))
        {
            int.TryParse(maxId.Substring(1), out num);
            num++;
        }
        return "B" + num.ToString();
    }
}

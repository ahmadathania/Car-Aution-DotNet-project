using System;
using System.Data;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ViewMobiles : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            DataList1.Visible = false;
        }
    }

    // Populate brands based on selected category
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string category = DropDownList3.SelectedItem.Text;
        if (category != "Select")
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Select Brand");
            DropDownList1.Enabled = true;

            using (con = new SqlConnection(strcon))
            {
                string query = "SELECT DISTINCT brand FROM Products WHERE category = @category";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@category", category);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr["brand"].ToString());
                }
                con.Close();
            }
        }
        else
        {
            DropDownList1.Enabled = false;
            DropDownList2.Enabled = false;
            DataList1.Visible = false;
        }
    }

    // Populate models based on selected brand
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("Select Model");
        DataList1.Visible = false;

        if (DropDownList1.SelectedItem.Text != "Select Brand")
        {
            DropDownList2.Enabled = true;
            using (con = new SqlConnection(strcon))
            {
                string query = "SELECT model FROM Products WHERE brand = @brand AND category = @category";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@category", DropDownList3.SelectedItem.Text);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList2.Items.Add(dr["model"].ToString());
                }
                con.Close();
            }
        }
        else
        {
            DropDownList2.Enabled = false;
        }
    }

    // Show products based on selected model
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.Text != "Select Model")
        {
            using (con = new SqlConnection(strcon))
            {
                string query = "SELECT * FROM Products WHERE brand = @brand AND model = @model AND category = @category";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@model", DropDownList2.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@category", DropDownList3.SelectedItem.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                DataList1.DataSource = ds.Tables[0];
                DataList1.DataBind();
                DataList1.Visible = true;
            }
        }
        else
        {
            DataList1.Visible = false;
        }
    }
}

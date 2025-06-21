using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_accessories : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadBrands();
            LoadAccessories(); // default load all accessories
        }
    }

    private void LoadBrands()
    {
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT brand FROM Products WHERE category = 'Accessories'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Select");
            while (reader.Read())
            {
                DropDownList1.Items.Add(reader["brand"].ToString());
            }
            con.Close();
        }
    }

    private void LoadModels(string brand)
    {
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT DISTINCT model FROM Products WHERE category = 'Accessories' AND brand = @brand", con);
            cmd.Parameters.AddWithValue("@brand", brand);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            DropDownList2.Items.Clear();
            DropDownList2.Items.Add("Select");
            while (reader.Read())
            {
                DropDownList2.Items.Add(reader["model"].ToString());
            }
            con.Close();
        }
    }

    private void LoadAccessories(string brand = null, string model = null)
    {
        using (SqlConnection con = new SqlConnection(connStr))
        {
            string query = "SELECT brand, model, image, price, ProdId FROM Products WHERE category = 'Accessories'";
            SqlCommand cmd = new SqlCommand();

            if (!string.IsNullOrEmpty(brand) && brand != "Select")
            {
                query += " AND brand = @brand";
                cmd.Parameters.AddWithValue("@brand", brand);
            }

            if (!string.IsNullOrEmpty(model) && model != "Select")
            {
                query += " AND model = @model";
                cmd.Parameters.AddWithValue("@model", model);
            }

            cmd.CommandText = query;
            cmd.Connection = con;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedBrand = DropDownList1.SelectedValue;
        LoadModels(selectedBrand);
        LoadAccessories(selectedBrand);
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedBrand = DropDownList1.SelectedValue;
        string selectedModel = DropDownList2.SelectedValue;
        LoadAccessories(selectedBrand, selectedModel);
    }
}

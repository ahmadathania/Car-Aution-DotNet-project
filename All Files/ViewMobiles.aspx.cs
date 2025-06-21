using System;
using System.Web.UI;

public partial class ViewMobiles : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set SQL to show only used cars
            SqlDataSource1.SelectCommand = "SELECT [category], [brand], [model], [image], [price], [description] FROM [Products] WHERE [category] = 'Used Cars'";
        }
    }
}

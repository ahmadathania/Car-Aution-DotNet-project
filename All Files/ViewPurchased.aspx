<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewPurchased.aspx.cs" Inherits="ViewPurchased" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1"
        ForeColor="#333333" GridLines="None" Height="194px" OnDeleteCommand="DataGrid1_DeleteCommand"
        Width="574px">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditItemStyle BackColor="#999999" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
        </Columns>
    </asp:DataGrid>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT [Bno], [ProdId], [UserName], [Credit], [Product], [dateofpurchase], [Price] FROM [cart] WHERE ([UserName] = @UserName)">
        <SelectParameters>
            <asp:SessionParameter Name="UserName" SessionField="user" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>


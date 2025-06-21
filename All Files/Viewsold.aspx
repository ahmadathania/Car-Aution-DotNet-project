<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Viewsold.aspx.cs" Inherits="Viewsold" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <table>
        <tr>
            <td style="width: 100px; text-align: right;">
                Total Amount&nbsp; :</td>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="2">
                <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" Width="655px" OnDeleteCommand="DataGrid1_DeleteCommand">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:ButtonColumn CommandName="Delete" Text="Remove"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid></td>
        </tr>
        <tr>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT [Bno], [ProdId], [UserName], [Credit], [Product], [dateofpurchase], [Price] FROM [cart]">
    </asp:SqlDataSource>
</asp:Content>


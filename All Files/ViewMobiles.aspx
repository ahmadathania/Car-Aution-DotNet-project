<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewMobiles.aspx.cs" Inherits="ViewMobiles" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" CellPadding="4" ForeColor="#333333">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="5" style="width: 100px">
                        </td>
                </tr>
                <tr>
                    <td style="width: 100px" rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="111px" ImageUrl='<%# Eval("image") %>'
                            Style="position: relative" Width="103px" /></td>
                    <td style="width: 102px">
                        Category:
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' Width="162px" style="position: relative"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 102px; height: 21px;">
                        Brand:&nbsp;
                    </td>
                    <td style="width: 100px; height: 21px;">
                        <asp:Label ID="brandLabel" runat="server" Style="position: relative" Text='<%# Eval("brand") %>' Width="163px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        Model:
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="modelLabel" runat="server" Style="position: relative" Text='<%# Eval("model") %>' Width="163px"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 102px">
                        Price:
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' Width="162px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="1">
                        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' Height="73px" Width="172px"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3" rowspan="1">
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT [category], [brand], [model], [image], [price], [description] FROM [Products]">
    </asp:SqlDataSource>
</asp:Content>


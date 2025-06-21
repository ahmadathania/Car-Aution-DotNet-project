<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="deltprod.aspx.cs" Inherits="deltprod" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
                Select Category</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Used Cars</asp:ListItem>
                    <asp:ListItem>Accessories</asp:ListItem>
                    <asp:ListItem>New Car</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" EnableViewState="False"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataGrid ID="DataGrid1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" GridLines="None" OnDeleteCommand="DataGrid1_DeleteCommand"
                    Width="749px">
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditItemStyle BackColor="#7C6F57" />
                    <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <AlternatingItemStyle BackColor="White" />
                    <ItemStyle BackColor="#E3EAEB" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:ButtonColumn CommandName="Delete" Text="Delete"></asp:ButtonColumn>
                    </Columns>
                </asp:DataGrid></td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT [ProdId], [category], [brand], [model], [price], [description] FROM [Products] WHERE ([category] = @category)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="category" PropertyName="SelectedValue"
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


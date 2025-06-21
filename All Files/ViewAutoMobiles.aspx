<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ViewAutoMobiles.aspx.cs" Inherits="ViewMobiles" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
                Select Category</td>
            <td style="width: 163px">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
                    Style="position: relative">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>New Car</asp:ListItem>
                    <asp:ListItem>Used Cars</asp:ListItem>
                    <asp:ListItem>Accessories</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px; text-align: right">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Select Brand</td>
            <td style="width: 163px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="164px" Enabled="False">
                    <asp:ListItem>Select Brand</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 100px; text-align: right">
                Select Model</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Width="168px">
                    <asp:ListItem>Select Model</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 163px">
            </td>
            <td style="width: 100px; text-align: right">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 61px" valign="top">
            </td>
            <td style="width: 163px; height: 61px">
                <strong><span style="font-size: 20px">Available Products</span></strong></td>
            <td style="width: 100px; height: 61px; text-align: right">
            </td>
            <td style="width: 100px; height: 61px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" Width="223px" RepeatColumns="2" Visible="False">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("brand") %>'></asp:Label><br />
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("model") %>'></asp:Label><br />
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' Width="105px" Height="105px" /></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                <a  href='credit.aspx?FBNo=<%# Eval("prodid")%>'><strong><span style="color: Red; font-size: 10pt;">Buy</span></strong></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SeparatorTemplate>
                        --
                    </SeparatorTemplate>
                </asp:DataList></td>
            <td colspan="2" valign="top">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="3" style="width: 100px">
                                    <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("image") %>'
                                        Width="91px" /></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("brand") %>' Width="73px"></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("model") %>'></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>
                                <td style="width: 100px">
                                <a  href='credit.aspx?FBNo=<%# Eval("prodid")%>'><strong><span style="color: Red; font-size: 10pt;">Buy</span></strong></a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 21px">
                                    <span style="color: darkmagenta">------------------------------------</span></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
            <td style="width: 100px">
                &nbsp;&nbsp;&nbsp;
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                    SelectCommand="SELECT [brand], [model], [image], [price], [ProdId] FROM [Products] WHERE ([category] = @category)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mobile Phones" Name="category" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 163px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Searchmob.aspx.cs" Inherits="Searchmob" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
                Product Name</td>
            <td style="width: 220px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" BorderColor="#FF8000"
                    BorderWidth="1px" Width="380px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="99px" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 220px; height: 21px">
                &nbsp;<asp:DataList ID="DataList1" runat="server">
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
                                <td style="width: 100px; height: 25px">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("model") %>'></asp:Label></td>
                                <td style="width: 100px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 23px">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label></td>
                                <td style="width: 100px; height: 23px">
                                    <a href='credit.aspx?FBNo=<%# Eval("prodid")%>'><strong><span style="font-size: 10pt;
                                        color: red">Buy</span></strong></a>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 12px">
                                </td>
                                <td style="width: 100px; height: 12px">
                                </td>
                                <td style="width: 100px; height: 12px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 21px">
                                    <span style="color: darkmagenta">------------------------------------</span></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 220px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


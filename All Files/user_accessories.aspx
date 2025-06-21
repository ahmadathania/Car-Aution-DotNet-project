<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="user_accessories.aspx.cs" Inherits="user_accessories" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">Select Brand</td>
            <td style="width: 127px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="144px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" />
            </td>
            <td style="width: 100px">Select Model</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="120px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center;">
                <span style="font-size: 24pt">AVAILABLE ACCESSORIES</span>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
                    <ItemTemplate>
                        <table style="margin: 10px;">
                            <tr>
                                <td>Brand:</td>
                                <td><asp:Label ID="brandLabel" runat="server" Text='<%# Eval("brand") %>' /></td>
                                <td rowspan="4" valign="top">
                                    <asp:Image ID="Image1" runat="server" Height="86px" Width="74px" ImageUrl='<%# Eval("image") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Model:</td>
                                <td><asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' /></td>
                            </tr>
                            <tr>
                                <td>Price:</td>
                                <td><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <a href='credit.aspx?FBNo=<%# Eval("ProdId") %>'>
                                        <strong><span style="color: Red; font-size: 10pt;">Buy</span></strong>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

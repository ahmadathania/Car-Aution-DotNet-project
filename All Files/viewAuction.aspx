<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="viewAuction.aspx.cs" Inherits="viewAuction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3">
                Cars in Auction</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 21px">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="3" style="width: 100px">
                                    <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("image") %>'
                                        Width="91px" /></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text='<%# Eval("brand") %>'
                                        Width="73px"></asp:Label></td>
                                <td style="font-weight: bold; width: 100px; color: #ff0000; text-decoration: underline">
                                </td>
                            </tr>
                            <tr style="font-weight: bold; color: #ff0000; text-decoration: underline">
                                <td style="width: 100px; height: 25px">
                                    <asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text='<%# Eval("model") %>'></asp:Label></td>
                                <td style="width: 100px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 36px">
                                    <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="10pt" ForeColor="#FF6600"
                                        Text='<%# Eval("Iprice") %>'></asp:Label></td>
                                <td style="width: 100px; height: 36px">
                                    <a href='Add2Auction.aspx?FBNo=<%# Eval("prodid")%>'><strong><span style="font-size: 10pt;
                                        color: red">BID</span></strong></a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("XtraFet") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3" style="height: 21px">
                                    <span style="color: black">------------------------------------</span></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


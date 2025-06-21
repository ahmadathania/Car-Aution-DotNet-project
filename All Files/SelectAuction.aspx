<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="SelectAuction.aspx.cs" Inherits="SelectAuction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <table>
                <tr>
                    <td rowspan="3" style="width: 150px">
                        <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl='<%# Eval("image") %>' Width="150px" />
                    </td>
                    <td style="width: 100px">
                        <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="20pt" Text='<%# Eval("brand") %>' Width="73px"></asp:Label>
                    </td>
                    <td style="font-weight: bold; width: 100px; color: #ff0000; text-decoration: underline">
                    </td>
                </tr>
                <tr style="font-weight: bold; color: #ff0000; text-decoration: underline">
                    <td style="width: 100px; height: 25px">
                        <asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="15pt" Text='<%# Eval("model") %>'></asp:Label>
                    </td>
                    <td style="width: 100px; height: 25px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 36px">
                        <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="12pt" ForeColor="#FF6600" Text='<%# Eval("Iprice") %>'></asp:Label>
                    </td>
                    <td style="width: 100px; height: 36px">
                        <a href='Auctionuser.aspx?FBNo=<%# Eval("Aid")%>'><strong><span style="font-size: 10pt; color: red">Select</span></strong></a>
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
                        <span style="color: darkmagenta">------------------------------------</span>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <br />

    <!-- Pagination Controls -->
    <asp:LinkButton ID="lnkbtnPrevious" runat="server" OnClick="lnkbtnPrevious_Click">Previous</asp:LinkButton>
    <span> &lt;----------&gt; </span>
    <asp:LinkButton ID="lnkbtnNext" runat="server" OnClick="lnkbtnNext_Click">Next</asp:LinkButton>
    
    <br />
</asp:Content>

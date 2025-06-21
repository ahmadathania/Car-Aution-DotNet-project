<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Auction.aspx.cs" Inherits="Auction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 170px">
                <span style="font-size: 25px; font-family: Tahoma">Add to Auction</span></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 170px">
                Select Company</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Width="115px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 170px; height: 19px">
                Select Model</td>
            <td style="width: 100px; height: 19px">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="113px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td style="width: 100px; height: 19px">
            </td>
        </tr>
        <tr>
            <td style="width: 170px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="3" style="width: 100px">
                                    <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("image") %>'
                                        Width="91px" /></td>
                                <td style="width: 100px">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("brand") %>' Width="73px" Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                <td style="width: 100px; font-weight: bold; color: #ff0000; text-decoration: underline;">
                                </td>
                            </tr>
                            <tr style="font-weight: bold; color: #ff0000; text-decoration: underline">
                                <td style="width: 100px; height: 25px">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("model") %>' Font-Names="Tahoma" Font-Size="10pt"></asp:Label></td>
                                <td style="width: 100px; height: 25px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 36px;">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' Font-Names="Tahoma" Font-Size="10pt" ForeColor="#FF6600"></asp:Label></td>
                                <td style="width: 100px; height: 36px;">
                                    <a href='Add2Auction.aspx?FBNo=<%# Eval("prodid")%>'><strong><span style="font-size: 10pt;
                                        color: red">Add to Auction</span></strong></a>
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
        </tr>
        <tr>
            <td style="width: 170px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                    SelectCommand="SELECT [Prodid], [brand], [model], [image], [price] FROM [Products] WHERE ([model] = @model)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="model" PropertyName="SelectedValue"
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:LinkButton ID="lnkbtnPrevious" runat="server" OnClick="lnkbtnPrevious_Click">Previous</asp:LinkButton>&lt;-----------&gt;<asp:LinkButton
                    ID="lnkbtnNext" runat="server" OnClick="lnkbtnNext_Click">Next</asp:LinkButton><asp:DropDownList
                        ID="ddlPageSize" runat="server" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                    </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


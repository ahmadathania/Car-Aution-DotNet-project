<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paging.aspx.cs" Inherits="paging" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:Image ID="Image1" runat="server" Height="98px" Width="103px" ImageUrl='<%# Eval("Image") %>' /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Brand") %>'></asp:Label></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></div>
        <asp:DataList ID="dlpaging" runat="server" OnItemCommand="dlpaging_ItemCommand" OnItemDataBound="dlpaging_ItemDataBound" RepeatColumns="10" Width="204px">
            <ItemTemplate>
               <asp:LinkButton ID="lnkbtnPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>' CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>' OnClick="lnkbtnPaging_Click"></asp:LinkButton></ItemTemplate>
        </asp:DataList><asp:LinkButton ID="lnkbtnPrevious" runat="server" OnClick="lnkbtnPrevious_Click">Prev</asp:LinkButton>.............<asp:LinkButton
            ID="lnkbtnNext" runat="server" OnClick="lnkbtnNext_Click">Next</asp:LinkButton>..............<asp:DropDownList
                ID="ddlPageSize" runat="server" AutoPostBack="True">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
            </asp:DropDownList><br />
        &nbsp;
    </form>
</body>
</html>

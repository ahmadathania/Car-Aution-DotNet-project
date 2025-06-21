<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-attachment: fixed; background-repeat: no-repeat">
        <img src="Icons/back.jpg" id="IMG1" />
        <table style="z-index: 106; left: 44px; position: absolute; top: 368px">
            <tr>
                <td style="width: 100px; height: 22px">
                    <span style="color: #ffffff">Username</span></td>
                <td style="width: 100px; height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" BorderWidth="0px" ForeColor="#FF9900"
                        Width="109px"></asp:TextBox></td>
                <td style="width: 100px; height: 22px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 14px">
                    <span style="color: #ffffff">Password</span></td>
                <td style="width: 100px; height: 14px">
                    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" BorderWidth="0px" TextMode="Password"
                        Width="107px"></asp:TextBox></td>
                <td style="width: 100px; height: 14px">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#FFC080" OnClick="LinkButton1_Click"
                        Style="left: 147px; top: 21px">Sign Up</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" BorderWidth="0px" ForeColor="#FF3366"
                        OnClick="Button1_Click" Style="background-color: transparent" Text="Sign In" /></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Label ID="Label2" runat="server" ForeColor="#33CCFF"></asp:Label></td>
                <td style="width: 100px; height: 21px">
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
        </table>
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" BorderWidth="0px" Style="z-index: 101;
            left: 423px; position: absolute; top: 118px" Width="109px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" BorderWidth="0px" Style="z-index: 102;
            left: 425px; position: absolute; top: 150px" TextMode="Password" Width="107px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BorderStyle="None" BorderWidth="0px" OnClick="Button1_Click"
            Style="z-index: 103; left: 569px; position: absolute; top: 149px; background-color: transparent"
            Text="Sign In" />
        <asp:Label ID="Label1" runat="server" ForeColor="White" Style="z-index: 104; left: 657px;
            position: absolute; top: 149px"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FFC080" OnClick="LinkButton1_Click"
            Style="z-index: 105; left: 658px; position: absolute; top: 120px">Sign Up</asp:LinkButton>
        &nbsp;</div>
    </form>
</body>
</html>

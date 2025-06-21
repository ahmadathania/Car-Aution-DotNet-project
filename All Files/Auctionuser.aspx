<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Auctionuser.aspx.cs" Inherits="Auctionuser" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="TABLE1">
        <tr>
            <td rowspan="10" style="width: 91px" valign="top">
                <asp:Image ID="Image1" runat="server" Height="267px" Width="358px" /></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="20pt" ForeColor="Gray"></asp:Label></td>
            <td style="font-size: 10pt; width: 100px; color: #000000" valign="top">
                <asp:Label ID="Label5" runat="server" ForeColor="#C00000"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px" valign="top">
                <span>Brand</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr style="font-weight: bold; font-size: 11pt; color: #cc0033">
            <td style="width: 100px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Model</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px" valign="top">
                <span>Features</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px" valign="top">
                Starting Price</td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px; height: 21px" valign="top">
                Latest Bid Amount</td>
            <td style="width: 100px; height: 21px" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px; height: 21px" valign="top">
                Last Date</td>
            <td style="width: 100px; height: 21px" valign="top">
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px" valign="top">
                <span>Bid your car</span></td>
            <td style="font-size: 12pt; width: 100px; font-family: Times New Roman" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Width="111px"></asp:TextBox><span style="font-size: 10pt;
                    font-family: Tahoma"> &nbsp; </span>
            </td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 100px" valign="top">
                Emailid</td>
            <td style="font-size: 12pt; width: 100px; font-family: Times New Roman" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Width="182px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Specfy a valid Email ID"
                    Font-Names="Tahoma" Font-Size="10pt" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="191px"></asp:RegularExpressionValidator></td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td rowspan="1" style="width: 91px; height: 170px" valign="top">
                <span style="font-size: 11pt; color: #cc0033; font-family: Tahoma">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Smaller"
                        ForeColor="Red" Height="27px" OnClick="Button1_Click" Text="Update" Width="65px" /></span></td>
            <td style="width: 100px; height: 170px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma"></span>
            </td>
            <td style="width: 100px; height: 170px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 91px; height: 183px" valign="top">
            </td>
            <td style="width: 100px; height: 183px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma"></span>
            </td>
            <td style="width: 100px; height: 183px" valign="top">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 91px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


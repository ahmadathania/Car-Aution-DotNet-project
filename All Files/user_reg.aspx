<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_reg.aspx.cs" Inherits="user_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;">
        <table>
            <tr>
                <td colspan="3" style="text-align: center; height: 97px;">
                    <strong><span style="font-size: 16pt; color: #990000; text-decoration: underline">
                        <img src="Icons/automart.jpg" /><br />
                        USER&nbsp;
                        REGISTRATION</span></strong></td>
            </tr>
            <tr>
                <td style="width: 119px; height: 21px; text-align: right;">
                    Name</td>
                <td style="width: 114px; height: 21px; text-align: left">
                    <asp:TextBox ID="TextBox1" runat="server" Width="156px"></asp:TextBox></td>
                <td style="width: 379px; height: 21px; text-align: left;">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Width="192px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 119px; text-align: right;">
                    User Name</td>
                <td style="width: 114px; text-align: left">
                    <asp:TextBox ID="TextBox2" runat="server" Width="155px"></asp:TextBox></td>
                <td style="width: 379px; text-align: left;">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 119px; height: 26px; text-align: right;">
                    Password</td>
                <td style="width: 114px; text-align: left; height: 26px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="155px" TextMode="Password"></asp:TextBox></td>
                <td style="width: 379px; height: 26px;">
                </td>
            </tr>
            <tr>
                <td style="width: 119px; height: 40px; text-align: right;">
                    Confirm Password</td>
                <td style="width: 114px; text-align: left; height: 40px;">
                    <asp:TextBox ID="TextBox4" runat="server" Width="155px" TextMode="Password"></asp:TextBox></td>
                <td style="width: 379px; height: 40px; text-align: left;">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3"
                        ControlToValidate="TextBox4" ErrorMessage="Password Mismatch" Width="151px"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td style="width: 119px; text-align: right;">
                    Gender</td>
                <td style="width: 114px; text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="91px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 379px">
                </td>
            </tr>
            <tr>
                <td style="width: 119px; text-align: right;" valign="top">
                    Date of Birth</td>
                <td style="width: 114px; text-align: left" valign="top">
                    <asp:TextBox ID="TextBox9" runat="server" Width="155px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="..." Width="39px" /></td>
                <td style="width: 379px; text-align: left;">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                        ForeColor="#663399" Height="34px" OnSelectionChanged="Calendar1_SelectionChanged"
                        ShowGridLines="True" Visible="False" Width="94px">
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="width: 119px; height: 40px; text-align: right;">
                    Address</td>
                <td style="width: 114px; text-align: left; height: 40px;">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="57px" Width="155px"></asp:TextBox></td>
                <td style="width: 379px; height: 40px;">
                </td>
            </tr>
            <tr>
                <td style="width: 119px; text-align: right;">
                    Cotact No.</td>
                <td style="width: 114px; text-align: left">
                    <asp:TextBox ID="TextBox6" runat="server" Width="155px"></asp:TextBox></td>
                <td style="width: 379px">
                </td>
            </tr>
            <tr>
                <td style="width: 119px; height: 26px; text-align: right;">
                    E-mail id</td>
                <td style="width: 114px; height: 26px; text-align: left">
                    <asp:TextBox ID="TextBox8" runat="server" Width="155px"></asp:TextBox></td>
                <td style="width: 379px; height: 26px">
                </td>
            </tr>
            <tr>
                <td style="width: 119px; text-align: right">
                    <asp:Button ID="bttn_submit" runat="server" OnClick="bttn_submit_Click" Text="Submit" Width="73px" /></td>
                <td style="width: 114px; text-align: left">
                    &nbsp;<asp:Button ID="btt_reset" runat="server" Text="Reset" Width="73px" /></td>
                <td style="width: 379px">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Add2Auction.aspx.cs" Inherits="Add2Auction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td rowspan="6" style="width: 101px">
                <asp:Image ID="Image1" runat="server" Height="267px" Width="358px" /></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label6" runat="server" Font-Names="Tahoma" Font-Size="20pt" ForeColor="Gray"></asp:Label></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label5" runat="server" ForeColor="#C00000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Product Id</span></td>
            <td style="width: 100px; height: 21px" valign="top">
                <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Brand</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label2" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Model</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label3" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Features</span></td>
            <td style="width: 100px" valign="top">
                <asp:Label ID="Label4" runat="server" Font-Names="Tahoma" Font-Size="10pt" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Initial Bidrate</span></td>
            <td style="font-size: 12pt; width: 100px; font-family: Times New Roman" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Width="111px"></asp:TextBox>
                &nbsp;
            </td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td rowspan="1" style="width: 101px; height: 170px" valign="top">
                <span style="font-size: 11pt; color: #cc0033; font-family: Tahoma"><strong>Extra Features
                    in the Vehicle</strong></span><asp:TextBox ID="TextBox1" runat="server" Height="110px"
                        TextMode="MultiLine" Width="352px"></asp:TextBox></td>
            <td style="width: 100px; height: 170px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">Last Date</span></td>
            <td style="width: 100px; height: 170px" valign="top">
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Enabled="False" Width="114px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="..." Width="33px" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black"
                    DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black"
                    Height="1px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged"
                    TitleFormat="Month" Visible="False" Width="196px">
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt"
                        ForeColor="#333333" Width="1%" />
                    <TodayDayStyle BackColor="#CCCC99" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333"
                        Height="10pt" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"
                        Height="14pt" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 101px; height: 183px" valign="top">
            </td>
            <td style="width: 100px; height: 183px" valign="top">
                <span style="font-size: 10pt; font-family: Tahoma">New Image</span></td>
            <td style="width: 100px; height: 183px" valign="top">
                <asp:FileUpload ID="filename" runat="server" /><br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="Smaller"
                    ForeColor="Red" Height="27px" OnClick="Button1_Click" Text="Save" Width="65px" /></td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 101px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>


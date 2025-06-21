<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="DelAc.aspx.cs" Inherits="DelAc" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 299px; height: 26px">
                Are you sure to Delete Your Account</td>
            <td style="width: 49px; height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agree" Width="63px" /></td>
            <td style="width: 100px; height: 26px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" /></td>
        </tr>
        <tr>
            <td style="width: 299px; height: 21px">
            </td>
            <td style="width: 49px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 21px">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Icons/Del.jpg" Visible="False" /></td>
        </tr>
    </table>
</asp:Content>


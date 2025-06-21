<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Chngpwd.aspx.cs" Inherits="Chngpwd" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 160px; height: 26px">
                Current Password</td>
            <td style="width: 200px; height: 26px">
                <asp:TextBox ID="txt_current_password" runat="server" OnTextChanged="txt_current_password_TextChanged"
                    TextMode="Password"></asp:TextBox></td>
            <td style="width: 200px; height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" />
                <asp:Label ID="lbl_invalid" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 160px; height: 26px">
                <asp:Label ID="Label1" runat="server" EnableViewState="False" Text="New Password"></asp:Label></td>
            <td style="width: 200px; height: 26px">
                <asp:TextBox ID="txt_new_password" runat="server" EnableViewState="False" OnTextChanged="txt_new_password_TextChanged"
                    TextMode="Password" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="Label2" runat="server" EnableViewState="False" Text="Confirm Password"></asp:Label></td>
            <td style="width: 200px">
                <asp:TextBox ID="txt_confirm_password" runat="server" EnableViewState="False" OnTextChanged="txt_confirm_password_TextChanged"
                    TextMode="Password" Visible="False"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_new_password"
                    ControlToValidate="txt_confirm_password" ErrorMessage="Password Mismatch"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Button ID="update_button" runat="server" OnClick="update_button_Click" Text="Update" /></td>
            <td style="width: 200px">
                <asp:Button ID="cancel_button" runat="server" OnClick="cancel_button_Click" Text="Cancel" /></td>
            <td style="width: 200px">
                <asp:Label ID="lbl_not_equal" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 7px">
                <asp:Label ID="lbl_success" runat="server" ForeColor="#C00000"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_current_password"
                    ErrorMessage="Please Enter your Password"></asp:RequiredFieldValidator></td>
        </tr>
    </table>
</asp:Content>


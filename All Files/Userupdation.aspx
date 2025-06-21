<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Userupdation.aspx.cs" Inherits="Userupdation" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 318px">
        <tr>
            <td colspan="3" rowspan="2" style="height: 38px">
                <span style="font-size: 24pt; color: #cc3366">Update Profile</span></td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td style="width: 154px">
                Name</td>
            <td style="width: 100px">
                <asp:TextBox ID="name_txt" runat="server" ReadOnly="True" Width="179px"></asp:TextBox></td>
            <td style="width: 1166px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                UserName</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="usrame_txt" runat="server" ReadOnly="True" Width="178px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                Old Password</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="pass_txt" runat="server" ReadOnly="True" Width="177px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="font-style: italic"
                    Width="121px">Change Password</asp:LinkButton></td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                <asp:Label ID="Label1" runat="server" Text="New Password" Visible="False" Width="111px"></asp:Label></td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="newpass_txt" runat="server" Visible="False" Width="176px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                Gender</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="gndr_txt" runat="server" ReadOnly="True" Width="176px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                Date Of Birth</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="dob_txt" runat="server" ReadOnly="True" Width="179px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                Address</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="add_txt" runat="server" Height="66px" TextMode="MultiLine" Width="176px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                Contact No.</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="fon_txt" runat="server" Width="177px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
                E-mail</td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="email_txt" runat="server" Width="176px"></asp:TextBox></td>
            <td style="width: 1166px; height: 21px">
                <asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 154px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
            </td>
            <td style="width: 1166px; height: 21px; text-align: right">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Finished" /></td>
        </tr>
    </table>
</asp:Content>


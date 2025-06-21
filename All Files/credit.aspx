<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="credit.aspx.cs" Inherits="credit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="font-family: Arial; font-size: 14px;">
            <tr>
                <td><b>User Name:</b></td>
                <td><asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" /></td>
                <td rowspan="7" style="padding-left: 20px;">
                    <asp:Image ID="Image1" runat="server" Width="250" Height="200" />
                </td>
            </tr>
            <tr>
                <td><b>Full Name:</b></td>
                <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" /></td>
            </tr>
            <tr>
                <td><b>Credit No.:</b></td>
                <td><asp:TextBox ID="TextBox3" runat="server" AutoPostBack="true" OnTextChanged="TextBox3_TextChanged" /></td>
            </tr>
            <tr>
                <td><b>Product:</b></td>
                <td><asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" /></td>
            </tr>
            <tr>
                <td><b>Price:</b></td>
                <td><asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" /></td>
            </tr>
            <tr>
                <td><b>Description:</b></td>
                <td><asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" TextMode="MultiLine" Rows="3" Columns="30" /></td>
            </tr>
            <tr>
                <td><b>Date:</b></td>
                <td><asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" /></td>
            </tr>
            <tr>
                <td colspan="3" style="padding-top: 10px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click" Enabled="false">BUY</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Back</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Green" />
    </div>
</asp:Content>

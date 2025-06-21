<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UploadMobiles.aspx.cs" Inherits="UploadMobiles" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
    // <!CDATA[

    function TABLE1_onclick() {

    }

    // ]]>
</script>

    &nbsp;
    <table id="TABLE1" style="border-right: #ff3399 thin solid; border-top: #ff3399 thin solid; border-left: #ff3399 thin solid; border-bottom: #ff3399 thin solid" frame="hsides" onclick="return TABLE1_onclick()">
        <tr>
            <td style="height: 32px; text-align: left;" colspan="2">
                <span style="font-size: 25px; color: red; font-family: Tahoma;">Upload the Automobile
                    Details to Your Database</span></td>
            <td style="width: 172px; height: 32px">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 898px; height: 24px;">
                Select Category</td>
            <td style="width: 104px; height: 24px;">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="152px" AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Used Cars</asp:ListItem>
                    <asp:ListItem>Accessories</asp:ListItem>
                    <asp:ListItem>New Car</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 172px; height: 24px;">
                </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 24px">
                Company</td>
            <td style="width: 104px; height: 24px">
                <asp:DropDownList ID="ddlBrandNames" runat="server" OnSelectedIndexChanged="brnd_list_SelectedIndexChanged"
                    Width="153px">
                </asp:DropDownList></td>
            <td style="width: 172px; height: 24px; text-align: right;">
                <asp:Label ID="Label2" runat="server" Text="New Brand" EnableViewState="False" Visible="False"></asp:Label></td>
            <td style="width: 100px; height: 24px">
                <asp:TextBox ID="newbrnd_txt" runat="server" Width="108px" Visible="False"></asp:TextBox></td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 24px">
            </td>
            <td style="width: 104px; height: 24px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="103px">Enter new brand</asp:LinkButton></td>
            <td style="width: 172px; height: 24px">
                &nbsp;</td>
            <td style="width: 100px; height: 24px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Add Brand" Width="106px" Visible="False" /></td>
        </tr>
        <tr>
            <td style="width: 898px; height: 9px">
                Model</td>
            <td style="width: 104px; height: 9px">
                <asp:TextBox ID="newmodl_txt" runat="server" Width="149px"></asp:TextBox></td>
            <td style="width: 172px; height: 9px; text-align: right;">
                </td>
            <td style="width: 100px; height: 9px">
                </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 24px">
            </td>
            <td style="width: 104px; height: 24px">
                </td>
            <td style="width: 172px; height: 24px">
                </td>
            <td style="width: 100px; height: 24px">
                </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 33px">
                Image</td>
            <td style="width: 104px; height: 33px">
                <asp:FileUpload ID="filename" runat="server" /></td>
            <td style="width: 172px; height: 33px">
                <asp:Image ID="Image1" runat="server" Height="116px" Width="124px" Visible="False" /></td>
        </tr>
        <tr>
            <td style="width: 898px; height: 26px">
                Price</td>
            <td style="width: 104px; height: 26px">
                <asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox></td>
            <td style="width: 172px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 26px">
                Features</td>
            <td style="width: 104px; height: 26px">
                <asp:TextBox ID="TextBox3" runat="server" Height="55px" TextMode="MultiLine" Width="147px"></asp:TextBox></td>
            <td style="width: 172px; height: 26px">
                </td>
        </tr>
        <tr>
            <td style="width: 898px; height: 26px">
            </td>
            <td style="width: 104px; height: 26px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="81px" /></td>
            <td style="width: 172px; height: 26px">
                <asp:LinkButton ID="addnewbttn" runat="server" OnClick="addnewbttn_Click" Visible="False"
                    Width="122px">Add New Product</asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>


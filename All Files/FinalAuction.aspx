<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="FinalAuction.aspx.cs" Inherits="FinalAuction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AllowSorting="True"
        Font-Names="Tahoma" Font-Size="10pt" OnItemCommand="DataGrid1_ItemCommand" Width="409px">
        <PagerStyle Mode="NumericPages" />
        <AlternatingItemStyle BackColor="ActiveCaption" />
        <ItemStyle BackColor="White" />
        <Columns>
            <asp:ButtonColumn CommandName="Select" Text="Send Confirmation"></asp:ButtonColumn>
        </Columns>
        <HeaderStyle ForeColor="#C00000" />
    </asp:DataGrid>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewCus.aspx.cs" Inherits="ViewCus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="USerid" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None"
        Width="428px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="USerid" HeaderText="USerid" ReadOnly="True" SortExpression="USerid" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
           
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
            <asp:BoundField DataField="Emailid" HeaderText="Emailid" SortExpression="Emailid" />
        </Columns>
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        DeleteCommand="DELETE FROM [User_reg] WHERE [USerid] = @USerid" InsertCommand="INSERT INTO [User_reg] ([USerid], [Name], [Username], [Password], [Gender], [Address], [contactno], [Emailid]) VALUES (@USerid, @Name, @Username, @Password, @Gender, @Address, @contactno, @Emailid)"
        ProviderName="<%$ ConnectionStrings:con.ProviderName %>"
        SelectCommand="SELECT [USerid], [Name], [Username], [Password], [Gender],[Address], [contactno], [Emailid] FROM [User_reg]"
        UpdateCommand="UPDATE [User_reg] SET [Name] = @Name, [Username] = @Username, [Password] = @Password, [Gender] = @Gender, [Address] = @Address, [contactno] = @contactno, [Emailid] = @Emailid WHERE [USerid] = @USerid">
        <InsertParameters>
            <asp:Parameter Name="USerid" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
           
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="contactno" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
       
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="contactno" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="USerid" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="USerid" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>


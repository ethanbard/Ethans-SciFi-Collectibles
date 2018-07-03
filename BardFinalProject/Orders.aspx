<%@ Page Title="" Language="C#" MasterPageFile="~/Scifi.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="BardFinalProject.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="OrderID" DataSourceID="AccessDataSource1" 
        GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                SortExpression="CustomerID" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" />
            <asp:BoundField DataField="TotalCost" HeaderText="TotalCost" 
                SortExpression="TotalCost" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/ScifiCollectiblesDB.accdb" SelectCommand="SELECT * FROM [Orders]">
    </asp:AccessDataSource>
</asp:Content>

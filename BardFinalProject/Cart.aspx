<%@ Page Title="" Language="C#" MasterPageFile="~/Scifi.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BardFinalProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListBox ID="lstCart" runat="server" Height="137px" Width="314px">
    </asp:ListBox>
    <p>
        <asp:Button ID="btnRemove" runat="server" onclick="btnRemove_Click" 
            Text="Remove Selected" />
        <asp:Button ID="txtReturn" runat="server" onclick="txtReturn_Click" 
            Text="Return to Products" Width="159px" />
    </p>
<p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" DataFile="~/ScifiCollectiblesDB.accdb" 
            DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = ? AND (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL)) AND (([OrderDate] = ?) OR ([OrderDate] IS NULL AND ? IS NULL)) AND (([TotalCost] = ?) OR ([TotalCost] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Orders] ([CustomerID], [OrderDate], [TotalCost]) VALUES (?, ?, ?)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [Orders]" 
            UpdateCommand="UPDATE [Orders] SET [CustomerID] = ?, [OrderDate] = ?, [TotalCost] = ? WHERE [OrderID] = ? AND (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL)) AND (([OrderDate] = ?) OR ([OrderDate] IS NULL AND ? IS NULL)) AND (([TotalCost] = ?) OR ([TotalCost] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_OrderID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                <asp:Parameter Name="original_TotalCost" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="TotalCost" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="OrderDate" Type="DateTime" />
                <asp:Parameter Name="TotalCost" Type="Decimal" />
                <asp:Parameter Name="original_OrderID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                <asp:Parameter Name="original_TotalCost" Type="Decimal" />
                <asp:Parameter Name="original_TotalCost" Type="Decimal" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" 
            onclick="btnCheckout_Click" />
    </p>
</asp:Content>

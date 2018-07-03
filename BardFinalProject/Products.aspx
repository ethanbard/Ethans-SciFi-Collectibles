<%@ Page Title="" Language="C#" MasterPageFile="~/Scifi.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BardFinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 351px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" 
        GridLines="None" DataKeyNames="ProductID" EnableViewState="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
            </td>
            <td>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="ProductID" DataSourceID="AccessDataSource2" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="238px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="ProductID" InsertVisible="False" 
                SortExpression="ProductID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblID" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="Red" 
                        ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameValidator2" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="Red" 
                        ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                <EditItemTemplate>
                    <asp:TextBox ID="txtCategory" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CategoryValidator" runat="server" 
                        ControlToValidate="txtCategory" ErrorMessage="Category is Required" 
                        ForeColor="Red" ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtCategory" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="CategoryValidator2" runat="server" 
                        ControlToValidate="txtCategory" ErrorMessage="Category is Required" 
                        ForeColor="Red" ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblCategory" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PriceValidator" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Price is Required" ForeColor="Red" 
                        ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PriceValidator2" runat="server" 
                        ControlToValidate="txtPrice" ErrorMessage="Price is Required" ForeColor="Red" 
                        ValidationGroup="ProductValidation">*</asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" ValidationGroup="ProductValidation" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" ValidationGroup="ProductValidation" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                    &nbsp;<asp:Button ID="Button3" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
    </asp:DetailsView>
                <asp:Button ID="btnAddToCart" runat="server" onclick="btnAddToCart_Click" 
                    Text="Add to Cart" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                    ValidationGroup="ProductValidation" />
            </td>
        </tr>
    </table>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/ScifiCollectiblesDB.accdb" 
        
        SelectCommand="SELECT [ProductID], [ProductName] FROM [Products]">
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/ScifiCollectiblesDB.accdb" 
        SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = ?)" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = ? AND (([ProductName] = ?) OR ([ProductName] IS NULL AND ? IS NULL)) AND (([Category] = ?) OR ([Category] IS NULL AND ? IS NULL)) AND (([Price] = ?) OR ([Price] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [Products] ([ProductName], [Category], [Price]) VALUES (?, ?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        
        UpdateCommand="UPDATE [Products] SET [ProductName] = ?, [Category] = ?, [Price] = ? WHERE [ProductID] = ? AND (([ProductName] = ?) OR ([ProductName] IS NULL AND ? IS NULL)) AND (([Category] = ?) OR ([Category] IS NULL AND ? IS NULL)) AND (([Price] = ?) OR ([Price] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

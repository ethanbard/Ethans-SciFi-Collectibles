<%@ Page Title="" Language="C#" MasterPageFile="~/Scifi.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="BardFinalProject.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 392px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="CustomerID" DataSourceID="CustomerDataSource" 
                    ForeColor="#333333" GridLines="None" EnableViewState="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:AccessDataSource ID="CustomerDataSource" runat="server" 
                    DataFile="~/ScifiCollectiblesDB.accdb" 
                    SelectCommand="SELECT * FROM [Customers]"></asp:AccessDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="CustomerID" 
                    DataSourceID="CustomerDetailDataSource" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="157px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:TemplateField HeaderText="Name" SortExpression="Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
                                    ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NameValidator2" runat="server" 
                                    ControlToValidate="txtName" ErrorMessage="Name is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AddressValidator" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="Address is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AddressValidator2" runat="server" 
                                    ControlToValidate="txtAddress" ErrorMessage="Address is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="City" SortExpression="City">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CityValidator" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="City is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CityValidator2" runat="server" 
                                    ControlToValidate="txtCity" ErrorMessage="City is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="State" SortExpression="State">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="StateValidator" runat="server" 
                                    ControlToValidate="txtState" ErrorMessage="State is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtState" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="StateValidator2" runat="server" 
                                    ControlToValidate="txtState" ErrorMessage="State is Required" ForeColor="Red" 
                                    ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Zip Code" SortExpression="ZipCode">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ZipCodeValidator" runat="server" 
                                    ControlToValidate="txtZipCode" ErrorMessage="Zip Code is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ZipCodeValidator2" runat="server" 
                                    ControlToValidate="txtZipCode" ErrorMessage="Zip Code is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone Number" SortExpression="PhoneNumber">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PhoneValidator" runat="server" 
                                    ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPhone" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PhoneValidator2" runat="server" 
                                    ControlToValidate="txtPhone" ErrorMessage="Phone Number is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailValidator" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="Email Address is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailValidator2" runat="server" 
                                    ControlToValidate="txtEmail" ErrorMessage="Email Address is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="User Name" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtUsername" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" 
                                    ControlToValidate="txtUsername" ErrorMessage="Username is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtUsername" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UsernameValidator2" runat="server" 
                                    ControlToValidate="txtUsername" ErrorMessage="Username is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" SortExpression="Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="Password is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="txtPassword" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordValidator2" runat="server" 
                                    ControlToValidate="txtPassword" ErrorMessage="Password is Required" 
                                    ForeColor="Red" ValidationGroup="CustomerValidation">*</asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" ValidationGroup="CustomerValidation" />
                                &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" ValidationGroup="CustomerValidation" />
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
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                    ValidationGroup="CustomerValidation" />
                <asp:AccessDataSource ID="CustomerDetailDataSource" runat="server" 
                    DataFile="~/ScifiCollectiblesDB.accdb" 
                    SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = ?)" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ? AND (([Name] = ?) OR ([Name] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([City] = ?) OR ([City] IS NULL AND ? IS NULL)) AND (([State] = ?) OR ([State] IS NULL AND ? IS NULL)) AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND (([PhoneNumber] = ?) OR ([PhoneNumber] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([UserName] = ?) OR ([UserName] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL))" 
                    InsertCommand="INSERT INTO [Customers] ([CustomerID], [Name], [Address], [City], [State], [ZipCode], [PhoneNumber], [Email], [UserName], [Password]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    
                    UpdateCommand="UPDATE [Customers] SET [Name] = ?, [Address] = ?, [City] = ?, [State] = ?, [ZipCode] = ?, [PhoneNumber] = ?, [Email] = ?, [UserName] = ?, [Password] = ? WHERE [CustomerID] = ? AND (([Name] = ?) OR ([Name] IS NULL AND ? IS NULL)) AND (([Address] = ?) OR ([Address] IS NULL AND ? IS NULL)) AND (([City] = ?) OR ([City] IS NULL AND ? IS NULL)) AND (([State] = ?) OR ([State] IS NULL AND ? IS NULL)) AND (([ZipCode] = ?) OR ([ZipCode] IS NULL AND ? IS NULL)) AND (([PhoneNumber] = ?) OR ([PhoneNumber] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([UserName] = ?) OR ([UserName] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="CustomerID" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Name" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_Address" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_ZipCode" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_PhoneNumber" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                        <asp:Parameter Name="original_Password" Type="String" />
                    </UpdateParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

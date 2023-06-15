<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InspectorPage.aspx.cs" Inherits="CloudDevWebSite.InspectorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="inspectorpagePic.css">
    <p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="inspector_No" DataSourceID="InspectorDataSource">
            <Columns>
                <asp:BoundField DataField="inspector_No" HeaderText="inspector_No" ReadOnly="True" SortExpression="inspector_No" />
                <asp:BoundField DataField="inspectorName" HeaderText="inspectorName" SortExpression="inspectorName" />
                <asp:BoundField DataField="inspectorEmail" HeaderText="inspectorEmail" SortExpression="inspectorEmail" />
                <asp:BoundField DataField="inspectorMobile" HeaderText="inspectorMobile" SortExpression="inspectorMobile" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="InspectorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Inspector]"></asp:SqlDataSource>

    </p>
    <div>
    </div>
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="inspector_No" DataSourceID="inspectorForm">
            <EditItemTemplate>
                inspector_No:
    <asp:Label ID="inspector_NoLabel1" runat="server" Text='<%# Eval("inspector_No") %>' />
                <br />
                inspectorName:
    <asp:TextBox ID="inspectorNameTextBox" runat="server" Text='<%# Bind("inspectorName") %>' />
                <asp:RequiredFieldValidator ID="inspectorNameValidator" runat="server" ControlToValidate="inspectorNameTextBox" ErrorMessage="Please enter inspectorName" />
                <br />
                inspectorEmail:
    <asp:TextBox ID="inspectorEmailTextBox" runat="server" Text='<%# Bind("inspectorEmail") %>' />
                <asp:RequiredFieldValidator ID="inspectorEmailValidator" runat="server" ControlToValidate="inspectorEmailTextBox" ErrorMessage="Please enter inspectorEmail" />
                <asp:RegularExpressionValidator ID="inspectorEmailFormatValidator" runat="server" ControlToValidate="inspectorEmailTextBox" ErrorMessage="Invalid email format" ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" />
                <br />
                inspectorMobile:
    <asp:TextBox ID="inspectorMobileTextBox" runat="server" Text='<%# Bind("inspectorMobile") %>' />
                <asp:RequiredFieldValidator ID="inspectorMobileValidator" runat="server" ControlToValidate="inspectorMobileTextBox" ErrorMessage="Please enter inspectorMobile" />
                <asp:RegularExpressionValidator ID="inspectorMobileFormatValidator" runat="server" ControlToValidate="inspectorMobileTextBox" ErrorMessage="Invalid mobile format" ValidationExpression="^\d{10}$" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                inspector_No:
    <asp:TextBox ID="inspector_NoTextBox" runat="server" Text='<%# Bind("inspector_No") %>' />
                <br />
                inspectorName:
    <asp:TextBox ID="inspectorNameTextBox" runat="server" Text='<%# Bind("inspectorName") %>' />
                <asp:RequiredFieldValidator ID="inspectorNameValidator" runat="server" ControlToValidate="inspectorNameTextBox" ErrorMessage="Please enter inspectorName" />
                <br />
                inspectorEmail:
    <asp:TextBox ID="inspectorEmailTextBox" runat="server" Text='<%# Bind("inspectorEmail") %>' />
                <asp:RequiredFieldValidator ID="inspectorEmailValidator" runat="server" ControlToValidate="inspectorEmailTextBox" ErrorMessage="Please enter inspectorEmail" />
                <asp:RegularExpressionValidator ID="inspectorEmailFormatValidator" runat="server" ControlToValidate="inspectorEmailTextBox" ErrorMessage="Invalid email format" ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" />
                <br />
                inspectorMobile:
    <asp:TextBox ID="inspectorMobileTextBox" runat="server" Text='<%# Bind("inspectorMobile") %>' />
                <asp:RequiredFieldValidator ID="inspectorMobileValidator" runat="server" ControlToValidate="inspectorMobileTextBox" ErrorMessage="Please enter inspectorMobile" />
                <asp:RegularExpressionValidator ID="inspectorMobileFormatValidator" runat="server" ControlToValidate="inspectorMobileTextBox" ErrorMessage="Invalid mobile format" ValidationExpression="^\d{10}$" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                inspector_No:
                <asp:Label ID="inspector_NoLabel" runat="server" Text='<%# Eval("inspector_No") %>' />
                <br />
                inspectorName:
                <asp:Label ID="inspectorNameLabel" runat="server" Text='<%# Bind("inspectorName") %>' />
                <br />
                inspectorEmail:
                <asp:Label ID="inspectorEmailLabel" runat="server" Text='<%# Bind("inspectorEmail") %>' />
                <br />
                inspectorMobile:
                <asp:Label ID="inspectorMobileLabel" runat="server" Text='<%# Bind("inspectorMobile") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="inspectorForm" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Inspector] WHERE (inspector_No = @Inspector_No)" InsertCommand="INSERT INTO [Inspector] ([inspector_No], [inspectorName], [inspectorEmail], [inspectorMobile]) VALUES (@inspector_No, @inspectorName, @inspectorEmail, @inspectorMobile)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Inspector] SET [inspectorName] = @inspectorName, [inspectorEmail] = @inspectorEmail, [inspectorMobile] = @inspectorMobile WHERE [inspector_No] = @original_inspector_No AND (([inspectorName] = @original_inspectorName) OR ([inspectorName] IS NULL AND @original_inspectorName IS NULL)) AND (([inspectorEmail] = @original_inspectorEmail) OR ([inspectorEmail] IS NULL AND @original_inspectorEmail IS NULL)) AND (([inspectorMobile] = @original_inspectorMobile) OR ([inspectorMobile] IS NULL AND @original_inspectorMobile IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="inspector_No" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="inspector_No" Type="String" />
                <asp:Parameter Name="inspectorName" Type="String" />
                <asp:Parameter Name="inspectorEmail" Type="String" />
                <asp:Parameter Name="inspectorMobile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="inspectorName" Type="String" />
                <asp:Parameter Name="inspectorEmail" Type="String" />
                <asp:Parameter Name="inspectorMobile" Type="String" />
                <asp:Parameter Name="original_inspector_No" Type="String" />
                <asp:Parameter Name="original_inspectorName" Type="String" />
                <asp:Parameter Name="original_inspectorEmail" Type="String" />
                <asp:Parameter Name="original_inspectorMobile" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Inspector Number:"></asp:Label>
                </td>
                <td>

                    <asp:TextBox ID="deleteTxt" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:Label ID="errorDelete" runat="server" Text="" Width="200"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete Inspector Record" Width="175px" OnClick="deleteBtn_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DriverPage.aspx.cs" Inherits="CloudDevWebSite.DriverPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="driverpagePic.css">
    <p>

        <asp:GridView ID="Table" runat="server" AutoGenerateColumns="False" DataKeyNames="driverID" DataSourceID="driverDataSource" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="driverID" HeaderText="driverID" InsertVisible="False" ReadOnly="True" SortExpression="driverID" />
                <asp:BoundField DataField="driverName" HeaderText="driverName" SortExpression="driverName" />
                <asp:BoundField DataField="driverAddress" HeaderText="driverAddress" SortExpression="driverAddress" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="driverDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Driver]"></asp:SqlDataSource>

    </p>
    <p>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="driverID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                driverID:
                <asp:Label ID="driverIDLabel1" runat="server" Text='<%# Eval("driverID") %>' />
                <br />
                driverName:
                <asp:TextBox ID="driverNameTextBox" runat="server" Text='<%# Bind("driverName") %>' />
                <br />
                driverAddress:
                <asp:TextBox ID="driverAddressTextBox" runat="server" Text='<%# Bind("driverAddress") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                mobile:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                driverName:
                <asp:TextBox ID="driverNameTextBox" runat="server" Text='<%# Bind("driverName") %>' />
                <br />
                driverAddress:
                <asp:TextBox ID="driverAddressTextBox" runat="server" Text='<%# Bind("driverAddress") %>' />
                <br />
                email:
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                <br />
                mobile:
                <asp:TextBox ID="mobileTextBox" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                driverID:
                <asp:Label ID="driverIDLabel" runat="server" Text='<%# Eval("driverID") %>' />
                <br />
                driverName:
                <asp:Label ID="driverNameLabel" runat="server" Text='<%# Bind("driverName") %>' />
                <br />
                driverAddress:
                <asp:Label ID="driverAddressLabel" runat="server" Text='<%# Bind("driverAddress") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                <br />
                mobile:
                <asp:Label ID="mobileLabel" runat="server" Text='<%# Bind("mobile") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT driverID, driverName, driverAddress, email, mobile FROM Driver WHERE (driverID = @driverID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="driverID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

    </p>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentalPage.aspx.cs" Inherits="CloudDevWebSite.rentalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="rentalpagePic.css">
    <div>



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rentalID" DataSourceID="rentalForm">
            <Columns>
                <asp:BoundField DataField="rentalID" HeaderText="rentalID" InsertVisible="False" ReadOnly="True" SortExpression="rentalID" />
                <asp:BoundField DataField="driverID" HeaderText="driverID" SortExpression="driverID" />
                <asp:BoundField DataField="inspector_No" HeaderText="inspector_No" SortExpression="inspector_No" />
                <asp:BoundField DataField="carNo" HeaderText="carNo" SortExpression="carNo" />
                <asp:BoundField DataField="starting_Date" HeaderText="starting_Date" SortExpression="starting_Date" />
                <asp:BoundField DataField="end_Date" HeaderText="end_Date" SortExpression="end_Date" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="rentalForm" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Rental]"></asp:SqlDataSource>



    </div>

    <div>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="rentalID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                rentalID:
    <asp:Label ID="rentalIDLabel1" runat="server" Text='<%# Eval("rentalID") %>' />
                <br />
                driverID:
    <asp:TextBox ID="driverIDTextBox" runat="server" Text='<%# Bind("driverID") %>' />
                <asp:RequiredFieldValidator ID="driverIDValidator" runat="server" ControlToValidate="driverIDTextBox" ErrorMessage="Please enter driverID" />
                <br />
                inspector_No:
    <asp:TextBox ID="inspector_NoTextBox" runat="server" Text='<%# Bind("inspector_No") %>' />
                <asp:RequiredFieldValidator ID="inspectorNoValidator" runat="server" ControlToValidate="inspector_NoTextBox" ErrorMessage="Please enter inspector_No" />
                <br />
                carNo:
    <asp:TextBox ID="carNoTextBox" runat="server" Text='<%# Bind("carNo") %>' />
                <asp:RequiredFieldValidator ID="carNoValidator" runat="server" ControlToValidate="carNoTextBox" ErrorMessage="Please enter carNo" />
                <br />
                starting_Date:
    <asp:TextBox ID="starting_DateTextBox" runat="server" Text='<%# Bind("starting_Date") %>' />
                <asp:RequiredFieldValidator ID="startingDateValidator" runat="server" ControlToValidate="starting_DateTextBox" ErrorMessage="Please enter starting_Date" />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="starting_DateTextBox" ErrorMessage="Starting date must be before the end date" Operator="LessThanEqual" Type="Date" ControlToCompare="end_DateTextBox" />
                <br />
                end_Date:
    <asp:TextBox ID="end_DateTextBox" runat="server" Text='<%# Bind("end_Date") %>' />
                <asp:RequiredFieldValidator ID="endDateValidator" runat="server" ControlToValidate="end_DateTextBox" ErrorMessage="Please enter end_Date" />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="end_DateTextBox" ErrorMessage="End date must be after the starting date" Operator="GreaterThanEqual" Type="Date" ControlToCompare="starting_DateTextBox" />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                driverID:
    <asp:TextBox ID="driverIDTextBox" runat="server" Text='<%# Bind("driverID") %>' />
                <asp:RequiredFieldValidator ID="driverIDValidator" runat="server" ControlToValidate="driverIDTextBox" ErrorMessage="Please enter driverID" />
                <br />
                inspector_No:
    <asp:TextBox ID="inspector_NoTextBox" runat="server" Text='<%# Bind("inspector_No") %>' />
                <asp:RequiredFieldValidator ID="inspectorNoValidator" runat="server" ControlToValidate="inspector_NoTextBox" ErrorMessage="Please enter inspector_No" />
                <br />
                carNo:
    <asp:TextBox ID="carNoTextBox" runat="server" Text='<%# Bind("carNo") %>' />
                <asp:RequiredFieldValidator ID="carNoValidator" runat="server" ControlToValidate="carNoTextBox" ErrorMessage="Please enter carNo" />
                <br />
                starting_Date:
    <asp:TextBox ID="starting_DateTextBox" runat="server" Text='<%# Bind("starting_Date") %>' />
                <asp:RequiredFieldValidator ID="startingDateValidator" runat="server" ControlToValidate="starting_DateTextBox" ErrorMessage="Please enter starting_Date" />
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="starting_DateTextBox" ErrorMessage="Starting date must be before the end date" Operator="LessThanEqual" Type="Date" ControlToCompare="end_DateTextBox" />
                <br />
                end_Date:
    <asp:TextBox ID="end_DateTextBox" runat="server" Text='<%# Bind("end_Date") %>' />
                <asp:RequiredFieldValidator ID="endDateValidator" runat="server" ControlToValidate="end_DateTextBox" ErrorMessage="Please enter end_Date" />
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="end_DateTextBox" ErrorMessage="End date must be after the starting date" Operator="GreaterThanEqual" Type="Date" ControlToCompare="starting_DateTextBox" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                rentalID:
                <asp:Label ID="rentalIDLabel" runat="server" Text='<%# Eval("rentalID") %>' />
                <br />
                driverID:
                <asp:Label ID="driverIDLabel" runat="server" Text='<%# Bind("driverID") %>' />
                <br />
                inspector_No:
                <asp:Label ID="inspector_NoLabel" runat="server" Text='<%# Bind("inspector_No") %>' />
                <br />
                carNo:
                <asp:Label ID="carNoLabel" runat="server" Text='<%# Bind("carNo") %>' />
                <br />
                starting_Date:
                <asp:Label ID="starting_DateLabel" runat="server" Text='<%# Bind("starting_Date") %>' />
                <br />
                end_Date:
                <asp:Label ID="end_DateLabel" runat="server" Text='<%# Bind("end_Date") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Rental] WHERE rentalID = @RentalID" InsertCommand="INSERT INTO [Rental] ([driverID], [inspector_No], [carNo], [starting_Date], [end_Date]) VALUES (@driverID, @inspector_No, @carNo, @starting_Date, @end_Date)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Rental] SET [driverID] = @driverID, [inspector_No] = @inspector_No, [carNo] = @carNo, [starting_Date] = @starting_Date, [end_Date] = @end_Date WHERE [rentalID] = @original_rentalID AND [driverID] = @original_driverID AND [inspector_No] = @original_inspector_No AND [carNo] = @original_carNo AND (([starting_Date] = @original_starting_Date) OR ([starting_Date] IS NULL AND @original_starting_Date IS NULL)) AND (([end_Date] = @original_end_Date) OR ([end_Date] IS NULL AND @original_end_Date IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="rentalID" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="driverID" Type="Int32" />
                <asp:Parameter Name="inspector_No" Type="String" />
                <asp:Parameter Name="carNo" Type="String" />
                <asp:Parameter DbType="Date" Name="starting_Date" />
                <asp:Parameter DbType="Date" Name="end_Date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="driverID" Type="Int32" />
                <asp:Parameter Name="inspector_No" Type="String" />
                <asp:Parameter Name="carNo" Type="String" />
                <asp:Parameter DbType="Date" Name="starting_Date" />
                <asp:Parameter DbType="Date" Name="end_Date" />
                <asp:Parameter Name="original_rentalID" Type="Int32" />
                <asp:Parameter Name="original_driverID" Type="Int32" />
                <asp:Parameter Name="original_inspector_No" Type="String" />
                <asp:Parameter Name="original_carNo" Type="String" />
                <asp:Parameter DbType="Date" Name="original_starting_Date" />
                <asp:Parameter DbType="Date" Name="original_end_Date" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

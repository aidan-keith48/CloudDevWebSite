<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="returnalPage.aspx.cs" Inherits="CloudDevWebSite.returnalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="returnalpagePic.css">
    <p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="returnID" DataSourceID="renturnalsDataSource">
            <Columns>
                <asp:BoundField DataField="returnID" HeaderText="returnID" InsertVisible="False" ReadOnly="True" SortExpression="returnID" />
                <asp:BoundField DataField="inspector_No" HeaderText="inspector_No" SortExpression="inspector_No" />
                <asp:BoundField DataField="rentalID" HeaderText="rentalID" SortExpression="rentalID" />
                <asp:BoundField DataField="return_Date" HeaderText="return_Date" SortExpression="return_Date" />
                <asp:BoundField DataField="elapsed_Date" HeaderText="elapsed_Date" SortExpression="elapsed_Date" />
                <asp:BoundField DataField="late_Fee" HeaderText="late_Fee" SortExpression="late_Fee" />
                <asp:CheckBoxField DataField="isAvailable" HeaderText="isAvailable" SortExpression="isAvailable" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="renturnalsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [rental_Return]"></asp:SqlDataSource>

    </p>

    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="returnID" DataSourceID="returnForm">
            <EditItemTemplate>
                returnID:
    <asp:Label ID="returnIDLabel1" runat="server" Text='<%# Eval("returnID") %>' />
                <br />
                inspector_No:
    <asp:TextBox ID="inspector_NoTextBox" runat="server" Text='<%# Bind("inspector_No") %>' />
                <asp:RequiredFieldValidator ID="inspector_NoValidator" runat="server" ControlToValidate="inspector_NoTextBox" ErrorMessage="Please enter inspector_No" />
                <br />
                rentalID:
    <asp:TextBox ID="rentalIDTextBox" runat="server" Text='<%# Bind("rentalID") %>' />
                <asp:RequiredFieldValidator ID="rentalIDValidator" runat="server" ControlToValidate="rentalIDTextBox" ErrorMessage="Please enter rentalID" />
                <br />
                return_Date:
    <asp:TextBox ID="return_DateTextBox" runat="server" Text='<%# Bind("return_Date") %>' />
                <asp:RequiredFieldValidator ID="return_DateValidator" runat="server" ControlToValidate="return_DateTextBox" ErrorMessage="Please enter return_Date" />
                <br />
                elapsed_Date:
    <asp:TextBox ID="elapsed_DateTextBox" runat="server" Text='<%# Bind("elapsed_Date") %>' />
                <asp:RequiredFieldValidator ID="elapsed_DateValidator" runat="server" ControlToValidate="elapsed_DateTextBox" ErrorMessage="Please enter elapsed_Date" />
                <br />
                late_Fee:
    <asp:TextBox ID="late_FeeTextBox" runat="server" Text='<%# Bind("late_Fee") %>' />
                <asp:RequiredFieldValidator ID="late_FeeValidator" runat="server" ControlToValidate="late_FeeTextBox" ErrorMessage="Please enter late_Fee" />
                <br />
                isAvailable:
    <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                inspector_No:
    <asp:TextBox ID="inspector_NoTextBox" runat="server" Text='<%# Bind("inspector_No") %>' />
                <asp:RequiredFieldValidator ID="inspector_NoValidator" runat="server" ControlToValidate="inspector_NoTextBox" ErrorMessage="Please enter inspector_No" />
                <br />
                rentalID:
    <asp:TextBox ID="rentalIDTextBox" runat="server" Text='<%# Bind("rentalID") %>' />
                <asp:RequiredFieldValidator ID="rentalIDValidator" runat="server" ControlToValidate="rentalIDTextBox" ErrorMessage="Please enter rentalID" />
                <br />
                return_Date:
    <asp:TextBox ID="return_DateTextBox" runat="server" Text='<%# Bind("return_Date") %>' />
                <asp:RequiredFieldValidator ID="return_DateValidator" runat="server" ControlToValidate="return_DateTextBox" ErrorMessage="Please enter return_Date" />
                <br />
                elapsed_Date:
    <asp:TextBox ID="elapsed_DateTextBox" runat="server" Text='<%# Bind("elapsed_Date") %>' />
                <asp:RequiredFieldValidator ID="elapsed_DateValidator" runat="server" ControlToValidate="elapsed_DateTextBox" ErrorMessage="Please enter elapsed_Date" />
                <br />
                late_Fee:
    <asp:TextBox ID="late_FeeTextBox" runat="server" Text='<%# Bind("late_Fee") %>' />
                <asp:RequiredFieldValidator ID="late_FeeValidator" runat="server" ControlToValidate="late_FeeTextBox" ErrorMessage="Please enter late_Fee" />
                <br />
                isAvailable:
    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("isAvailable") %>' />
                <br />
                isAvailable:
                <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                returnID:
                <asp:Label ID="returnIDLabel" runat="server" Text='<%# Eval("returnID") %>' />
                <br />
                inspector_No:
                <asp:Label ID="inspector_NoLabel" runat="server" Text='<%# Bind("inspector_No") %>' />
                <br />
                rentalID:
                <asp:Label ID="rentalIDLabel" runat="server" Text='<%# Bind("rentalID") %>' />
                <br />
                return_Date:
                <asp:Label ID="return_DateLabel" runat="server" Text='<%# Bind("return_Date") %>' />
                <br />
                elapsed_Date:
                <asp:Label ID="elapsed_DateLabel" runat="server" Text='<%# Bind("elapsed_Date") %>' />
                <br />
                late_Fee:
                <asp:Label ID="late_FeeLabel" runat="server" Text='<%# Bind("late_Fee") %>' />
                <br />
                isAvailable:
                <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' Enabled="true" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="returnForm" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" DeleteCommand="DELETE FROM [rental_Return] WHERE [returnID] = @original_returnID AND [inspector_No] = @original_inspector_No AND [rentalID] = @original_rentalID AND (([return_Date] = @original_return_Date) OR ([return_Date] IS NULL AND @original_return_Date IS NULL)) AND (([elapsed_Date] = @original_elapsed_Date) OR ([elapsed_Date] IS NULL AND @original_elapsed_Date IS NULL)) AND (([late_Fee] = @original_late_Fee) OR ([late_Fee] IS NULL AND @original_late_Fee IS NULL)) AND (([isAvailable] = @original_isAvailable) OR ([isAvailable] IS NULL AND @original_isAvailable IS NULL))" InsertCommand="INSERT INTO [rental_Return] ([inspector_No], [rentalID], [return_Date], [elapsed_Date], [late_Fee], [isAvailable]) VALUES (@inspector_No, @rentalID, @return_Date, @elapsed_Date, @late_Fee, @isAvailable)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [rental_Return] WHERE (returnID = @ReturnID)" UpdateCommand="UPDATE [rental_Return] SET [inspector_No] = @inspector_No, [rentalID] = @rentalID, [return_Date] = @return_Date, [elapsed_Date] = @elapsed_Date, [late_Fee] = @late_Fee, [isAvailable] = @isAvailable WHERE [returnID] = @original_returnID AND [inspector_No] = @original_inspector_No AND [rentalID] = @original_rentalID AND (([return_Date] = @original_return_Date) OR ([return_Date] IS NULL AND @original_return_Date IS NULL)) AND (([elapsed_Date] = @original_elapsed_Date) OR ([elapsed_Date] IS NULL AND @original_elapsed_Date IS NULL)) AND (([late_Fee] = @original_late_Fee) OR ([late_Fee] IS NULL AND @original_late_Fee IS NULL)) AND (([isAvailable] = @original_isAvailable) OR ([isAvailable] IS NULL AND @original_isAvailable IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="returnID" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="inspector_No" Type="String" />
                <asp:Parameter Name="rentalID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="return_Date" />
                <asp:Parameter Name="elapsed_Date" Type="Int32" />
                <asp:Parameter Name="late_Fee" Type="Int32" />
                <asp:Parameter Name="isAvailable" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="inspector_No" Type="String" />
                <asp:Parameter Name="rentalID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="return_Date" />
                <asp:Parameter Name="elapsed_Date" Type="Int32" />
                <asp:Parameter Name="late_Fee" Type="Int32" />
                <asp:Parameter Name="isAvailable" Type="Boolean" />
                <asp:Parameter Name="original_returnID" Type="Int32" />
                <asp:Parameter Name="original_inspector_No" Type="String" />
                <asp:Parameter Name="original_rentalID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_return_Date" />
                <asp:Parameter Name="original_elapsed_Date" Type="Int32" />
                <asp:Parameter Name="original_late_Fee" Type="Int32" />
                <asp:Parameter Name="original_isAvailable" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

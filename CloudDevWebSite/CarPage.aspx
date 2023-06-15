<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarPage.aspx.cs" Inherits="CloudDevWebSite.CarPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
    background-image: url("CarPage.jpg");
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
}
    </style>
    <link rel="stylesheet" type="text/css" href="carpagePic.css">

    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="carNo" DataSourceID="carDetails">
            <Columns>
                <asp:BoundField DataField="carNo" HeaderText="carNo" ReadOnly="True" SortExpression="carNo" />
                <asp:BoundField DataField="carModelID" HeaderText="carModelID" SortExpression="carModelID" />
                <asp:BoundField DataField="carYear" HeaderText="carYear" SortExpression="carYear" />
                <asp:BoundField DataField="carMakeID" HeaderText="carMakeID" SortExpression="carMakeID" />
                <asp:BoundField DataField="carBodyTypeID" HeaderText="carBodyTypeID" SortExpression="carBodyTypeID" />
                <asp:BoundField DataField="rentalFee" HeaderText="rentalFee" SortExpression="rentalFee" />
                <asp:CheckBoxField DataField="isAvailable" HeaderText="isAvailable" SortExpression="isAvailable" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="carDetails" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Car_Detail]"></asp:SqlDataSource>

    </div>
    <div>
    </div>

    <div>

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="carNo" DataSourceID="carDetailsForm" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
                carNo:
                <asp:Label ID="carNoLabel1" runat="server" Text='<%# Eval("carNo") %>' />

                carModelID:
        <asp:TextBox ID="carModelIDTextBox" runat="server" Text='<%# Bind("carModelID") %>' />
                <asp:RequiredFieldValidator ID="carModelIDValidator" runat="server" ControlToValidate="carModelIDTextBox" ErrorMessage="Please enter carModelID" />
                <br />
                carYear:
        <asp:TextBox ID="carYearTextBox" runat="server" Text='<%# Bind("carYear") %>' />
                <asp:RequiredFieldValidator ID="carYearValidator" runat="server" ControlToValidate="carYearTextBox" ErrorMessage="Please enter carYear" />
                <br />
                carMakeID:
        <asp:TextBox ID="carMakeIDTextBox" runat="server" Text='<%# Bind("carMakeID") %>' />
                <asp:RequiredFieldValidator ID="carMakeIDValidator" runat="server" ControlToValidate="carMakeIDTextBox" ErrorMessage="Please enter carMakeID" />
                <br />
                carBodyTypeID:
        <asp:TextBox ID="carBodyTypeIDTextBox" runat="server" Text='<%# Bind("carBodyTypeID") %>' />
                <asp:RequiredFieldValidator ID="carBodyTypeIDValidator" runat="server" ControlToValidate="carBodyTypeIDTextBox" ErrorMessage="Please enter carBodyTypeID" />
                <br />
                rentalFee:
        <asp:TextBox ID="rentalFeeTextBox" runat="server" Text='<%# Bind("rentalFee") %>' />
                <asp:RequiredFieldValidator ID="rentalFeeValidator" runat="server" ControlToValidate="rentalFeeTextBox" ErrorMessage="Please enter rentalFee" />
                <br />
                isAvailable:
        <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                carNo:
        <asp:TextBox ID="carNoTextBox" runat="server" Text='<%# Bind("carNo") %>' />
                <asp:RequiredFieldValidator ID="carNoValidator" runat="server" ControlToValidate="carNoTextBox" ErrorMessage="Please enter carNo" />
                <br />
                carModelID:
        <asp:TextBox ID="carModelIDTextBox" runat="server" Text='<%# Bind("carModelID") %>' />
                <asp:RequiredFieldValidator ID="carModelIDValidator" runat="server" ControlToValidate="carModelIDTextBox" ErrorMessage="Please enter carModelID" />
                <br />
                carYear:
        <asp:TextBox ID="carYearTextBox" runat="server" Text='<%# Bind("carYear") %>' />
                <asp:RequiredFieldValidator ID="carYearValidator" runat="server" ControlToValidate="carYearTextBox" ErrorMessage="Please enter carYear" />
                <br />
                carMakeID:
        <asp:TextBox ID="carMakeIDTextBox" runat="server" Text='<%# Bind("carMakeID") %>' />
                <asp:RequiredFieldValidator ID="carMakeIDValidator" runat="server" ControlToValidate="carMakeIDTextBox" ErrorMessage="Please enter carMakeID" />
                <br />
                carBodyTypeID:
        <asp:TextBox ID="carBodyTypeIDTextBox" runat="server" Text='<%# Bind("carBodyTypeID") %>' />
                <asp:RequiredFieldValidator ID="carBodyTypeIDValidator" runat="server" ControlToValidate="carBodyTypeIDTextBox" ErrorMessage="Please enter carBodyTypeID" />
                <br />
                rentalFee:
        <asp:TextBox ID="rentalFeeTextBox" runat="server" Text='<%# Bind("rentalFee") %>' />
                <asp:RequiredFieldValidator ID="rentalFeeValidator" runat="server" ControlToValidate="rentalFeeTextBox" ErrorMessage="Please enter rentalFee" />
                <br />
                isAvailable:
        <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' />

                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                carNo:
                <asp:Label ID="carNoLabel" runat="server" Text='<%# Eval("carNo") %>' />
                <br />
                carModelID:
                <asp:Label ID="carModelIDLabel" runat="server" Text='<%# Bind("carModelID") %>' />
                <br />
                carYear:
                <asp:Label ID="carYearLabel" runat="server" Text='<%# Bind("carYear") %>' />
                <br />
                carMakeID:
                <asp:Label ID="carMakeIDLabel" runat="server" Text='<%# Bind("carMakeID") %>' />
                <br />
                carBodyTypeID:
                <asp:Label ID="carBodyTypeIDLabel" runat="server" Text='<%# Bind("carBodyTypeID") %>' />
                <br />
                rentalFee:
                <asp:Label ID="rentalFeeLabel" runat="server" Text='<%# Bind("rentalFee") %>' />
                <br />
                isAvailable:
                <asp:CheckBox ID="isAvailableCheckBox" runat="server" Checked='<%# Bind("isAvailable") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="carDetailsForm" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT carNo,carModelID,carYear,carMakeID,carBodyTypeID,rentalFee,isAvailable FROM Car_Detail WHERE (carNo = @CarNo)" InsertCommand="INSERT INTO [Car_Detail] ([carNo], [carModelID], [carYear], [carMakeID], [carBodyTypeID], [rentalFee], [isAvailable]) VALUES (@carNo, @carModelID, @carYear, @carMakeID, @carBodyTypeID, @rentalFee, @isAvailable)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Car_Detail] SET [carModelID] = @carModelID, [carYear] = @carYear, [carMakeID] = @carMakeID, [carBodyTypeID] = @carBodyTypeID, [rentalFee] = @rentalFee, [isAvailable] = @isAvailable WHERE [carNo] = @original_carNo AND [carModelID] = @original_carModelID AND (([carYear] = @original_carYear) OR ([carYear] IS NULL AND @original_carYear IS NULL)) AND [carMakeID] = @original_carMakeID AND [carBodyTypeID] = @original_carBodyTypeID AND (([rentalFee] = @original_rentalFee) OR ([rentalFee] IS NULL AND @original_rentalFee IS NULL)) AND (([isAvailable] = @original_isAvailable) OR ([isAvailable] IS NULL AND @original_isAvailable IS NULL))">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="carNo" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="carNo" Type="String" />
                <asp:Parameter Name="carModelID" Type="Int32" />
                <asp:Parameter Name="carYear" Type="Int32" />
                <asp:Parameter Name="carMakeID" Type="Int32" />
                <asp:Parameter Name="carBodyTypeID" Type="Int32" />
                <asp:Parameter Name="rentalFee" Type="Int32" />
                <asp:Parameter Name="isAvailable" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="carModelID" Type="Int32" />
                <asp:Parameter Name="carYear" Type="Int32" />
                <asp:Parameter Name="carMakeID" Type="Int32" />
                <asp:Parameter Name="carBodyTypeID" Type="Int32" />
                <asp:Parameter Name="rentalFee" Type="Int32" />
                <asp:Parameter Name="isAvailable" Type="Boolean" />
                <asp:Parameter Name="original_carNo" Type="String" />
                <asp:Parameter Name="original_carModelID" Type="Int32" />
                <asp:Parameter Name="original_carYear" Type="Int32" />
                <asp:Parameter Name="original_carMakeID" Type="Int32" />
                <asp:Parameter Name="original_carBodyTypeID" Type="Int32" />
                <asp:Parameter Name="original_rentalFee" Type="Int32" />
                <asp:Parameter Name="original_isAvailable" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <div>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Car Number:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="carNoTxt" runat="server" Text=""></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="errorDelete" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete Car" OnClick="deleteBtn_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

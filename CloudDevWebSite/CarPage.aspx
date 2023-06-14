<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarPage.aspx.cs" Inherits="CloudDevWebSite.CarPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="carpagePic.css">
    <p>
<asp:GridView ID="GridView1" runat="server" DataKeyNames="carNo" AutoGenerateColumns="False" DataSourceID="CarDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="gridView"><Columns>
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
        <asp:SqlDataSource ID="CarDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" ProviderName="<%$ ConnectionStrings:TheRentYouRideConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Car_Detail]"></asp:SqlDataSource>
    </p>
    <p>

        <table style="width:100%;">
            <tr>
                <td>
                    Car Number:</td>
                <td>
                    <asp:TextBox ID="carNo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Car Model:</td>
                <td>
                    <asp:DropDownList ID="carModel" runat="server" DataSourceID="carModelSource" DataTextField="carModelDescription" DataValueField="carModelDescription">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="carModelSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT [carModelDescription] FROM [Car_Model]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Car Year:</td>
                <td>
                    <asp:TextBox ID="carYear" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    Car Make:</td>
                <td>
                    <asp:DropDownList ID="carMake" runat="server" DataSourceID="carMakeSource" DataTextField="carDescription" DataValueField="carDescription">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="carMakeSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT [carDescription] FROM [Car_Makes]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    Car Body Type:</td>
                <td>
                    <asp:DropDownList ID="carbodyType" runat="server" DataSourceID="bodyTypeSource" DataTextField="bodyDescription" DataValueField="bodyDescription">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="bodyTypeSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT [bodyDescription] FROM [Car_BodyTypes]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    Rental Fee:</td>
                <td>
                    <asp:TextBox ID="rentalFee" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    
                    Is Available:</td>
                <td>
                    <asp:RadioButton ID="isAvailAble" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </p>
    <p>

        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="carNo">
            <EditItemTemplate>
                carNo:
                <asp:Label ID="carNoLabel1" runat="server" Text='<%# Eval("carNo") %>' />
                <br />
                carModelID:
                <asp:TextBox ID="carModelIDTextBox" runat="server" Text='<%# Bind("carModelID") %>' />
                <br />
                carYear:
                <asp:TextBox ID="carYearTextBox" runat="server" Text='<%# Bind("carYear") %>' />
                <br />
                carMakeID:
                <asp:TextBox ID="carMakeIDTextBox" runat="server" Text='<%# Bind("carMakeID") %>' />
                <br />
                carBodyTypeID:
                <asp:TextBox ID="carBodyTypeIDTextBox" runat="server" Text='<%# Bind("carBodyTypeID") %>' />
                <br />
                rentalFee:
                <asp:TextBox ID="rentalFeeTextBox" runat="server" Text='<%# Bind("rentalFee") %>' />
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
                <br />
                carModelID:
                <asp:TextBox ID="carModelIDTextBox" runat="server" Text='<%# Bind("carModelID") %>' />
                <br />
                carYear:
                <asp:TextBox ID="carYearTextBox" runat="server" Text='<%# Bind("carYear") %>' />
                <br />
                carMakeID:
                <asp:TextBox ID="carMakeIDTextBox" runat="server" Text='<%# Bind("carMakeID") %>' />
                <br />
                carBodyTypeID:
                <asp:TextBox ID="carBodyTypeIDTextBox" runat="server" Text='<%# Bind("carBodyTypeID") %>' />
                <br />
                rentalFee:
                <asp:TextBox ID="rentalFeeTextBox" runat="server" Text='<%# Bind("rentalFee") %>' />
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

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString3 %>" SelectCommand="SELECT Car_Detail.* FROM Car_Detail"></asp:SqlDataSource>

    </p>
</asp:Content>

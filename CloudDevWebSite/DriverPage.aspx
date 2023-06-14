<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DriverPage.aspx.cs" Inherits="CloudDevWebSite.DriverPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="driverpagePic.css">
    <p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="driverID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="driverID" HeaderText="driverID" InsertVisible="False" ReadOnly="True" SortExpression="driverID" />
                <asp:BoundField DataField="driverName" HeaderText="driverName" SortExpression="driverName" />
                <asp:BoundField DataField="driverAddress" HeaderText="driverAddress" SortExpression="driverAddress" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT Driver.* FROM Driver"></asp:SqlDataSource>

    </p>
    <p>

        
       

        <asp:FormView ID="FormView1" runat="server" DataKeyNames="driverID" DataSourceID="formviewDataSource">
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
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

            </ItemTemplate>
        </asp:FormView>
       

        <asp:SqlDataSource ID="formviewDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT driverID, driverName, driverAddress, email, mobile FROM Driver WHERE (driverID = @driverID)" InsertCommand="INSERT INTO [Driver] ([driverName], [driverAddress], [email], [mobile]) VALUES (@driverName, @driverAddress, @email, @mobile)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Driver] SET [driverName] = @driverName, [driverAddress] = @driverAddress, [email] = @email, [mobile] = @mobile WHERE [driverID] = @original_driverID AND (([driverName] = @original_driverName) OR ([driverName] IS NULL AND @original_driverName IS NULL)) AND (([driverAddress] = @original_driverAddress) OR ([driverAddress] IS NULL AND @original_driverAddress IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([mobile] = @original_mobile) OR ([mobile] IS NULL AND @original_mobile IS NULL))">
             <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="driverID" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="driverName" Type="String" />
                <asp:Parameter Name="driverAddress" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="driverName" Type="String" />
                <asp:Parameter Name="driverAddress" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="original_driverID" Type="Int32" />
                <asp:Parameter Name="original_driverName" Type="String" />
                <asp:Parameter Name="original_driverAddress" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_mobile" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
    <div>

        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Driver ID:"></asp:Label>
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
                    <asp:Button ID="deleteBtn" runat="server" Text="Delete Driver Record" Width="170px" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>



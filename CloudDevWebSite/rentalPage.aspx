<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rentalPage.aspx.cs" Inherits="CloudDevWebSite.rentalPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="rentalpagePic.css">
    <p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rentalID" DataSourceID="rentalDataSource">
            <Columns>
                <asp:BoundField DataField="rentalID" HeaderText="rentalID" InsertVisible="False" ReadOnly="True" SortExpression="rentalID" />
                <asp:BoundField DataField="driverID" HeaderText="driverID" SortExpression="driverID" />
                <asp:BoundField DataField="inspector_No" HeaderText="inspector_No" SortExpression="inspector_No" />
                <asp:BoundField DataField="carNo" HeaderText="carNo" SortExpression="carNo" />
                <asp:BoundField DataField="starting_Date" HeaderText="starting_Date" SortExpression="starting_Date" />
                <asp:BoundField DataField="end_Date" HeaderText="end_Date" SortExpression="end_Date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="rentalDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Rental]"></asp:SqlDataSource>

    </p>
</asp:Content>

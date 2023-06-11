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
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="InspectorDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [Inspector]"></asp:SqlDataSource>

    </p>
</asp:Content>

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
         </Columns>
     </asp:GridView>
     <asp:SqlDataSource ID="renturnalsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TheRentYouRideConnectionString %>" SelectCommand="SELECT * FROM [rental_Return]"></asp:SqlDataSource>

 </p>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CloudDevWebSite.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>
         <div>

         </div>
         <div>

         </div>
    <section>
    <div class="carInfo" style="background-color: rgba(255, 255, 255, 0.5);">
        <h2 id="carHeader" style="font-weight: bold">Car Information:</h2>
        <p style="color: #000000; font-size: 15px;">
            Click the link below to either create a new car(s) to add to the database, display the cars in the database,
            update/modify anything about the car, or delete the selected car from the database
        </p>
        <p style="font-weight: bold; font-size: large;">
            <a class="btn btn-default" href="CarPage.aspx">Create or Modify Cars&raquo;</a>
        </p>
    </div>
</section>
<section>
    <div class="inspectorInfo" style="margin-bottom: 40px;background-color: rgba(255, 255, 255, 0.5);">
        <h2 id="librariesTitle" style="font-weight: bold">Inspector Information: </h2>
        <p style="color: #000000; font-size: 15px;">
            Click the link below to change the details of the inspector 
            or to add new inspectors to the database
        </p>
        <p style="font-weight: bold; font-size: large;">
            <a class="btn btn-default" href="InspectorPage.aspx">Create or Modify Inspectors&raquo;</a>
        </p>
    </div>
</section>
<section>
    <div class="driverInfo" style="background-color: rgba(255, 255, 255, 0.5);">
        <h2 id="hostingTitle" style="font-weight: bold">Driver Information:</h2>
        <p style="color: #000000; font-size: 15px;">
            Click the link below to either view driver information like cellphone number, modify customer information if there any mistakes, 
            or add new customers to the database. 
        </p>
        <p style="font-weight: bold; font-size: large;">
            <a class="btn btn-default" href="DriverPage.aspx">Create or Modify Customers&raquo;</a>
        </p>
    </div>
</section>

<section >
    <div class="line" style="width: 100%; margin-bottom: 86px; height: 1px;">

    </div>

</section>
      
     <section class="rentalInfo" style="background-color: rgba(255, 255, 255, 0.8);">
          <div >
        <h2 id="rentalTitle" style="font-weight: bold">Rental Information:</h2>
        <p style="color: #000000; font-size: 25px;">
            Click the link below to create a new rental or to retrieve a rental
        </p>
        <p style="font-weight: bold; font-size: large;">
            <a class="btn btn-default" href="rentalPage.aspx">Create a new rental or retrieve rental&raquo;</a>
        </p>
    </div>
         </section>
<section>
    <div class="returnInfo" style="width: 725px">
        <h2 id="returnTitle" style="font-weight: bold">Return Information:</h2>
        <p style="color: #000000; font-size: 25px;">
            Click the link below to create a new return or to retrieve a return
        </p>
        <p style="font-weight: bold; font-size: large;">
            <a class="btn btn-default" href="returnalPage.aspx">Create a new return or retrieve return&raquo;</a>
        </p>
    </div>
</section>
    </main>
</asp:Content>

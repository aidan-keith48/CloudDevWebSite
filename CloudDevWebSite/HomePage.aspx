<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CloudDevWebSite.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url("homepagePicture.jpeg");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }

            /* Styles for full screen */
    @media screen and (min-width: 1200px) {
        .carInfo,
        .inspectorInfo,
        .driverInfo,
        .rentalInfo,
        .returnInfo {
            width: 700px;
            height: 350px;
            margin-bottom: 20px;
        }
    }


        .carInfo,
        .inspectorInfo,
        .driverInfo,
        .rentalInfo,
        .returnInfo {
            width: 508px;
            height: 250px;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
        }

        table,
        th,
        td {
            border: none;
        }
    </style>

    <main>
    </main>

    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <div class="carInfo" style="position: relative; left: 50%; transform: translateX(-50%); top: 50px;">
                    <h2 id="carHeader">Car Information:</h2>
                    <p>Click the link below to either create a new car(s) to add to the database,
                        display the cars in the database, update/modify anything about the car, or delete the selected car from the database</p>
                    <p>
                        <a class="btn btn-default" href="CarPage.aspx">Create or Modify Cars&raquo;</a>
                    </p>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div class="inspectorInfo" style="position: relative; left: 50%; transform: translateX(-50%); top: 50px;">
                    <h2 id="librariesTitle">Inspector Information:</h2>
                    <p>Click the link below to change the details of the inspector or to add new inspectors to the database</p>
                    <p>
                        <a class="btn btn-default" href="InspectorPage.aspx">Create or Modify Inspectors&raquo;</a>
                    </p>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div class="driverInfo" style="position: relative; left: 50%; transform: translateX(-50%); top: 50px;">
                    <h2 id="hostingTitle">Driver Information:</h2>
                    <p>Click the link below to either view driver information like cellphone number, modify customer information if there are any mistakes,
                        or add new customers to the database</p>
                    <p>
                        <a class="btn btn-default" href="DriverPage.aspx">Create or Modify Customers&raquo;</a>
                    </p>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div class="rentalInfo" style="position: relative; left: 50%; transform: translateX(-50%); top: 50px;">
                    <h2 id="rentalTitle">Rental Information:</h2>
                    <p>Click the link below to create a new rental to be entered in the database
                        or to retrieve a rental</p>
                    <p>
                        <a class="btn btn-default" href="rentalPage.aspx">Create a new rental or retrieve rental&raquo;</a>
                    </p>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <div class="returnInfo" style="position: relative; left: 50%; transform: translateX(-50%); top: 50px;">
                    <h2 id="returnTitle">Return Information:</h2>
                    <p>Click the link below to create a new return to be entered in the database
                        or to retrieve a return from the database</p>
                    <p>
                        <a class="btn btn-default" href="returnalPage.aspx">Create a new return or retrieve return&raquo;</a>
                    </p>
                </div>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

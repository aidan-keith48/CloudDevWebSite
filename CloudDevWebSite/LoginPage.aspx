<%@ Page Title="" Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CloudDevWebSite.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="loginPageStyle.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <script>
            // Clear input fields on page load
            window.onload = function () {
                document.getElementById("usernameTextBox").value = "";
                document.getElementById("passwordTextBox").value = "";
            };
        </script>

    
        <title>Aidan Is The Best | Login</title>
    
    </head>
    <body>
       <div class="box">
        <div class="container">
    
            <div class="top">
                <span>Have an account?</span>
                <header>Login</header>
            </div>

        <table>
  <tr>
    <td class="column"><i class="bx bx-user" style="left: 1px; top: -5px; width: 11px"></i></td>
    <td class="column">
      <div class="input-field">
        <asp:TextBox runat="server" ID="usernameTextBox" CssClass="input" placeholder="Username" Width="260px" Height="60px"></asp:TextBox>
      </div>
    </td>
    <td class="column">
      <asp:Label ID="errorUser" runat="server" Text=""></asp:Label>
    </td>
  </tr>
  <tr>
    <td class="column"><i class="bx bx-lock-alt"  style="left: 1px; top: -5px; width: 11px"></i></td>
    <td class="column">
      <div class="input-field" style="margin-bottom: 1px;">
        <asp:TextBox runat="server" ID="passwordTextBox" TextMode="Password" CssClass="input" placeholder="Password" Width="260px" Height="60px"></asp:TextBox>
      </div>
    </td>
    <td class="column">
      <asp:Label ID="errorPass" runat="server" Text=""></asp:Label>
    </td>
  </tr>
  <tr>
    <td></td>
    <td class="column">
      <div class="input-field" style="margin-bottom: 1px;">
        <asp:Button runat="server" ID="Button1" Text="Login" CssClass="submit" OnClick="login_Click" Width="280px" Height="60px" />
      </div>
    </td>
    <td></td>
  </tr>
</table>


           
            <div class="two-col">
                <div class="one">
                   <input type="checkbox" name="" id="check">
                   <label for="check"> Remember Me</label>
                </div>
                <div class="two">
                    <label><a href="#">Forgot password?</a></label>
                </div>
            </div>
        </div>
    </div>  
        <div>
            <script>
          function showMessage() {
            alert("Welcome! You have successfully logged in.");
  }
            </script>

        </div>
    </body>
    </html>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HairProject.login" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Responsive Login Form</title>
  <link rel='stylesheet' href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'><link rel="stylesheet" href="./style.css">

</head>
<body>
    <form id="form1" runat="server">
<!-- partial:index.partial.html -->
<link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>

<div class="login">
  <div class="login-header">
    <h1>Login</h1>
  </div>
  <div class="login-form">
    <h3>Username:</h3>
      <asp:TextBox ID="Txtaccount" runat="server"></asp:TextBox>
    <h3>Password:</h3>
      <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox>
    <br>
      <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Underline="False" Height="30px" Width="300px"></asp:Label>
      <br>
      <asp:Button ID="BtnLogin" runat="server" Height="30px" OnClick="BtnLogin_Click" Text="登入" Width="104px" />
&nbsp;<asp:Button ID="BtnReg" runat="server" Height="30px" OnClick="BtnReg_Click" Text="註冊" Width="104px" />
      <asp:Button ID="BtnForget" runat="server" Text="忘記密碼?" Width="73px" OnClick="BtnForget_Click" />
    <br>
    &nbsp;<br>
    
  </div>
</div>
<div class="error-page">
  <div class="try-again">Error: Try again?</div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script><script  src="./script.js"></script>

    </form>

</body>
</html>

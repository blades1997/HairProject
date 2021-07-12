<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="HairProject.forgotpassword" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>米蘭-忘記密碼</title>
  <link rel='stylesheet' href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'><link rel="stylesheet" href="./style.css">

    <style type="text/css">
        .auto-style1 {}
    </style>

</head>
<body>
    <form id="form1" runat="server">
<!-- partial:index.partial.html -->
<link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>

    <div class="login">
  <div class="login-header">
    <h1>忘記密碼</h1>
  </div>
  <div class="login-form">
    <h3>帳號:</h3>
      <asp:TextBox ID="Txtaccount" runat="server"></asp:TextBox>
    <h3>信箱:</h3>
      <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
      <h3>修改密碼:</h3>
      <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
      <h3>確認密碼:</h3>
      <asp:TextBox ID="Txtconfirm_password" runat="server" TextMode="Password"></asp:TextBox>
    <br>
      <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Underline="False" Height="30px" Width="300px"></asp:Label>
      <br>
      <asp:Button ID="Button2" runat="server" Text="確認" OnClick="Button2_Click" CssClass="auto-style1" Width="73px" />
      <asp:Button ID="Button1" runat="server" Text="返回" Height="20px" OnClick="Button1_Click" Width="73px" />
    <br>

    </form>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="HairProject.register" %>

<!DOCTYPE html>

<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>註冊---米蘭時尚髮型設計</title>
  <link rel="stylesheet" href="./style1.css">

</head>
<body>
<!-- partial:index.partial.html -->
<form action="#" method="post" runat="server">
  <h2>註冊帳號</h2>	
		<p>
			<label for="account" class="floatLabel">帳號</label>
            <asp:TextBox ID="Txtaccount" runat="server"></asp:TextBox>
            <asp:Label ID="lblaccount" runat="server"></asp:Label>
		</p>
		<p>
			<label for="password" class="floatLabel">密碼</label>
            <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox>	
            <asp:Label ID="lblpassword" runat="server"></asp:Label>
		</p>
		<p>
			<label for="confirm_password" class="floatLabel">確認密碼</label>
            <asp:TextBox ID="confirm_password" runat="server"></asp:TextBox>
            <asp:Label ID="lblconfirm_password" runat="server"></asp:Label>
		</p>
		<p>
			<asp:Button ID="Submit" runat="server" Text="建立帳號" OnClick="Submit_Click" />
            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox>
		</p>
	</form>
<!-- partial -->
  <script  src="./script1.js"></script>

</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lest.aspx.cs" Inherits="HairProject.Lest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="txtCusList">
        </div>
        <div style="margin-left: 80px">
            <asp:Label ID="Label1" runat="server" Text="顧客名單管理"></asp:Label>
            <br />
            <br />
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <div style="margin-left: 40px">
            <asp:TextBox ID="TextCusList" runat="server" Height="180px" Width="732px" OnTextChanged="TextCusList_TextChanged"></asp:TextBox>
            <br />
            <br />
        </div>
        <div style="margin-left: 40px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
        </div>
    </form>
</body>
</html>

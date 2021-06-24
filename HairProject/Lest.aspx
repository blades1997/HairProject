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
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="136px" Width="676px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="新增顧客" OnClick="Button1_Click" />
        </div>
        <p>

        </p>
        
        </div>
    </form>
</body>
</html>

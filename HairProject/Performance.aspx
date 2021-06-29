<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Performance.aspx.cs" Inherits="HairProject.Performance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="業績管理"></asp:Label>
            <br />
        </div>
        </br>&nbsp;<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="新增本日業績" OnClick="Button1_Click" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="修   改   業   績" />
    </form>
</body>
</html>

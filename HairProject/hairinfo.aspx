<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hairinfo.aspx.cs" Inherits="HairProject.hairinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-expanded="true" aria-multiline="True" style="width: 719px">
            <asp:Image ID="Image1" runat="server" Height="265px" Width="250px" ImageUrl="~/images/296231.jpg" />
&nbsp;<asp:Image ID="Image2" runat="server" Height="265px" Width="250px" ImageUrl="~/images/296233.jpg" />
&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="265px" Width="250px" ImageUrl="~/images/296235.jpg" />
      &nbsp;<asp:Image ID="Image3" runat="server" Height="265px" Width="250px" ImageUrl="~/images/296234.jpg" />
            <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" style="margin-top: 0px" Text="返回主頁" Width="136px" />
        </div>
    </form>
</body>
</html>

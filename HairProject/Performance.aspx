<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Performance.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="業績管理"></asp:Label>
            <br />
        </div>
        </br>&nbsp;<asp:Table ID="Table2" runat="server">
        </asp:Table>
        <asp:Table ID="Table1" runat="server" Height="388px" Width="926px" CellPadding="9" CellSpacing="31">
            
        </asp:Table>
    </form>
</body>
</html>

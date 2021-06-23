<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Workpublished.aspx.cs" Inherits="HairProject.Workpublished" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>作品分享</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="作品發表"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Image ID="Image1" runat="server" Height="300px" Width="400px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="300px" Width="400px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <asp:Image ID="Image3" runat="server" Height="300px" Width="400px" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="300px" Width="400px" />
        </p>
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
           
            <asp:Button ID="Button" runat="server" Text="作品上傳" />
           
        </p>
        <div>
        </div>
    </form>
</body>
</html>
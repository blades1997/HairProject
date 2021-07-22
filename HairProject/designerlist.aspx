<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="designerlist.aspx.cs" Inherits="HairProject.designerlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 1410px;
            height: 697px;
        }
        .auto-style1 {
            height: 279px;
            width: 255px;
        }
        .auto-style2 {}
    </style>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <form id="form1" runat="server">
        <div class="auto-style1">  
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="192px" Width="153px" />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div> 
    </form>
</body>
</html>

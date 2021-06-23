<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_customer.aspx.cs" Inherits="HairProject.add_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="margin-left: 40px">
            新增顧客資料 
        </p>
        <p style="margin-left: 40px">
           </p>
        <div style="margin-left: 40px">
            <asp:Label ID="Label1" runat="server" Text="顧客姓名："></asp:Label> &nbsp;<asp:TextBox ID="TextName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="聯絡電話："></asp:Label> &nbsp;<asp:TextBox ID="TextTel" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="消費類形："></asp:Label> 
            <asp:ListBox ID="ListTypes" runat="server" Height="18px">
                <asp:ListItem>燙髮</asp:ListItem>
                <asp:ListItem>染髮</asp:ListItem>
                <asp:ListItem>剪髮</asp:ListItem>
                <asp:ListItem>洗髮</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="職業："></asp:Label> 
            <asp:ListBox ID="ListJob" runat="server" Height="22px" style="margin-top: 9px"></asp:ListBox>
            <br />
            <br />
            <asp:RadioButton ID="rdbM" runat="server" Text="男" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdbF" runat="server" Text="女" />
            <br />
            <br />
            備註：<br />
            <asp:TextBox ID="TextBox3" runat="server" Height="125px" Width="225px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="新增" />
        </div>
    </form>
</body>
</html>

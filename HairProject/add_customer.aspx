<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_customer.aspx.cs" Inherits="HairProject.add_customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
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
            &nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label2" runat="server" Text="聯絡電話："></asp:Label> &nbsp;<asp:TextBox ID="TextTel" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="消費類形："></asp:Label> 
            <asp:DropDownList ID="DropDownTypes" runat="server">
                <asp:ListItem>燙髮</asp:ListItem>
                <asp:ListItem>染髮</asp:ListItem>
                <asp:ListItem>洗髮</asp:ListItem>
                <asp:ListItem>剪髮</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="職業："></asp:Label> 
            <asp:DropDownList ID="DropDownJob" runat="server">
                <asp:ListItem>學生</asp:ListItem>
                <asp:ListItem>家管</asp:ListItem>
                <asp:ListItem>金融</asp:ListItem>
                <asp:ListItem>服務</asp:ListItem>
                <asp:ListItem>工業</asp:ListItem>
                <asp:ListItem>設計</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:RadioButton ID="rdbM" runat="server" Text="男" />
&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdbF" runat="server" Text="女" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="新增" />
            <br />
            <asp:Table ID="TxtShow" runat="server" Height="185px" Width="542px">
            </asp:Table>
            <br />
        </div>
    </form>
</body>
</html>

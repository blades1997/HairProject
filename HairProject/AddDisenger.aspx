<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDisenger.aspx.cs" Inherits="HairProject.AddDisenger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增/修改個人首頁</title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <td class="left"> 
    <form id="form1" runat="server">
        <div>
        </div>
           <div class="upload-box">
                   <span class="pr dib vm upload-btn"><i class="dib upload"></i>
                   <div class="text">
                       &nbsp;<br />
                       <br />
                       <asp:Label ID="Label1" runat="server" Text="請輸入您的稱呼："></asp:Label>
                       <br />
        </div>
        </div>
        </span>
        <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="請輸入您的專長："></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextSkills" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="個性簽名："></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextSignature" runat="server"></asp:TextBox>
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            即時訊息</p>
        <p>
            <asp:TextBox ID="TextLine" runat="server" Height="70px" Width="388px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
         </form>
</body>
</html>

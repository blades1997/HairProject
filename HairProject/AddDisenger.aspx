<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDisenger.aspx.cs" Inherits="HairProject.AddDisenger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <td class="left"> 上傳頭貼<span style="color: red; font-weight: bolder">*</span>：</td>
  <td>
    <form id="form1" runat="server">
        <div>
        </div>
           <div class="upload-box">
                   <span class="pr dib vm upload-btn"><i class="dib upload"></i>
                   <div class="text">
                       <input type="file" name="uploadfile" class="pa uploadfile" style="overflow: hidden" />
                       <br />
                       <br />
                       <asp:Label ID="Label1" runat="server" Text="請輸入您的稱呼："></asp:Label>
                       <br />
        </div>
        </div>
        </span>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="請輸入您的專長："></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="個性簽名："></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="送出" />
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="HairProject.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>作品上傳</title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <form id="form1" runat="server">
        <div>
            作品上傳<br />
        </div>
請上傳圖片:<input type="file" id="profile_pic" name="profile_pic" accept=".jpg, .jpeg, .png">&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="上傳" />
        <br />
                <br />
請上傳圖片:<input type="file" id="profile_pic" name="profile_pic" accept=".jpg, .jpeg, .png">&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="上傳" />
        <br />
                <br>
請上傳圖片:<input type="file" id="profile_pic" name="profile_pic" accept=".jpg, .jpeg, .png">&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="上傳" />
        <br />
                <br />
請上傳圖片:<input type="file" id="profile_pic" name="profile_pic" accept=".jpg, .jpeg, .png">&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="上傳" />
        <br />
                <br />


    </form>
        </div>
    </form>
</body>
</html>

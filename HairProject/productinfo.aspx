<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productinfo.aspx.cs" Inherits="HairProject.productinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        

        <div class="row">
            <asp:Button ID="Button2" runat="server" Text="返回首頁" OnClick="Button2_Click" />
           <div class="col"><asp:Image ID="Image1" runat="server" Height="150px" Width="150px" style="text-align: center" ImageUrl="~/images/hairproduct/images_1.jpg" /> 
            </div>
           <span style="vertical-align:middle">摩洛哥堅果油<br /><br />售價 800元<br /></span>
               
               
                 
            <div><asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_2.jpg"   />
                <br />
                <br />
            <span style="vertical-align:middle">草本精華洗髮乳<br /><br />售價 1600元<br /></span></div>
            <div><asp:Image ID="Image13" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_3.jpg" />
                <br />
                <span style="vertical-align:middle">亮彩護色洗髮乳<br /><br />售價 1300元<br /></span>
            </div>
            <div><asp:Image ID="Image4" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_4.jpg" />
                <br />
                <span style="vertical-align:middle">鎖水雙效修護精華<br /><br />售價 1200元<br /></span>
            </div>
            <div><asp:Image ID="Image5" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_5.jpg" />
                <br />
                <span style="vertical-align:middle">抗屑洗髮乳<br /><br />售價 500元<br /></span>
            </div>
            <div><asp:Image ID="Image6" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_6.jpg" />
                <br />
                <span style="vertical-align:middle">頭皮滋養液<br /><br />售價 2800元<br /></span>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            ===================================================================================================================<br />
            <div><asp:Image ID="Image7" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_7.jpg" />
                <br /><span style="vertical-align:middle">潤澤修護洗髮乳<br /><br />售價 800元<br /></span>
            </div>
            <div><asp:Image ID="Image8" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_8.jpg" />
                <br /><span style="vertical-align:middle">深層修護精華<br /><br />售價 1700元<br /></span>
            </div>
            <div><asp:Image ID="Image9" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_9.jpg" />
                <br /><span style="vertical-align:middle">保濕修護免沖洗<br /><br />售價 800元<br /></span>
            </div>
             <div><asp:Image ID="Image10" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_10.jpg" />
                 <br /><span style="vertical-align:middle">極緻修護護髮素<br /><br />售價 2800元<br /></span>
             </div>
            <div><asp:Image ID="Image11" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_11.jpg" />
                <br /><span style="vertical-align:middle">型男專用髮蠟<br /><br />售價 650元<br /></span>
            </div>
            <div><asp:Image ID="Image12" runat="server" Height="150px" Width="150px" ImageUrl="~/images/hairproduct/images_12.jpg" />
                <br /><span style="vertical-align:middle">施華叩定型噴霧<br /><br />售價 800元<br /></span>
            </div>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="返回首頁" Width="168px" />
            <br />
            <br />
            <br />
            ===================================================================================================================<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

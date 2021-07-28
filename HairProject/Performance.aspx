<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Performance.aspx.cs" Inherits="HairProject.Performance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="業績管理"></asp:Label>
            <br />
        </div>
        </br>&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="moom" HeaderText="月" SortExpression="moom" />
                <asp:BoundField DataField="day" HeaderText="日" SortExpression="day" />
                <asp:BoundField DataField="disenger" HeaderText="設計師" SortExpression="disenger" />
                <asp:BoundField DataField="prem" HeaderText="燙髮業績" SortExpression="prem" />
                <asp:BoundField DataField="prempo" HeaderText="燙髮客數" SortExpression="prempo" />
                <asp:BoundField DataField="color" HeaderText="染髮業績" SortExpression="color" />
                <asp:BoundField DataField="colorpo" HeaderText="染髮客數" SortExpression="colorpo" />
                <asp:BoundField DataField="cat" HeaderText="剪髮業績" SortExpression="cat" />
                <asp:BoundField DataField="catpo" HeaderText="剪髮客數" SortExpression="catpo" />
                <asp:BoundField DataField="shoomp" HeaderText="洗髮業績" SortExpression="shoomp" />
                <asp:BoundField DataField="shoomppo" HeaderText="洗髮客數" SortExpression="shoomppo" />
                <asp:BoundField DataField="sell" HeaderText="銷售業績" SortExpression="sell" />
                <asp:BoundField DataField="sum" HeaderText="總業績" SortExpression="sum" />
                <asp:BoundField DataField="sumpo" HeaderText="總客數" SortExpression="sumpo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HairProjectConnectionString %>" SelectCommand="SELECT [moom], [day], [disenger], [prem], [prempo], [colorpo], [color], [cat], [catpo], [shoomp], [shoomppo], [sell], [sum], [sumpo] FROM [money]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="新增本日業績" OnClick="Button1_Click" />
        <br />
        <asp:Button ID="Button2" runat="server" Text="修   改   業   績" />
    </form>
</body>
</html>

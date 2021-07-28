<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lest.aspx.cs" Inherits="HairProject.Lest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body background="https://images.pexels.com/photos/3297593/pexels-photo-3297593.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260">
    <form id="form1" runat="server">
        <div id="txtCusList">
        </div>
        <div style="margin-left: 80px">
            <asp:Label ID="Label1" runat="server" Text="顧客名單管理"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="顧客姓名" SortExpression="name" />
                    <asp:BoundField DataField="tel" HeaderText="顧客電話" SortExpression="tel" />
                    <asp:BoundField DataField="type" HeaderText="消費類型" SortExpression="type" />
                    <asp:BoundField DataField="job" HeaderText="顧客職業" SortExpression="job" />
                    <asp:BoundField DataField="sex" HeaderText="性別" SortExpression="sex" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HairProjectConnectionString %>" SelectCommand="SELECT [name], [tel], [type], [job], [sex] FROM [Customerinfo]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="新增顧客" OnClick="Button1_Click" />
        </div>
        <p>

        </p>
        
        </div>
    </form>
</body>
</html>

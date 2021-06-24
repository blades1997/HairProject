<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Reservation.aspx.cs" Inherits="HairProject.User_Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<center>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>我要預約</title>
</head>
<body>
	<form id="form1" runat="server" method="post" >
		<h1>預約登記</h1>	
        <br />
        <h2><asp:Label ID="Label1" runat="server" Text="選擇設計師"></asp:Label></h2>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            號設計師</p>
        <br />
        <h2><asp:Label ID="Label2" runat="server" Text="選擇日期"></asp:Label></h2>
        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>        
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <br />
        <h2><asp:Label ID="Label4" runat="server" Text="選擇服務項目"></asp:Label></h2>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Size="16pt" Height="37px" RepeatDirection="Horizontal" Width="370px">
            <asp:ListItem>洗髮</asp:ListItem>
            <asp:ListItem>剪髮</asp:ListItem>
            <asp:ListItem>燙髮</asp:ListItem>
            <asp:ListItem>染髮</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button1" runat="server" Height="42px" Text="送出" Width="110px" />
        <br />
    </form>
</body>
    </center>
</html>

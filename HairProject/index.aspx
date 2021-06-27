<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HairProject.index" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>米蘭時尚髮型設計</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<form id="form1" runat="server">

		<!-- Header -->
			<header id="header">
				<h1>米蘭時尚髮型設計</h1>
				<nav>
					<ul>
						<li><a href="#intro">店面介紹</a></li>
						<li><a href="#one">流行髮型</a></li>
						<li><a href="#two">設計師</a></li>
						<li><a href="#work">相關產品</a></li>
						<li><a href="#contact">我要預約</a></li>
					    <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="登入" Height="50px" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:Button ID="btnlogout" runat="server" Text="立即登出" OnClick="btnlogout_Click" />
					</ul>
				</nav>
			    <br />
			</header>

		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>Hey.</h2>
					</header>
					<p> 美髮店</p>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>流行髮型</h2>
					</header>
					<p>不知道甚麼髮型適合自己嗎? 這裡有各式各樣來自各地的髮型可以讓您參考!</p>
                    <asp:Button ID="btnhair" runat="server" Text="更多資訊" OnClick="btnhair_Click" />
				</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>設計師</h2>
					</header>
					<p>本店設計師們都有各自的特色和專長,這裡能讓客戶們找到適合自己的專屬設計師!</p>
                    <asp:Button ID="btndesigner" runat="server" Text="更多資訊" OnClick="btndesigner_Click" />
				</div>
				<a href="#work" class="button style2 down anchored">Next</a>
			</section>

		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content">
					<header>
						<h2>相關產品</h2>
						<p>您有關於護髮,護理頭皮的困擾嗎?這裡有各式各樣的產品來幫助您護理自己的髮質和頭皮!</p>
                        <asp:Button ID="btnproduct" runat="server" Text="更多資訊" OnClick="btnproduct_Click" />
					</header>

					<!-- Gallery  -->
						<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" title="The Anonymous Red" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" title="Airchitecture II" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" title="Air Lounge" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" title="Carry on" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/05.jpg" class="image fit"><img src="images/thumbs/05.jpg" title="The sparkling shell" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/06.jpg" class="image fit"><img src="images/thumbs/06.jpg" title="Bent IX" alt="" /></a>
							</article>
						</div>

				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<h2>立即預約!</h2>
						<p></p>
					</header>
					<div class="box">
							<div class="fields">
				
							</div>
							<ul class="actions special">
								<li> <asp:Button ID="Button1" runat="server" Text="我要預約" OnClick="Button1_Click" /></li>
                                   
							</ul>
					</div>
				</div>
			</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	    </form>

	</body>
</html>
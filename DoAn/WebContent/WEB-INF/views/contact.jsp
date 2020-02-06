<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="font-awesome-4.7.0/css/font-awesome.min.css">
<link href="font/font.css" rel="stylesheet">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/style.css">
<title>Liên hệ</title>


</head>

<body>
	<div class="wrapper">
		<!--Begin Header-->
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8080/DoAn/index.htm"
					title="Chào mừng bạn đến với website bán SIM MINH QUÂN">
					<img src="./images/logo.png" width="258" height="90" />
				</a>
			</div>
			<!--form search-->
			<div class="search">
				<form action="search.htm" method="GET">
					<input name="s" type="search" placeholder="Tìm kiếm..." value="" />
					<button class="btnSearch" type="submit">
						<i class="fa fa-search fa-2x"></i>
					</button>
				</form>
			</div>
			<!--list Menu-->
			<div class="listMenu">
				<a href="http://localhost:8080/DoAn/index.htm">
					<div class="txtMenu">Trang chủ</div>
				</a>
				<div class="txtMenu">
					<div>
						<a href="http://localhost:8080/DoAn/product.htm">Sản phẩm <i class="fa fa-angle-down"></i></a>
					</div>
					<div class="dropdown-content">
						<a href="http://localhost:8080/DoAn/product/1.htm">Sim Viettel</a>
						<a href="http://localhost:8080/DoAn/product/2.htm">Sim Mobifone</a>
						<a href="http://localhost:8080/DoAn/product/3.htm">Sim Vinafone</a> <a
							href="http://localhost:8080/DoAn/product/4.htm">Hot</a> <a
							href="http://localhost:8080/DoAn/product/5.htm">Khác</a>
					</div>
				</div>
				<a href="http://localhost:8080/DoAn/contact.htm">
					<div class="txtMenu active">Liên hệ</div>
				</a>
			</div>
			<!--Dang ki dang nhap-->
			<div class="txtMenu">
				<div>
					<i class="fa fa-list"></i>
				</div>
				<div class="dropdown-content login">
					<a href="http://localhost:8080/DoAn/admin/login.htm">Đăng nhập</a>
				</div>
			</div>


		</div>
		<!--End Header-->
		<!--Contact container-->
		<div class="contactWrapper">
			<div class="googleMap">
				<iframe 
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.5223930872676!2d106.78381231450246!3d10.847815192273128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276bb276eaf7%3A0x56a6a0eafe0e3b09!2zOTcgxJDGsOG7nW5nIE1hbiBUaGnhu4duLCBIaeG7h3AgUGjDuiwgUXXhuq1uIDksIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1573716691851!5m2!1svi!2s" 
				width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
			<div class="contactContainer">
				<div class="contact">
					<h2 style="color: #5C2200;">LIÊN HỆ VỚI CHÚNG TÔI</h2>
					<h3>SIM MINH QUÂN - CHUYÊN MUA BÁN SIM</h3>
					<div>97 - Man Thiện - Hiệp Phú - Quận 9 - TP.Hồ Chí Minh</div>
					<div>Hotline :0395633238</div>
					<div>Email: n16dccn125@student.ptithcm.edu.vn</div>
					<div>Website:MinhQuanSim.com</div>
				</div>

				<form class="formContact" action="contact/send.htm">
					
					<h2 style="align-self: center; color: #5C2200;">LIÊN HỆ TƯ VẤN
						KHÁCH HÀNG</h2>
					<input class="inputContact" name="name"
						placeholder="Họ tên của bạn..." required/> <input class="inputContact"
						name="phone" placeholder="Số điện thoại..."  required/>
					<textarea class="areaContact" name="content"
						placeholder="Nội dung cần tư vấn..."></textarea>
					<div class="contactButton">
						<button class="button contactButton">							
								<span class="textButton">Gửi liên hệ</span></button>							
						</button>
						<div>${message}</div>
					</div>
				</form>

			</div>
		</div>
		<!--Contact container-->
			<!--FOOTER-->
		<div class="footerWrapper">
			<div class="footerContainer">
				<div class="txtFooter">

					<h3 class="titleFooter">Về chúng tôi</h3>
					<p>
						<span style="font-size: 100%;">Hệ thống mua bán Sim điện thoại chất lượng và giá rẻ. Tự hào là hệ thống bán Sim uy tín toàn quốc...
					 </span>
					</p>
				</div>
				<div class="txtFooter" style="line-height: 30px;">


					<h4 class="titleFooter">
						LIÊN HỆ<br>
					</h4>
					<p>
						<i class="fa fa-address-square"></i>  97 MAN THIỆN, QUẬN 9,TPHCM
					</p>
					<p>
						<i class="fa fa-phone-square"></i> 0395633238
					</p>
					<p>
						<a
							href="https://www.facebook.com/profile.php?id=100035779704175" style="color: white;">
							<i class="fa fa-facebook-square"></i>Fb.com/MinhQuanSim</a>
					</p>
				

				</div>
				<div class="txtFooter" style="line-height: 30px;">
                     <h3 class="titleFooter">Mua hàng &amp; Thanh toán</h3>
						<p>
						<i class="fa fa-hand-o-right"></i>  Đặt hàng và thu tiền tận nơi toàn quốc
					</p>
						<p>
						<i class="fa fa-hand-o-right"></i> Cam kết hàng uy tín và chất lượng
					</p>
					<p>
						<i class="fa fa-hand-o-right"></i> Hotline: 0395633238
					</p>
                 </div>

				</div>
			</div>
			<div class="end">Copyright 2019 © MINHQUANSIM.VN</div>
		</div>
		<!--FOOTER-->
	</div>
	<script src="js/swiper.min.js"></script>
	<script src="js/index.js"></script>


</body>

</html>
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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


<title>Cửa hàng Sim Minh Quân</title>

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
					<div class="txtMenu active">Trang chủ</div>
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
					<div class="txtMenu">Liên hệ</div>
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
		<!--Begin Slide-->
		<div class="slide">
			<div class="" style="max-width: 100%;">
				<img class="mySlides" src="images/index1.png">
				<img class="mySlides" src="images/index2.png">

				<div class="sliderContainer">
					<div class="iconPre" onclick="plusDivs(-1)">&#10094;</div>
					<div class="iconNext" onclick="plusDivs(1)">&#10095;</div>


				</div>
			</div>
		</div>
		<!--End Slide-->
		<!--Begin banner-->
		<div class="bannerContainer">
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/1.htm">
					<div class="over">
						<img class="imgLayer"
							src="images/viettel.png" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>SIM <br>VIETTEL<span>
					</div>
				</a>
			</div>
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/2.htm">
					<div class="over">
						<img class="imgLayer" src="images/mobifone1.png" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>SIM <br>MOBIFONE<span>
					</div>
				</a>
			</div>
			<div class="layer">
				<a href="http://localhost:8080/DoAn/product/3.htm">
					<div class="over">
						<img class="imgLayer" src="images/vinafone.png" />
					</div>
					<div class="over1"></div>
					<div class="over2">
						<span>SIM<br>VINAFONE<span>
					</div>
				</a>
			</div>


		</div>
		<!--End banner-->
		<!--Begin line-->
		<div class="lineContainer">
			<div class="line"></div>
			<div class="txtLine">
				<span>HOT</span>
			</div>
			<div class="line"></div>
		</div>
		<!--End line-->
		<!--Begin Products-->
		<div class="productWrapper">
			<!--Begin Product Container-->
			<div class="productContainer">
				<c:forEach var="item" items="${listNoiTieng}">
					<!--Begin product-->
					<div class="product">
						<div class="productImage">
							<a href="http://localhost:8080/DoAn/detail/${item.id}.htm">
								<div class="over">
									<img class="imgLayer" src="images/products/${item.link}" />
								</div>
								<div class="${item.discount !=0.0 ? 'percent': ''}" ><f:formatNumber value="${item.discount}" type="percent"/></div>
								
							</a>
						</div>
						<div class="productTitle">
							<span>${item.name }</span>
						</div>
						<div class="productPrice">
							<div class="txtPrice">
								${item.discount !=0.0 ? item.price: ''}<span style="text-decoration: underline;">${ item.discount !=0.0 ?'đ':''}</span>
							</div>
							<div class="txtPriceSale">
								<f:formatNumber value="${item.price-item.price*item.discount}" type="currency"/><span
									style="text-decoration: underline;"></span>
							</div>
						</div>
						<div class="productButton">
							<a href="http://localhost:8080/DoAn/cart/${item.id}.htm">
								<div class="button">
									<span class="textButton">Mua ngay</span>
								</div>
							</a>
						</div>
					</div>
					<!--End product-->
				</c:forEach>

			</div>
			<!--End ProductContainer-->

			<!--Button Xem them-->
			<div class="productButton btnXemThem">
				<a href="http://localhost:8080/DoAn/product.htm">
					<div class="button">
						<span class="textButton">Xem thêm</span>
					</div>
				</a>
			</div>
			<!--End button xem them-->
			<!--End ProductContainer-->
		</div>
		<!--End Products-->
		
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
							href="https://www.facebook.com/quan.do.79274089" style="color: white;">
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
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
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
body {
  background: url("./images/chitiet.png") no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  font-family: "Open Sans", serif;
}

</style>
<title>Detail</title>
</head>
<body>
	<div class='container'>
		<div class='widget'>
			<div class='cycle-slideshow' data-cycle-allow-wrap='true'
				data-cycle-fx='carousel' data-cycle-next='#next'
				data-cycle-pager-template="&lt;a href='#' class='thumb'&gt;&lt;img src='{{children.0.src}}'&gt;&lt;/a&gt;"
				data-cycle-pager='#thumbnails' data-cycle-prev='#prev'
				data-cycle-slides='figure' data-cycle-timeout='0'>
				<figure>
					<img src="images/products/${item.link}">
					<figcaption>
						<h3>${item.name }</h3>
						<span class='tag'>Sim Minh Quân</span>
						<span class='tag'> </span>
						<span class='tag'> </span>
						<div class="txtPriceSale">
							${Math.ceil((item.price-item.price*item.discount)*10)/10}<span
							style="text-decoration: underline;">đ</span>
						</div>
						<p>${item.description}</p>
						<div class='rating'>
							<span class='fa fa-star'></span> <span class='fa fa-star'></span>
							<span class='fa fa-star'></span> <span class='fa fa-star'></span>
							<span class='fa fa-star'></span>
						</div>
					</figcaption>
				</figure>

		</div>
	</div>

</body>

</html>
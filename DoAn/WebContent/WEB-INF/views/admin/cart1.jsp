<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Giỏ hàng</title>

</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: gray;
}
</style>

<body>
	<h1>QUẢN LÝ CỬA HÀNG SIM MINH QUÂN</h1>
	<div>
		<div>
			<div>Xin Chào: ${user.name} | <a href="http://localhost:8080/DoAn/admin/login.htm">Đăng Xuất</a></div>
			<div>
				<a href="http://localhost:8080/DoAn/admin/product1.htm">Sản phẩm</a>
				|
				<a href="http://localhost:8080/DoAn/admin/cart1.htm">Đã bán</a>
			</div>
		</div>
		<table class="table table-hover">
			<tr>
				
				<th>Hình</th>
				<th>Tên sản phẩm</th>								
				<th>Số lượng</th>
				<th>Giá</th>
				<th>Tên khách hàng</th>
				<th>Số điện thoại</th>
				<th>Ngày đặt hàng</th>
				
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					
					<td><img style="width: 200px;height:150px;" src="images/products/${item.product.link}" /></td>
					<td>${item.product.name}</td>					
					<td>${item.quantity}</td>
					<td>${item.price}</td>
					<td>${item.bill.name}</td>
					<td>${item.bill.phone }</td>
					<td>${item.bill.date_order }</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>
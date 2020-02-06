<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sánh sản phẩm</title>

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
				<a href="http://localhost:8080/DoAn/admin/product.htm">Sản phẩm</a>
				|
				<a href="http://localhost:8080/DoAn/admin/cart.htm">Đã bán</a>
				|
				<a href="http://localhost:8080/DoAn/admin/insert.htm">Thêm sản phẩm mới</a>
				|
				<a href="http://localhost:8080/DoAn/admin/user.htm">Thêm tài khoản mới</a>
			</div>
		</div>
		<table class="table table-hover">
			<tr>
				<th>Id</th>
				<th>Hình</th>
				<th>Tên sản phẩm</th>				
				<th>Loại</th>
				<th>Giá</th>
				<th>Mô tả</th>
				<th>Giảm giá</th>
				<th></th>
				<th></th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.id}</td>
					<td><img style="width: 200px;height:150px;" src="images/products/${item.link}" /></td>
					<td>${item.name}</td>					
					<td>${item.product_type.name}</td>
					<td>${item.price}</td>
					<td>${item.description}</td>
					<td>${item.discount}</td>
					<td><a href="admin/delete/${item.id}.htm">Xóa</a></td>
					<td><a href="admin/edit/${item.id}.htm">Sửa</a></td>
				</tr>
			</c:forEach>
		</table>
		<div>${message}</div>
	</div>
</body>
</html>
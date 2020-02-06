<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Upload file</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>Sửa sản phẩm</h2>
	
	<form action="admin/edit.htm" method="post" 
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Hình ảnh</div>
			<img  src="images/products/${product.link}" style="width: 150px; height: 150px;">
		</div>
		<div class="form-group">
			<div>Tên</div>
			<input type="text" name="name" value="${product.name}" required>
		</div>
		<div class="form-group">
			<div>Loại</div>
			<select name="id_type" required >
				<option value="1">Sim Viettel</option>
				<option value="2">Sim Mobifone</option>
				<option value="3">Sim Vinafone</option>
				<option value="4">Hot</option>
				<option value="5">Khác</option>
			</select>
		</div>
		<div class="form-group">
			<div>Giá</div>
			<input type="text" value="${product.price}" name="price" required />
		</div>
		<div class="form-group">
			<div>Mô tả</div>
			<textarea name="description" style= "margin: 0px;width:375px;height:113px;">
				${product.description }
						</textarea>
		</div>
		<div class="form-group">
			<div>Giảm giá</div>
			<input value="${product.discount }" type="text" name="discount" required />
		</div>
		

		<div class="form-group">
			<button>Thay đổi </button>
		</div>
		<div>
			${message}
		</div>
	
	</form>
</body>
</html>
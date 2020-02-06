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
	<h2>Thêm sản phẩm mới</h2>
	${message}
	<form action="admin/insert.htm" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Tên sản phẩm</div>
			<input type="text" name="name" required>
		</div>
		<div class="form-group">
			<div>Loại</div>
			<select name="id_type" required>
				<option value="1">Sim Viettel</option>
				<option value="2">Sim Mobifone</option>
				<option value="3">Sim Vinafone</option>
				<option value="4">Hot</option>
				<option value="5">Khác</option>
			</select>
		</div>
		<div class="form-group">
			<div>Price</div>
			<input type="text" name="price" required />
		</div>
		<div class="form-group">
			<div>Mô tả</div>
			<textarea name="description">
						</textarea>
		</div>
		<div class="form-group">
			<div>Giảm giá</div>
			<input type="text" name="discount" required />
		</div>
		<div class="form-group">
			<div>Hình ảnh</div>
			<input type="file" name="photo" required />
		</div>

		<div class="form-group">
			<button>Thêm mới</button>
		</div>
		<div>
			${message}
		</div>
	</form>
</body>
</html>
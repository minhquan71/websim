<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>Tạo tài khoản</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>Tạo tài khoản mới</h2>

	<form action="admin/user.htm" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Email hoặc tên đăng nhập</div>
			<input type="text" name="email" value="${users.email}" required>
		</div>
	<div class="form-group">
			<div>Password</div>
			<input type="text" name="password" value="${users.password}" required>
		</div>
		<div class="form-group">
			<div>Tên</div>
			<input type="text" name="name" value="${users.name}" required>
		</div>
		<div class="form-group">
			<div>Active</div>
			<select name="active" required>
				<option value="0">0</option>
				<option value="1">1</option>
			</select>
		</div>
		<div class="form-group">
			<div>Phân quyền</div>		
			<select name="phanquyen" required>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
		</div>
		
		

		<div class="form-group">
			<button>Thêm mới </button>
		</div>
		<div>
			${message}
		</div>
	
	</form>
</body>
</html>
<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #b10000;
	margin-left: 400px;
	margin-right: 400px;
	margin-top: 50px;
	box-shadow: 1px 1px 20px 3px rgba(177, 0, 0, 1);
	background-color: #82ff80;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #fd1515;
	color: black;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #fd1515;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}
.wrapper{
  background-color: white;  
}
span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>

<title>Đăng nhập</title>

</head>

<body>
	<div class="wrapper">
		<div class="header">
			<!--Logo-->
			<div class="logo">
				<a href="http://localhost:8080/DoAn/index.htm"
					title="Chào mừng bạn đến với website bán Sim MINH QUÂN">
					<img src="./images/logo.png" width="258" height="90"  />
				</a>
			</div>

	<form action="admin/login.htm" method="post">
		<div class="imgcontainer">
			<img src="images/logo.png" style="width: 200px; height: 70px;"
				alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<label for="uname"><b>Tài Khoản</b></label> <input type="text"
				placeholder="Emai hoặc tài khoản" name="uname" required> <label
				for="psw"><b>Mật khẩu</b></label> <input type="password"
				placeholder="Mật Khẩu" name="psw" required>
			<div style="color:red;">${message }</div>
			<button type="submit">Đăng nhập</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>

		<div class="container" style="background-color: ##8080ff">
			<button type="reset" class="cancelbtn">Cancel</button>
			<span class="psw"><a href="#">Forgot password?</a></span>
		</div>
	</form>
	</div>
	</div>
</body>

</html>
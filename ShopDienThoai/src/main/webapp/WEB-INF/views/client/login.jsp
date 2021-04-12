<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<title>HopeOnline -- Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="/assetsLoginClient/css/style.css">

<style type="text/css">
* {
	font-family: 'Alegreya', serif !important;
}
</style>

</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-4">
					<h2 class="heading-section">Đăng nhập Hope Online</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
							<div class="text w-100">
								<h2>Chào mừng bạn đến với Hope Online</h2>
								<p>Bạn đã có tài khoản???</p>
								<a href="/register" class="btn btn-white btn-outline-white">Đăng kí</a>
							</div>
						</div>
						<div class="login-wrap p-4 p-lg-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Đăng nhập</h3>
								</div>

							</div>

							<c:if test="${not empty message}">
								<div class="alert alert-danger">${message}</div>
							</c:if>
							<form method="POST" class="signin-form">
								<div class="form-group mb-3">
									<label for="username">Tên đăng nhập hoặc Email </label>
									<input id="username" type="text" class="form-control" name="username" tabindex="1">
									<div class="invalid-feedback">Vui lòng nhập username hoặc email</div>
								</div>
								<div class="form-group mb-3">
									<label for="password" class="control-label">Mật khẩu</label>
									<input id="password" type="password" class="form-control" name="password" tabindex="2" required="">
									<div class="invalid-feedback">Vui lòng nhập mật khẩu</div>
								</div>
								<div class="form-group">
									<button type="submit" class="form-control btn btn-primary submit px-3">Đăng nhập</button>
								</div>
								<div class="form-group d-md-flex">
									<div class="w-50 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">
											Ghi nhớ
											<input type="checkbox" checked>
											<span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="/forget-password">Quên mật khẩu</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="assetsLoginClient/js/jquery.min.js"></script>
	<script src="assetsLoginClient/js/popper.js"></script>
	<script src="assetsLoginClient/js/bootstrap.min.js"></script>
	<script src="assetsLoginClient/js/main.js"></script>

</body>
</html>


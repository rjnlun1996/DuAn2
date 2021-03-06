<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
<title>Trang đăng nhập</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="/assetsLogin/css/app.min.css">
<link rel="stylesheet" href="/assetsLogin/bundles/bootstrap-social/bootstrap-social.css">
<!-- Template CSS -->
<link rel="stylesheet" href="/assetsLogin/css/style.css">
<link rel="stylesheet" href="/assetsLogin/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="/assetsLogin/css/custom.css">
<link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<section class="section">
			<div class="container mt-5">
				<div class="row">
					<div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
						<div class="card card-primary">
							<div class="card-header justify-content-between">
								<h1>Login</h1>
								<img width="150px" src="/assets/images/logo/logo.jpg" style="border-radius: 10px;box-shadow: 0 2px 6px #acb5f6;">
							</div>
							<div class="card-body">
								<c:if test="${not empty message}">
									<div class="alert alert-danger">${message}</div>
								</c:if>
								<form method="POST" class="needs-validation">
									<div class="form-group">
										<label for="username">Username or Email</label>
										<input id="username" type="text" class="form-control" name="username" tabindex="1">
										<div class="invalid-feedback">Please fill in your username</div>
									</div>
									<div class="form-group">
										<div class="d-block">
											<label for="password" class="control-label">Password</label>
											<div class="float-right">
												<a href="auth-forgot-password.html" class="text-small"> Forgot Password? </a>
											</div>
										</div>
										<input id="password" type="password" class="form-control" name="password" tabindex="2" required="">
										<div class="invalid-feedback">please fill in your password</div>
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox">
											<input type="checkbox" name="remember" class="custom-control-input" tabindex="3" id="remember-me">
											<label class="custom-control-label" for="remember-me">Remember Me</label>
										</div>
									</div>
									<div style="margin: 10px 0; text-align: center">
										
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-lg btn-block" tabindex="4">Login</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- General JS Scripts -->
	<script src="/assetsLogin/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="/assetsLogin/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="/assetsLogin/js/custom.js"></script>
</body>

</html>
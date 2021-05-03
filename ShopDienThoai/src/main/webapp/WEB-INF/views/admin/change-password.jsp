<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- General CSS Files -->
<link rel="stylesheet" href="/assetsChangePass/bootstrap/media.css">
<link rel="stylesheet" href="/assetsChangePass/fonts">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/border-radius.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/reset-text.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/screen-reader.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/text-hide.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/visibility.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/utilities/stretched-link.css">
<link rel="stylesheet" href="/assetsChangePass/css/bootstrap.min.css">
<link rel="stylesheet" href="/assetsChangePass/css/style.css">


<title>HopeOnline -- Change Password</title>
</head>
<body class="img js-fullheight" style="background-image: url(/assetsChangePass/images/banner2.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">CHANGE PASSWORD</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center"></h3>
						<form class="signin-form" method="POST">
							<c:if test="${message != null }">
								<p style="color: #228b22; font-weight: bold; text-align: center;">${message}</p>
							</c:if>
							<c:if test="${error != null }">
								<p style="color: #faebd7  ; font-weight: bold; font-size:20px; text-align: center;">${error}</p>
							</c:if>
							<div class="form-group">
								<input type="password" minlength="5" name="oldPassword" class="form-control" placeholder="Password Current" required>
							</div>
							<div class="form-group">
								<input id="password-field" minlength="5" name="newPassword" type="password" class="form-control" placeholder="Password New" required>
								<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input id="password-field" minlength="5" name="rePassword" type="password" class="form-control" placeholder="Confirm Password" required>
								<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary submit px-3">Save Change</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-50"></div>
								<!-- <div class="w-50 text-md-right">
									<a href="" style="color: #fff">Forgot Password ?</a>
								</div> -->
							</div>
							<div class="social d-flex text-center">
								<a href="/ho-admin/login" class="px-2 py-2 mr-md-1 rounded">
									<span class="ion-logo-facebook mr-2"></span>
									BACK LOGIN PAGE
								</a>

							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="/assetsChangePass/js/jquery.min.js"></script>
	<script src="/assetsChangePass/js/popper.js"></script>
	<script src="/assetsChangePass/js/bootstrap.min.js"></script>
	<script src="/assetsChangePass/js/main.js"></script>

</body>
</html>
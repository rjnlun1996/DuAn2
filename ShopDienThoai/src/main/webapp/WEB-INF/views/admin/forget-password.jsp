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


<title>Form Forget Password</title>
</head>
<body class="img js-fullheight" style="background-image: url(/assetsChangePass/images/banner2.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">RESET PASSWORD</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center"></h3>
						<form class="signin-form" method="POST">
							<c:if test="${message != null }">
								<p style="color: green; font-weight: bold; text-align: center;">${message}</p>
							</c:if>
							<c:if test="${error != null }">
								<p style="color: red; font-weight: bold; text-align: center;">${error}</p>
							</c:if>
							<div class="form-group">
								<input type="email" name="email" class="form-control" placeholder="Enter Your Email" required>
							</div>
							<!-- <div class="form-group rounded p-4 opt-box">
								<label class="col-form-label pt-0">Enter OTP</label>
								<div class="form-row">
									<div class="col">
										<input class="form-control digits text-center opt-text" type="text" value="00" maxlength="2">
									</div>
									<div class="col">
										<input class="form-control digits text-center opt-text" type="text" value="00" maxlength="2">
									</div>
									<div class="col">
										<input class="form-control digits text-center opt-text" type="text" value="00" maxlength="2">
									</div>
								</div>
							</div>
							<h6 class="f-14 mt-4 mb-3">CREATE YOUR PASSWORD</h6>
							<div class="form-group">
								<label class="col-form-label">New Password</label>
								<input class="form-control" type="password">
							</div>
							<div class="form-group">
								<label class="col-form-label">Retype Password</label>
								<input class="form-control" type="password">
							</div> -->
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary submit px-3">Save Change</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-50"></div>
								<!-- <div class="w-50 text-md-right">
									<a href="" style="color: #fff">Forgot Password ?</a>
								</div> -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%
String sb = String.valueOf(request.getAttribute(MENU));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- General CSS Files -->

<!-- Font Awesome-->
<link rel="stylesheet" type="text/css" href="/assets/css/fontawesome.css">
<!-- ico-font-->

<link rel="stylesheet" href="/assetsChangePass/css/bootstrap.min.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/media.css">
<link rel="stylesheet" href="/assetsChangePass/fonts">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/border-radius.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/reset-text.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/screen-reader.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/text-hide.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/mixins/visibility.css">
<link rel="stylesheet" href="/assetsChangePass/bootstrap/utilities/stretched-link.css">
<link rel="stylesheet" href="/assetsChangePass/css/style.css">

<style>
body {
	background-image: url("/assetsChangePass/images/bgRegister.jpg");
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.invalid-feedback {
	display: block
}
</style>
<title>HOPE ONLINE -- Đăng kí</title>
</head>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 text-center">
					<h2 class="heading-section">Đăng kí Hope Online</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center"></h3>
						<form:form class="theme-form signin-form ${(error || isExistUsername || isExistEmail) ? 'was-validated' : ''}" novalidate="novalidate" modelAttribute="register" method="post" enctype="multipart/form-data">
							<div class="card-body">
								<c:if test="${message != null}">
									<div class="alert alert-success dark" role="alert">
										<p>${message}</p>
									</div>
								</c:if>
								<c:if test="${error != null}">
									<div class="alert alert-secondary dark" role="alert">
										<p>${error}</p>
									</div>
								</c:if>
								<div class="form-group row">
									<form:input path="name" class="form-control" required="required" placeholder="Họ và Tên" />
									<form:errors path="name" class="invalid-feedback" />

									<input name="image" class="form-control" type="hidden" id="avatar" src="/images/avatars/default.png">


								</div>

								<div class="form-group row">
									<form:input path="username" class="form-control" required="required" placeholder="Tên đăng nhập" minlength="5" maxlength="20" />
									<form:errors path="username" class="invalid-feedback" />
									<c:if test="${isExistUsername}">
										<div class="invalid-feedback">${errorUsername}</div>
									</c:if>
								</div>
								<div class="form-group row">
									<form:input type="email" path="email" class="form-control" placeholder="Email" required="required" />
									<form:errors path="email" class="invalid-feedback" />
									<c:if test="${isExistEmail}">
										<div class="invalid-feedback">${errorEmail}</div>
									</c:if>
								</div>
								<div class="form-group row" id="show_hide_password">
									<form:input path="password" class="form-control" required="required" placeholder="Mật khẩu" minlength="5" maxlength="20" />
									<a href="" style="position: absolute; top: 10px; right: 20px;">
										<i class="fa fa-eye-slash" aria-hidden="true"></i>
									</a>
									<form:errors path="password" class="invalid-feedback" />
								</div>
								<fieldset class="form-group row">
									<div class="col-sm-9">
										<div class="radio radio-primary ml-2">
											<form:radiobutton path="gender" value="0" class="form-check-input" />
											<label for="gender1">Female</label>
										</div>
										<div class="radio radio-primary ml-2">
											<form:radiobutton path="gender" value="1" class="form-check-input" />
											<label for="gender2">Male</label>
										</div>
										<form:errors path="gender" />
									</div>
								</fieldset>
								<div class="form-group row">
									<input type="text" name="birthday" id="birthday" class="form-control" pattern="/^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/" required="required" placeholder="dd/mm/yyyy" />
									<form:errors path="birthday" class="invalid-feedback" />
									<span id="error-birthday" class="invalid-feedback"> </span>
								</div>
								<div class="form-group row">
									<button type="submit" class="form-control btn btn-primary">Đăng ký</button>
								</div>
								<p class="text-center">
									Nếu bạn đã có tài khoản!!!
									<a href="/login"> Đăng nhập</a>
								</p>
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="/assetsChangePass/js/jquery.min.js"></script>
	<script src="/assetsChangePass/js/popper.js"></script>
	<script src="/assetsChangePass/js/bootstrap.min.js"></script>
	<script src="/assetsChangePass/js/main.js"></script>
	<script src="/assetsChangePass/js/jquery.datetextentry.js"></script>

	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.readAsDataURL(input.files[0]);

				reader.onload = function(e) {
					$('#avatar').attr('src', e.target.result);
				}

			}
		}

		$("#imgInp").change(function() {
			readURL(this);
		});

		$('#birthday')
				.keyup(
						function($event) {
							var value = $event.target.value;
							var dateformat = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
							if (value.match(dateformat)) {
								//Test which seperator is used '/' or '-'
								var opera1 = value.split('/');
								var opera2 = value.split('-');
								lopera1 = opera1.length;
								lopera2 = opera2.length;
								// Extract the string into month, date and year
								if (lopera1 > 1) {
									var pdate = value.split('/');
								} else if (lopera2 > 1) {
									var pdate = value.split('-');
								}
								var dd = parseInt(pdate[0]);
								var mm = parseInt(pdate[1]);
								var yy = parseInt(pdate[2]);
								// Create list of days of a month [assume there is no leap year by default]
								var ListofDays = [ 31, 28, 31, 30, 31, 30, 31,
										31, 30, 31, 30, 31 ];
								if (mm == 1 || mm > 2) {
									if (dd > ListofDays[mm - 1]) {
										$('#error-birthday')
												.html(
														'Không có ngày '
																+ dd
																+ ' trong tháng '
																+ mm)
										return false;
									}
								}
								if (mm == 2) {
									var lyear = false;
									if ((!(yy % 4) && yy % 100) || !(yy % 400)) {
										lyear = true;
									}
									if ((lyear == false) && (dd >= 29)) {
										$('#error-birthday').html(
												'Tháng 2 không có ngày 29')
										return false;
									}
									if ((lyear == true) && (dd > 29)) {
										$('#error-birthday').html(
												'Tháng 2 không có ngày 29')
										return false;
									}
								}
								$('#error-birthday').html('');
							} else {
								$('#error-birthday')
										.html(
												'Định dạng không hợp lệ dd/mm/yyyy')
								return false;
							}
						})

		$(document)
				.ready(
						function() {

							$("#show_hide_password a")
									.on(
											'click',
											function(event) {
												event.preventDefault();
												if ($(
														'#show_hide_password input')
														.attr("type") == "text") {
													$(
															'#show_hide_password input')
															.attr('type',
																	'password');
													$('#show_hide_password i')
															.addClass(
																	"fa-eye-slash");
													$('#show_hide_password i')
															.removeClass(
																	"fa-eye");
												} else if ($(
														'#show_hide_password input')
														.attr("type") == "password") {
													$(
															'#show_hide_password input')
															.attr('type',
																	'text');
													$('#show_hide_password i')
															.removeClass(
																	"fa-eye-slash");
													$('#show_hide_password i')
															.addClass("fa-eye");
												}
											});
						});
	</script>
</body>
</html>
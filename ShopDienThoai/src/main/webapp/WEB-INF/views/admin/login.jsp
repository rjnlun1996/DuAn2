<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Creative admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords" content="admin template, Creative admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
<title>HOPE - LOGIN ADMIN</title>

<!-- Google font-->
<link href="/css.css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="/css-1.css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="/css-2.css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Font Awesome-->
<link rel="stylesheet" type="text/css" href="/assets/css/fontawesome.css">
<!-- ico-font-->
<link rel="stylesheet" type="text/css" href="/assets/css/icofont.css">
<!-- Themify icon-->
<link rel="stylesheet" type="text/css" href="/assets/css/themify.css">
<!-- Flag icon-->
<link rel="stylesheet" type="text/css" href="/assets/css/flag-icon.css">
<!-- Feather icon-->
<link rel="stylesheet" type="text/css" href="/assets/css/feather-icon.css">
<!-- Plugins css start-->
<!-- Plugins css Ends-->
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">
</head>

<body>
	<!-- Loader starts-->
	<div class="loader-wrapper">
		<div class="loader loader-7">
			<div class="line line1"></div>
			<div class="line line2"></div>
			<div class="line line3"></div>
		</div>
	</div>
	<!-- Loader ends-->
	<!-- page-wrapper Start-->
	<div class="page-wrapper">
		<div class="container-fluid p-0">
			<!-- login page with video background start-->
			<div class="auth-bg-video">
				<video id="bgvid" poster="/assets/images/other-images/coming-soon-bg.jpg" playsinline="" autoplay="" muted="" loop="">
					<source src="/assets/video/auth-bg.mp4" type="video/mp4">
				</video>
				<div class="authentication-box">
					<div class="mt-4">
						<div class="card-body">
							<div class="cont text-center">
								<div>
									<form class="theme-form" method="post">
										<h4>LOGIN</h4>
										<br>
										<c:if test="${not empty message}">
											<div class="alert alert-${status}" style="color: red">${message}</div>
										</c:if>
										<br />
										<div class="form-group">
											<label for="username" class="col-form-label pt-0">Username or Email</label>
											<input id="username" class="form-control" type="text" name="username" required="">
										</div>
										<div class="form-group">
											<label for="password" class="col-form-label">Password</label>
											<input id="password" class="form-control" name="password" type="password" required="">
										</div>
										<div class="checkbox p-0">
											<input id="checkbox1" type="checkbox">
											<label for="checkbox1">Remember me</label>
										</div>
										<div class="form-group form-row mt-3 mb-0">
											<button class="btn btn-primary btn-block" type="submit">LOGIN</button>
										</div>
										<div class="login-divider"></div>
										<div class="social mt-3">
											<div class="form-row btn-showcase">
												<div class="col-md-4 col-sm-6">
													<button class="btn social-btn btn-fb">Facebook</button>
												</div>
												<div class="col-md-4 col-sm-6">
													<button class="btn social-btn btn-twitter">Twitter</button>
												</div>
												<div class="col-md-4 col-sm-6">
													<button class="btn social-btn btn-google">Google +</button>
												</div>
											</div>
										</div>
									</form>
								</div>
								<div class="sub-cont">
									<div class="img">
										<div class="img__text m--up">
											<h2>New User?</h2>
											<p>Sign up and discover great amount of new opportunities!</p>
										</div>
										<div class="img__text m--in">
											<h2>One of us?</h2>
											<p>If you already has an account, just sign in. We've missed you!</p>
										</div>
										<div class="img__btn">
											<span class="m--up">Sign up</span>
											<span class="m--in">Sign in</span>
										</div>
									</div>
									<div>
										<form class="theme-form">
											<h4 class="text-center">NEW USER</h4>
											<h6 class="text-center">Enter your Username and Password For Signup</h6>
											<div class="form-row">
												<div class="col-md-12">
													<div class="form-group">
														<input class="form-control" type="text" placeholder="First Name">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input class="form-control" type="text" placeholder="Last Name">
													</div>
												</div>
											</div>
											<div class="form-group">
												<input class="form-control" type="text" placeholder="Username">
											</div>
											<div class="form-group">
												<input class="form-control" type="password" placeholder="Password">
											</div>
											<div class="form-row">
												<div class="col-sm-4">
													<button class="btn btn-primary" type="submit">Sign Up</button>
												</div>
												<div class="col-sm-8">
													<div class="text-left mt-2 m-l-20">
														Are you already user?  
														<a class="btn-link text-capitalize" href="login.html">Login</a>
													</div>
												</div>
											</div>
											<div class="form-divider"></div>
											<div class="social mt-3">
												<div class="form-row btn-showcase">
													<div class="col-sm-4">
														<button class="btn social-btn btn-fb">Facebook</button>
													</div>
													<div class="col-sm-4">
														<button class="btn social-btn btn-twitter">Twitter</button>
													</div>
													<div class="col-sm-4">
														<button class="btn social-btn btn-google">Google +</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- login page with video background end-->
		</div>
	</div>
	<!-- latest jquery-->
	<script src="/assets/js/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap js-->
	<script src="/assets/js/bootstrap/popper.min.js"></script>
	<script src="/assets/js/bootstrap/bootstrap.js"></script>
	<!-- feather icon js-->
	<script src="/assets/js/icons/feather-icon/feather.min.js"></script>
	<script src="/assets/js/icons/feather-icon/feather-icon.js"></script>
	<!-- Sidebar jquery-->
	<script src="/assets/js/sidebar-menu.js"></script>
	<script src="/assets/js/config.js"></script>
	<!-- Plugins JS start-->
	<script src="/assets/js/login.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
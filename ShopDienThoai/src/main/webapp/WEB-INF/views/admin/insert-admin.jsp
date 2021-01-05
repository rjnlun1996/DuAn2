<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="static com.hitech.utils.ViewUtils.*" %>
<% String sb = String.valueOf(request.getAttribute(MENU)); %>

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
<title>HOPE - INSERT ADMIN</title>
<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
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
<link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
<!-- Plugins css Ends-->
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">
<style>
	.invalid-feedback{
		display: block;
	}
</style>
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

		<!-- Page Header Start-->
		<jsp:include page="layouts/header.jsp"></jsp:include>
		<!-- Page Header End-->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">

			<!-- Left and Right Sidebar Start-->
			<jsp:include page="layouts/sidebar.jsp"></jsp:include>
			<!-- Left and Right Sidebar Ends-->
			<div class="page-body">
				<div class="container-fluid">
					<div class="page-header">
						<div class="row">
							<div class="col-lg-6">
								<h3>FORM INSERT ACCOUNT</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item">
										<a href="<%=URL_ADMIN_HOME %>">Home</a>
									</li>

								</ol>
							</div>
							<div class="col-lg-6">
								<!-- Bookmark Start-->
								<div class="bookmark pull-right">
									<ul>
										<li>
											<a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Tables">
												<i data-feather="inbox"></i>
											</a>
										</li>
										<li>
											<a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Chat">
												<i data-feather="message-square"></i>
											</a>
										</li>
										<li>
											<a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Icons">
												<i data-feather="command"></i>
											</a>
										</li>
										<li>
											<a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Learning">
												<i data-feather="layers"></i>
											</a>
										</li>
										<li>
											<a href="#">
												<i class="bookmark-search" data-feather="star"></i>
											</a>
											<form class="form-inline search-form">
												<div class="form-group form-control-search">
													<input type="text" placeholder="Search..">
												</div>
											</form>
										</li>
									</ul>
								</div>
								<!-- Bookmark Ends-->
							</div>
						</div>
					</div>
				</div>
				<!-- Container-fluid starts-->
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12 col-xl-12">
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>INSERT ADMIN</h5>
										</div>
										<form:form class="needs-validation" method="post" novalidate modelAttribute="account" >
											<div class="card-body datetime-picker">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="name">Name</label>
													<div class="col-sm-9">
														<form:input path="name" class="form-control" required="" />
														<form:errors path="name" class="invalid-feedback"/> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="username">Username</label>
													<div class="col-sm-9">
														<form:input path="username" class="form-control"  required="" />
														<form:errors path="username" /> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="">Email</label>
													<div class="col-sm-9">
														<form:input path="email" class="form-control" />
														<form:errors path="email" /> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="">Password</label>
													<div class="col-sm-9">
														<form:input path="password" class="form-control" />
														<form:errors path="password" /> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">Birthday</label>
													<div class="col-sm-5">
														<div class="input-group date" id="dt-date" data-target-input="nearest">
															<form:input path="birthday" class="form-control datetimepicker-input digits" disabled="disabled" data-target="#dt-date"/>
															<div class="input-group-append" data-target="#dt-date" data-toggle="datetimepicker">
																<div class="input-group-text">
																	<i class="fa fa-calendar"></i>
																</div>
															</div>
														</div>
														<form:errors path="birthday" /> 
													</div>
												</div>
												<fieldset class="form-group row">
													<label class="col-form-label col-sm-3">Gender</label>
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
													<label class="col-sm-3 col-form-label" for="">Address</label>
													<div class="col-sm-9">
														<form:input path="address" class="form-control" />
														<form:errors path="address" /> 
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="">Phone</label>
													<div class="col-sm-9">
														<form:input path="phone" class="form-control" />
														<form:errors path="phone" /> 
													</div>
												</div>
												<fieldset class="form-group">
													<div class="row">
														<label class="col-form-label col-sm-3 pt-0">IsAdmin</label>
														<div class="col-sm-9">
															<div class="radio radio-primary">
																<form:radiobutton path="admin" value="0" class="form-check-input" />
																<label for="admin1">Customer</label>
															</div>
															<div class="radio radio-primary">
																<form:radiobutton path="admin" value="1" class="form-check-input" />
																<label for="admin2">Admin</label>
															</div>
															<form:errors path="admin" /> 
														</div>
													</div>
												</fieldset>

												<!-- <form class="theme-form">
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="name">Name</label>
													<div class="col-sm-9">
														<input class="form-control" id="name" type="text" placeholder="Name">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="username">Username</label>
													<div class="col-sm-9">
														<input class="form-control" id="username" type="text" placeholder="Username">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="email">Email</label>
													<div class="col-sm-9">
														<input class="form-control" id="email" type="email" placeholder="Email">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="password">Password</label>
													<div class="col-sm-9">
														<input class="form-control" id="password" type="password" placeholder="Password">
													</div>
												</div>
												<fieldset class="form-group">
													<div class="row">
														<label class="col-form-label col-sm-3 pt-0">Gender</label>
														<div class="col-sm-9">
															<div class="radio radio-primary">
																<input id="radio11" type="radio" name="gender" value="Gender">
																<label for="radio11">Male</label>
															</div>
															<div class="radio radio-primary">
																<input id="radio22" type="radio" name="gender" value="Gender">
																<label for="radio22">Female</label>
															</div>
															
														</div>
													</div>
												</fieldset>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="birthday">Birthday</label>
													<div class="col-sm-9">
														<input class="form-control" id="birthday" type="text" placeholder="Birthday">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="address">Address</label>
													<div class="col-sm-9">
														<input class="form-control" id="address" type="text" placeholder="Address">
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="phone">Phone</label>
													<div class="col-sm-9">
														<input class="form-control" id="phone" type="text" placeholder="Phone">
													</div>
												</div>
												<fieldset class="form-group">
													<div class="row">
														<label class="col-form-label col-sm-3 pt-0">IsAdmin</label>
														<div class="col-sm-9">
															<div class="radio radio-primary">
																<input id="radio11" type="radio" name="isAdmin" value="isAdmin">
																<label for="radio11">Customer</label>
															</div>
															<div class="radio radio-primary">
																<input id="radio22" type="radio" name="isAdmin" value="isAdmin">
																<label for="radio22">Admin</label>
															</div>
															
														</div>
													</div>
												</fieldset>
												
											</form> -->
											</div>
											<div class="card-footer">
												<button class="btn btn-primary" type="submit">Create</button>
												<button class="btn btn-secondary" type="reset">Cancel</button>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- footer start-->
			<jsp:include page="layouts/footer.jsp"></jsp:include>
			<!-- footer end-->

		</div>
	</div>

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

	<script src="/assets/js/datepicker/date-time-picker/moment.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/tempusdominus-bootstrap-4.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/datetimepicker.custom.js"></script>
	
	
    <script src="/assets/js/datepicker/date-picker/datepicker.js"></script>
    <script src="/assets/js/datepicker/date-picker/datepicker.en.js"></script>
    <script src="/assets/js/datepicker/date-picker/datepicker.custom.js"></script>
	
	<!-- Plugins JS Start-->
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/form-validation-custom.js"></script>
	<script src="/assets/js/tooltip-init.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
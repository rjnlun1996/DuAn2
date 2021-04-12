<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%
String sb = String.valueOf(request.getAttribute(MENU));
%>

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
<title>HopeOnline -- View Customer Detail</title>
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
<link rel="stylesheet" type="text/css" href="/assets/css/feather-icon.css">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="/assets/css/prism.css">
<!-- Plugins css Ends-->
<link rel="stylesheet" type="text/css" href="/assets/css/sweetalert2.css">
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

		<!-- Page Header Start-->
		<jsp:include page="layouts/header.jsp"></jsp:include>
		<!-- Page Header End-->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">

			<!-- Left and Right Sidebar Start-->
			<jsp:include page="layouts/sidebar.jsp"></jsp:include>
			<!-- Left and Right Sidebar Ends-->

			<div class="page-body">
				<form:form class="theme-form" novalidate="novalidate" modelAttribute="customer" method="post" enctype="multipart/form-data">
					<!-- Container-fluid starts-->
					<div class="container-fluid">
						<div class="user-profile">
							<div class="row">
								<!-- user profile first-style start-->

								<div class="col-sm-12">
									<div class="card hovercard text-center">
										<div class="cardheader"></div>
										<div class="user-image">
											<div class="avatar">
												<img alt="" src="/images/avatars/${customer.photo}">
											</div>
											<div class="icon-wrapper">
												<i class="icofont icofont-pencil-alt-5"></i>
											</div>
										</div>
										<div class="info">
											<div class="row">
												<div class="col-sm-6 col-lg-4 order-sm-1 order-xl-0">
													<div class="row">
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-calendar"></i>
																	   Username
																</h6>
																<span>${customer.username}</span>
															</div>
														</div>
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-envelope"></i>
																	   Email
																</h6>
																<span>${customer.email}</span>
															</div>
														</div>
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-user-circle-o"></i>
																	   Gender
																</h6>

																<c:if test="${customer.gender}">
																	<span>Male</span>
																</c:if>
																<c:if test="${!customer.gender}">
																	<span>Female</span>
																</c:if>

															</div>
														</div>


													</div>
												</div>
												<div class="col-sm-12 col-lg-4 order-sm-0 order-xl-1">
													<div class="user-designation">
														<div class="title">
															<a target="_blank" href="">${customer.name}</a>
														</div>
														<div class="desc mt-2">
															<c:if test="${customer.level == 1}">
																<span>MANAGER</span>
															</c:if>
															<c:if test="${customer.level == 2}">
																<span>CUSTOMER</span>
															</c:if>
														</div>
													</div>
												</div>
												<div class="col-sm-6 col-lg-4 order-sm-2 order-xl-2">
													<div class="row">
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-calendar"></i>
																	   Birthday
																</h6>
																<span>${customer.birthday}</span>
															</div>
														</div>
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-phone"></i>
																	   Phone
																</h6>
																<span>${customer.phone}</span>
															</div>
														</div>
														<div class="col-md-4">
															<div class="ttl-info text-left">
																<h6>
																	<i class="fa fa-location-arrow"></i>
																	  Address
																</h6>
																<span>${customer.address}</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<hr>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</form:form>
				<!-- Container-fluid Ends-->
			</div>

			<!-- footer start-->
			<jsp:include page="layouts/footer.jsp"></jsp:include>
			<!-- footer end-->

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

	<script src="/assets/js/dashboard/default.js"></script>
	<script src="/assets/js/notify/index.js"></script>
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/tooltip-init.js"></script>
	<script src="/assets/js/animation/wow/wow.min.js"></script>
	<script src="/assets/js/sweet-alert/sweetalert.min.js"></script>
	<!-- Plugins JS Ends-->
	<script src="/assets/js/sweet-alert/sweetalert.min.js"></script>
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/moment.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/tempusdominus-bootstrap-4.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/datetimepicker.custom.js"></script>


	<script src="/assets/js/datepicker/date-picker/datepicker.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.en.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.custom.js"></script>

	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
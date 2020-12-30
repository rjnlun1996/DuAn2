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
<title>HOPE ONLINE</title>
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
<link rel="stylesheet" type="text/css" href="/assets/css/chartist.css">
<link rel="stylesheet" type="text/css" href="/assets/css/prism.css">
<link rel="stylesheet" type="text/css" href="/assets/css/vector-map.css">
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

		<!-- Page Header Start-->
		<jsp:include page="layouts/header.jsp"></jsp:include>
		<!-- Page Header End-->

		<!-- Page Body Start-->
		<div class="page-body-wrapper">

			<!-- Left and Right Sidebar Start-->
			<jsp:include page="layouts/sidebar.jsp"></jsp:include>
			<!-- Left and Right Sidebar Ends-->

			<div class="page-body">

				<!-- Container-fluid starts-->
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header">
									<h5>List Admin</h5>
									<div class="card-header-right">
										<ul class="list-unstyled card-option">
											<li>
												<i class="icofont icofont-double-left"></i>
											</li>
											<li>
												<i class="view-html fa fa-code"></i>
											</li>
											<li>
												<i class="icofont icofont-maximize full-card"></i>
											</li>
											<li>
												<i class="icofont icofont-minus minimize-card"></i>
											</li>
											<li>
												<i class="icofont icofont-refresh reload-card"></i>
											</li>
											<li>
												<i class="icofont icofont-error close-card"></i>
											</li>
										</ul>
									</div>
								</div>
								<div class="card-body p-0">
									<div class="sales-product-table table-responsive">
										<table class="table table-bordernone">
											<thead>
												<tr>
													<th scope="col">No</th>
													<th scope="col">Name</th>
													<th scope="col">Username</th>
													<th scope="col">Gender</th>
													<th scope="col">Email</th>
													<th scope="col">Phone</th>
													<th scope="col"></th>
												</tr>
											</thead>
											<tbody>
												<c:set var="no" value="1"></c:set>
												<c:forEach var="acc" items="${list}">
													<tr>
														<td>${no}</td>
														<td>
															<div class="d-inline-block align-middle">
																<img class="img-radius img-30 align-top m-r-15 rounded-circle" src="/assets/images/avata/${acc.photo}" alt="">
																<div class="d-inline-block">
																	<h6 class="f-w-600">${acc.name}</h6>
																</div>
															</div>
														</td>
														<td>
															<span>${acc.username}</span>
														</td>
														<td>
															<c:if test="${acc.gender}">
																<span class="badge badge-pill pill-badge-primary">Male</span>
															</c:if>
															<c:if test="${!acc.gender}">
																<span class="badge badge-pill pill-badge-success">Female</span>
															</c:if>
														</td>
														<td>
															<span>${acc.email}</span>
														</td>
														<td>
															<span>${acc.phone}</span>
														</td>
														<td>
															<button class="btn btn-pill btn-outline-primary btn-sm" type="button">View</button>
															<button class="btn btn-pill btn-outline-success btn-sm" type="button">Edit</button>
															<button class="btn btn-pill btn-outline-danger btn-sm" type="button">Delete</button>
														</td>
													</tr>
													<c:set var="no" value="${no + 1}"></c:set>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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
	<script src="/assets/js/chart/chartjs/chart.min.js"></script>
	<script src="/assets/js/chart/chartist/chartist.js"></script>
	<script src="/assets/js/chart/chartist/chartist-plugin-tooltip.js"></script>
	<script src="/assets/js/chart/knob/knob.min.js"></script>
	<script src="/assets/js/chart/knob/knob-chart.js"></script>
	<script src="/assets/js/prism/prism.min.js"></script>
	<script src="/assets/js/clipboard/clipboard.min.js"></script>
	<script src="/assets/js/counter/jquery.waypoints.min.js"></script>
	<script src="/assets/js/counter/jquery.counterup.min.js"></script>
	<script src="/assets/js/counter/counter-custom.js"></script>
	<script src="/assets/js/custom-card/custom-card.js"></script>
	<script src="/assets/js/notify/bootstrap-notify.min.js"></script>
	<script src="/assets/js/vector-map/jquery-jvectormap-2.0.2.min.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-world-mill-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-us-aea-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-uk-mill-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-au-mill.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-chicago-mill-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-in-mill.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-asia-mill.js"></script>
	<script src="/assets/js/dashboard/default.js"></script>
	<script src="/assets/js/notify/index.js"></script>
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/tooltip-init.js"></script>
	<script src="/assets/js/animation/wow/wow.min.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
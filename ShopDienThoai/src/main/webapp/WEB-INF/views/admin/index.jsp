<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
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
<link rel="shortcut icon" href="/images/favicon.ico"
	type="image/x-icon">
<title>HopeOnline</title>
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
				<div class="container-fluid">
					<div class="page-header">
						<div class="row">
							<div class="col-lg-6">
								<h3>Default</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item">Dashboard</li>
									<li class="breadcrumb-item active">Overview</li>
								</ol>
							</div>
							<div class="col-lg-6">
								<!-- Bookmark Start-->
								<div class="bookmark pull-right">
									<ul>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Tables"><i data-feather="inbox"></i></a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Chat"><i data-feather="message-square"></i></a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Icons"><i data-feather="command"></i></a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Learning"><i data-feather="layers"></i></a></li>
										<li><a href="#"><i class="bookmark-search" data-feather="star"></i></a>
											<form class="form-inline search-form">
												<div class="form-group form-control-search">
													<input type="text" placeholder="Search..">
												</div>
											</form></li>
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
						<div class="col-lg-12 xl-100">
							<div class="row">
								<div class="col-xl-3 xl-50 col-md-6 box-col-6">
									<div class="card">
										<div class="card-body tag-card">
											<div class="progressbar-widgets">
												<div class="media media-widgets">
													<div class="media-body">
														<p class="mb-0">Total Revenue</p>
														<h3 class="mt-0 mb-0 f-w-600">
															<span class="counter"><%-- <fmt:formatNumber type="currency" value="${total}" /> --%>${total}</span>
														</h3>
													</div>
													<span class="badge flat-badge-secondary">3.56%<i class="fa fa-caret-up"></i></span>
												</div>
												<div class="progress sm-progress-bar progress-animate">
													<div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
														<span class="font-secondary">75%</span><span class="animate-circle"></span>
													</div>
												</div>
												<span class="tag-content-secondary tag-hover-effect"><i data-feather="trending-up"></i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 xl-50 col-md-6 box-col-6">
									<div class="card">
										<div class="card-body tag-card">
											<div class="progressbar-widgets">
												<div class="media media-widgets">
													<div class="media-body">
														<p class="mb-0">Total Products Sold</p>
														<h3 class="mt-0 mb-0 f-w-600">
															<i data-feather="dollar-sign"></i><span class="counter">${prodSold}</span><span><i class="font-success" data-feather="trending-up"></i></span>
														</h3>
													</div>
													<span class="badge flat-badge-success">3.56%<i class="fa fa-caret-up"></i></span>
												</div>
												<div class="progress sm-progress-bar progress-animate">
													<div class="progress-gradient-success" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
														<span class="font-success">80%</span><span class="animate-circle"></span>
													</div>
												</div>
												<span class="tag-content-success tag-hover-effect"><i data-feather="trending-up"> </i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 xl-50 col-md-6 box-col-6">
									<div class="card bg-primary">
										<div class="card-body tag-card">
											<div class="progressbar-widgets">
												<div class="media media-widgets">
													<div class="media-body">
														<p class="mb-0 font-light">Total Pending Orders</p>
														<h3 class="mt-0 mb-0 f-w-600">
															<span class="counter">${totalProcessingOrder}</span><span><i class="font-light" data-feather="trending-up"></i></span>
														</h3>
													</div>
													<span class="badge flat-badge-light font-primary">01.36<i class="fa fa-caret-up"></i></span>
												</div>
												<div class="progress sm-progress-bar progress-animate">
													<div class="progress-gradient-light" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
														<span class="animate-circle"></span>
													</div>
												</div>
												<span class="tag-content-light tag-light tag-hover-effect"><i data-feather="trending-up"> </i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-3 xl-50 col-md-6 box-col-6">
									<div class="card">
										<div class="card-body tag-card">
											<div class="progressbar-widgets">
												<div class="media media-widgets">
													<div class="media-body">
														<p class="mb-0">Total Customers</p>
														<h3 class="mt-0 mb-0 f-w-600">
															<span class="counter">${totalCustomer}</span><span><i class="font-primary" data-feather="trending-up"></i></span>
														</h3>
													</div>
													<span class="badge flat-badge-primary">6.23%<i class="fa fa-caret-up"></i></span>
												</div>
												<div class="progress sm-progress-bar progress-animate">
													<div class="progress-gradient-primary" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
														<span class="animate-circle"></span>
													</div>
												</div>
												<span class="tag-content-primary tag-hover-effect"><i data-feather="trending-up"> </i></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12 box-col-12">
							<div class="card">
								<div class="card-header">
									<h5>Revenue Chart</h5>
								</div>
								<div class="card-body">
									<div id="column-chart"></div>
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
	 <script src="/assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="/assets/js/chat-menu.js"></script>
    <script src="/assets/js/tooltip-init.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<script>
		$(document).ready(function(){
			var options3 = {
				    chart: {
				        height: 350,
				        type: 'bar',
				    },
				    plotOptions: {
				        bar: {
				            horizontal: false,
				            endingShape: 'rounded',
				            columnWidth: '55%',
				        },
				    },
				    dataLabels: {
				        enabled: false
				    },
				    stroke: {
				        show: true,
				        width: 2,
				        colors: ['transparent']
				    },
				    series: [{
				        name: 'Revenue',
				        data: ${values}
				    }],
				    xaxis: {
				        categories: ${years},
				    },
				    yaxis: {
				        title: {
				            text: '$ (thousands)'
				        }
				    },
				    fill: {
				        opacity: 1

				    },
				    tooltip: {
				        y: {
				            formatter: function (val) {
				                return "$ " + val + " thousands"
				            }
				        }
				    },
				    colors:['#158df7']
				}

				var chart3 = new ApexCharts(
				    document.querySelector("#column-chart"),
				    options3
				);
			
			chart3.render();
		})
	</script>
</body>
</html>
<!-- <div class="welcome-popup modal fade" id="loadModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<button class="close" type="button" data-dismiss="modal"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<div class="modal-body">
				<div class="modal-header"></div>
				<div class="contain p-50">
					<div class="text-center">
						<h3>Welcome to creative admin</h3>
						<p>start your project with developer friendly admin</p>
						<button class="btn btn-primary btn-lg txt-white" type="button"
							data-dismiss="modal" aria-label="Close">Get Started</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> -->
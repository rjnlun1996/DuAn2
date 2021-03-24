<%@page import="com.hitech.entities.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>HOPE - TABLE PRODUCER</title>
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

			<!-- Page Body Start-->
			<div class="page-body">
				<div class="page-body">

					<!-- Container-fluid starts-->
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-12">
								<div class="card">
									<div class="card-header">
										<h5>List Producer</h5>
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
												<thead>
													<tr class="text-center">
														<th scope="col">ID</th>
														<th scope="col">Logo</th>
														<th scope="col">Name </th>
														<th scope="col">Address</th>
														<th scope="col">Email</th>
														
														<th></th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${listProducer}" var="producer">
														<tr>
															<c:set var="count" value="${count+1 }" />
															<td>${count}</td>
															<td style="text-align: center">
																<img class="img-radius img-80 align-top m-r-15" src="/images/producer/${producer.logo}" alt="loading">
															</td>
															<td>${producer.name}</td>
															<td>${producer.address}</td>
															<td>${producer.email}</td>
															<td>
																
																<a class="btn btn-pill btn-outline-success btn-sm" href="<%=URL_ADMIN_PRODUCER_UPDATE%>?id=${producer.id}"">Edit</a>
																<button class="btn btn-pill btn-outline-danger btn-sm delete-item" data-id="${producer.id}" data-name="${producer.name}">Delete</button>

															</td>
														</tr>
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
	<script src="/assets/js/sweet-alert/sweetalert.min.js"></script>
	<script>
	 $(document).ready(function(){
			$('.delete-item').click(function(){
				var id = $(this).data('id');
				var name = $(this).data('name');
				swal({
				  title: "Thông báo?",
				  text: "Bạn có chắc chắn xóa danh mục " + name  + " không?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if(willDelete == true){
					  $.ajax({
						  url: "<%=URL_ADMIN_PRODUCER_DELETE%>",
						  method: "POST",
						  data: {
							  id: id
						  },
						  success: function(data){
							  if(data == true){
									swal("Thông báo!", "Bạn đã xóa thành công!", "success").then(() => location.reload());
								}else{
									swal("Thông báo!", "Không thể xóa người dùng này!", "danger");
								}
						  },
	 					  error: function(data){
							  
						  },
					  });
				  }
				});
				//promise
			})
		}); 
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

<%@page import="com.hitech.entities.Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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
<link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
<title>HOPE - ORDER DETAIL</title>
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
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">

<link rel="stylesheet" type="text/css" href="/css/timeline.css">
<style type="text/css">
table tbody td {
	padding: 20px !important;
}

table thead {
	background: #f3eded;
}

.bg-header {
	background: #f3eded !important;
	border: none !important;
}

.bg-header .card-header {
	background: #f3eded !important;
	font-weight: 700;
	font-size: 14px !important;
}

.bg-header .card-body {
	min-height: 160px !important;
	background: #fff !important;
	padding: 10px 15px;
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

			<!-- Page Body Start-->
			<!-- Left and Right Sidebar Ends-->
			<div class="page-body">
				<div class="container-fluid">
					<div class="page-header">
						<div class="row">
							<div class="col-lg-6">
								<h3>Order Detail</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item">
										<a href="/ho-admin/">Home</a>
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
				<div class="page-body mt-2">
					<!-- Container-fluid starts-->
					<div class="container-fluid">
						<div class="row">
							<div class="col-xl-4">
								<div class="card bg-header">
									<div class="card-header pt-3 pb-3">Thông tin nhận hàng</div>
									<div class="card-body">
										<p>
											<b>Tên người nhận</b>
											: ${order.receiver }
										</p>
										<p>
											<b>Địa chỉ</b>
											: ${order.address }
										</p>
										<p>
											<b>Số điện thoại</b>
											: ${order.phone }
										</p>
									</div>
								</div>
							</div>
							<div class="col-xl-4">
								<div class="card bg-header">
									<div class="card-header  pt-3 pb-3">Ngày Giao - Nhận</div>
									<div class="card-body">
										<p>
											<b>Ngày đặt hàng</b>
											:
											<fmt:formatDate pattern="dd-MM-yyyy" value="${order.createdAt }" />
										</p>
										<p>
											<b>Ngày nhận hàng</b>
											:
											<fmt:formatDate pattern="dd-MM-yyyy" value="${order.createdAt }" />
										</p>
									</div>
								</div>
							</div>
							<div class="col-xl-4">
								<div class="card bg-header">
									<div class="card-header  pt-3 pb-3">Ghi Chú</div>
									<div class="card-body">
										<c:if test="${!order.description.trim().equals('') }">
											<p>${order.description }</p>
										</c:if>
										<c:if test="${order.description.trim().equals('') }">
											<p style="color: red; font-weight: bold">Không có ghi chú</p>
										</c:if>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-12">
								<div class="card">
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
														<th scope="col">STT</th>
														<th scope="col">Sản phẩm</th>
														<th scope="col">Số lượng</th>
														<th scope="col">Đơn giá</th>
														<th>
															<a class="btn btn-pill btn-outline-primary btn-sm" href="<%=URL_ADMIN_ORDER_DETAIL_INSERT%>?orderId=${order.id}">ADD+</a>
														</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${listOrderDetail}" var="orderDetail">
														<tr>
															<c:set var="count" value="${count+1 }" />
															<td>${count}</td>
															<td>
																<img class="img-radius img-80 align-top m-r-15" src="/images/products/${orderDetail.product.photo}" alt="loading">
																${orderDetail.product.name}
															</td>
															<td>${orderDetail.quantity}</td>
															<td>${orderDetail.amount}</td>
															<td>
																<a class="btn btn-pill btn-outline-success btn-sm" href="<%=URL_ADMIN_ORDER_DETAIL_UPDATE%>?orderId=${order.id}&odId=${orderDetail.id}">Edit</a>
																<button class="btn btn-pill btn-outline-danger btn-sm delete-item" data-id="${orderDetail.id}">Delete</button>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h5>Trạng Thái Đơn hàng</h5>
									</div>
									<div class="card-body">
										<div class="timeline-small">
											<c:forEach items="${order.statusOrders }" var="statusOrder">
												<div class="media">
													<div class="timeline-round m-r-30 timeline-line-1 bg-success">
														<i data-feather="shopping-bag"></i>
													</div>
													<div class="media-body">
														<h6>
															${statusOrder.status.name}
															<span class="pull-right f-14">New</span>
														</h6>
														<p>${statusOrder.description}</p>
													</div>
												</div>
											</c:forEach>
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
		<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
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
				swal({
				  title: "Thông báo?",
				  text: "Bạn có chắc chắn muốn xóa không?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if(willDelete == true){
					  $.ajax({
						  url: "<%=URL_ADMIN_ORDER_DETAIL_DELETE%>",
						  method: "POST",
						  data: {
							  orderDetailId: id
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

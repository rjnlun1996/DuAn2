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
<title>HopeOnline -- ORDER DETAIL</title>
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

.bootstrap-touchspin button.btn {
	padding: 0.1px 5px !important;
	background-color: #17a2b8 !important;
	border-color: #17a2b8 !important;
}

.input-group>.form-control.touchspin {
	flex: 0.1 auto !important;
	text-align: center;
	padding: 12px 12px !important;
}

.dataTables_wrapper button {
	border-radius: 60px !important;
	font-size: 14px !important;
	padding: 0.375rem 1.75rem !important;
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
											<fmt:formatDate pattern="dd-MM-yyyy" value="${order.requireDate }" />
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
													<tr>
														<th scope="col">Id</th>
														<th scope="col">Product</th>
														<th scope="col">Quantity</th>
														<th scope="col">Total</th>
														<th scope="col">Discount</th>
														<th scope="col">Date</th>
														<th>
															<a class="btn btn-pill btn-outline-primary btn-sm ml-5 mb-0" href="<%=URL_ADMIN_ORDER_DETAIL_INSERT%>?orderId=${order.id}">ADD+</a>
														</th>
													</tr>
												</thead>
												<tbody>
													<c:set var="productTotal" value="0"></c:set>
													<c:set var="amountTotal" value="0"></c:set>
													<c:set var="discountPrice" value="0"></c:set>
													<c:forEach items="${orderDetails}" var="orderDetail">
														<c:set var="amount" value="${orderDetail.product.importPrice * orderDetail.quantity }"></c:set>
														<tr>
															<form action="<%= URL_ADMIN_ORDER_DETAIL_UPDATE%>?orderId=${order.id }" method="POST">
																<c:set value="${productTotal +  orderDetail.quantity}" var="productTotal"></c:set>
																<c:set value="${amountTotal +  amount}" var="amountTotal"></c:set>
																<c:set value="${discountPrice +  orderDetail.product.importPrice * orderDetail.discount.percents / 100 *  orderDetail.quantity}" var="discountPrice"></c:set>
																<td>${orderDetail.id}</td>
																<td>
																	<div class="d-flex">
																		<img class=" img-60 align-top m-r-15" src="/images/products/${orderDetail.product.category.producer.name.toLowerCase()}/${orderDetail.product.photo}" alt="loading">
																		<div class="d-flex flex-column justify-content-center">
																			<h6 class="f-w-600">${orderDetail.product.name}</h6>
																		</div>
																	</div>
																</td>
																<td class="bootstrap-touchspin" style="max-width: 150px">
																	<fieldset>
																		<div class="input-group text-center">
																			<input name="quantity" class="touchspin" type="text" value="${orderDetail.quantity}" min="1" max="99" readonly="readonly" />
																		</div>
																	</fieldset>
																</td>
																<td>
																	<span class="badge badge-primary">
																		<fmt:formatNumber type="number" maxFractionDigits="3" value="${amount}" />
																		VNĐ
																		<%-- <fmt:formatNumber type="number" maxFractionDigits="3" value="${orderDetail.amount}" />
																		VNĐ --%>
																	</span>
																</td>
																<td>${orderDetail.discount != null ? orderDetail.discount.percents : 0} %</td>
																<td><fmt:formatDate pattern="dd-MM-yyyy" value="${orderDetail.createdAt }" /></td>
																<td>
																	<input type="hidden" name="productId" value="${orderDetail.product.id }"/>
																	<button class="btn btn-pill btn-outline-success btn-sm" type="submit">Update</button>
																	<button class="btn btn-pill btn-outline-danger btn-sm delete-item" type="button" data-id="${orderDetail.id}">Delete</button>
																</td>
															</form>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="card">
									<div class="card-header">
										<h5>Trạng Thái Đơn hàng</h5>
									</div>
									<div class="card-body">
										<div class="timeline-small">
											<c:forEach items="${status }" var="statusOrder">
												<div class="media">
													<div class="timeline-round m-r-30 timeline-line-1 bg-${statusOrder.current ? 'success' : '' }" ${statusOrder.current ? '' : 'style="background: #919191"' }>
														<i data-feather="${statusOrder.current ? 'check-circle' : 'x-circle' }"></i>
													</div>
													<div class="media-body">
														<h6 class="f-12">
															${statusOrder.status.name}
															<span class="pull-right f-12">
																<fmt:formatDate pattern="dd-MM-yyyy" value="${statusOrder.createdAt }" />
															</span>
														</h6>
														<p class="f-12">${statusOrder.description}</p>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="card">
									<div class="card-header">
										<h5>Tổng Đơn Hàng</h5>
									</div>
									<div class="card-body p-0">
										<div class="sales-product-table table-responsive">
											<table class="table table-bordernone">
												<tbody>
													<tr>
														<td class="w-50 text-right">Number Products Total</td>
														<td>${productTotal }</td>
													</tr>
													<tr>
														<td class="w-50 text-right">Price Products Total</td>
														<td>
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calAmountTotal()}" />
															VNĐ
														</td>
													</tr>
													<tr>
														<td class="w-50 text-right">Total Discount</td>
														<td>
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calDiscountPrice()}" />
															VNĐ
														</td>
													</tr>
													<tr>
														<td class="w-50 text-right">Price Total</td>
														<td class="text-danger">
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calOrder()}" />
															VNĐ
														</td>
													</tr>
												</tbody>
											</table>
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


	<script src="/assets/js/touchspin/vendors.min.js"></script>
	<script src="/assets/js/touchspin/touchspin.js"></script>
	<script src="/assets/js/touchspin/input-groups.min.js"></script>
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
	 						 swal("Thông báo!", "Không thể xóa người dùng này!", "danger");
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
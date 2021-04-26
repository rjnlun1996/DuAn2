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
<link rel="shortcut icon" href="/assets/images/favicon.png" type="image/x-icon">
<title>HopeOnline -- REPORT</title>
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

<link rel="stylesheet" type="text/css" href="/assets/css/daterange-picker.css">
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
									<h5>Report</h5>
									<div class="card-header-right">
										<ul class="list-unstyled card-option">
											<li><i class="icofont icofont-double-left"></i></li>
											<li><i class="view-html fa fa-code"></i></li>
											<li><i class="icofont icofont-maximize full-card"></i></li>
											<li><i class="icofont icofont-minus minimize-card"></i></li>
											<li><i class="icofont icofont-refresh reload-card"></i></li>
											<li><i class="icofont icofont-error close-card"></i></li>
										</ul>
									</div>
								</div>
								<%-- <div class="card-body ">
									<div class="sales-product-table table-responsive">
										<table class="table table-bordernone" id="basic-1">
											<thead>
												<tr>
													<th scope="col">No</th>
													<th scope="col">Tháng</th>
													<th scope="col">Tổng Doanh Thu</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="count" value="0"></c:set>
												<c:forEach var="report" items="${reports}">
													<c:set var="count" value="${count + 1}"></c:set>
													<tr>
														<td>${count}</td>
														<td><span class="badge badge-danger f-13">${report.getMonthReport()} - ${report.getYearReport()}</span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div> --%>

								<div class="card-body  date-range-picker">
									<div class="sales-product-table table-responsive">

										<form action="">
											<table class="table table-bordernone">
												<thead>
													<tr>
														<th style="text-transform: uppercase;">Danh Mục</th>
														<th style="display: flex; align-items: center;">Thời Gian:
															<div class="input-group w-50 m-r-15 m-l-15">
																<div class="input-group-prepend">
																	<span class="input-group-text"><i class="icofont icofont-filter"></i></span>
																</div>
																<input class="form-control digits" type="text" name="time" id="reportrange" value="${times}">
															</div>
															<button class="btn btn-primary" type="submit" data-original-title="" title="">Lọc</button>
														</th>
														<th style="text-transform: uppercase;">Số liệu</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Tổng số <b style="text-transform: capitalize; font-weight: bold; color: blue;">sản phẩm đã bán</b></td>
														<td><div class="span badge badge-pill pill-badge-info f-12">Từ ${times}</div></td>
														<td><div class="span badge badge-pill pill-badge-${reports.getTotalQuantity() > 0 ? 'success' : 'warning' } f-12">${reports.getTotalQuantity() > 0 ? reports.getTotalQuantity() : '0'}</div> sản phẩm</td>
														<%-- <td><span class="badge badge-danger f-13"></span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td> --%>
													</tr>
													<tr>
														<td>Tổng số <b style="text-transform: capitalize; font-weight: bold; color: blue;">đơn hàng hoàn thành</b></td>
														<td><div class="span badge badge-pill pill-badge-info f-12">Từ ${times}</div></td>

														<td><div class="span badge badge-pill pill-badge-${reports.getTotalOrder() > 0 ? 'success' : 'warning' } f-12">${reports.getTotalOrder()}</div> đơn hàng</td>
														<%-- <td><span class="badge badge-danger f-13"></span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td> --%>
													</tr>
													<tr>
														<td>Tổng số <b style="text-transform: capitalize; font-weight: bold; color: red;">đơn hàng chưa hoàn thành</b></td>
														<td><div class="span badge badge-pill pill-badge-info f-12">Từ ${times}</td>

														<td><div class="span badge badge-pill pill-badge-${reports.getTotalPending() > 0 ? 'success' : 'warning' } f-12">${reports.getTotalPending()}</div> đơn hàng</td>
														<%-- <td><span class="badge badge-danger f-13"></span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td> --%>
													</tr>
													<tr>
														<td>Tổng số <b style="text-transform: capitalize; font-weight: bold; color: blue;">khách hàng mua hàng</b></td>
														<td><div class="span badge badge-pill pill-badge-info f-12">Từ ${times}</div></td>

														<td><div class="span badge badge-pill pill-badge-${reports.getTotalCustomer() > 0 ? 'success' : 'warning' } f-12">${reports.getTotalCustomer()}</div> khách hàng</td>
														<%-- <td><span class="badge badge-danger f-13"></span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td> --%>
													</tr>
													<tr>
														<td>Tổng doanh thu <b style="text-transform: capitalize; font-weight: bold; color: blue;">hệ thống</b></td>
														<td><div class="span badge badge-pill pill-badge-info f-12">Từ ${times}</div></td>

														<td><div class="span badge badge-pill pill-badge-danger f-12">
																<fmt:formatNumber type="number" maxFractionDigits="3" value="${reports.getTotalReport() > 0 ? reports.getTotalReport() : '0' }" />
																VNĐ
															</div></td>
														<%-- <td><span class="badge badge-danger f-13"></span></td>
														<td><span class="badge badge-primary f-13"><fmt:formatNumber type="number" maxFractionDigits="3" value="${report.getTotalReport()}" /> VNĐ</span></td> --%>
													</tr>
												</tbody>
											</table>

										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 xl-100 box-col-12">
							<div class="card">
								<div class="card-header">
									<h5>TOP SELLING PRODUCT</h5>
									<div class="card-header-right">
										<ul class="list-unstyled card-option">
											<li><i class="icofont icofont-double-left"></i></li>
											<li><i class="view-html fa fa-code"></i></li>
											<li><i class="icofont icofont-maximize full-card"></i></li>
											<li><i class="icofont icofont-minus minimize-card"></i></li>
											<li><i class="icofont icofont-refresh reload-card"></i></li>
											<li><i class="icofont icofont-error close-card"></i></li>
										</ul>
									</div>
								</div>
								<div class="card-body">
									<div class="user-status table-responsive">
										<table class="table table-bordernone">
											<thead>
												<tr>
													<th scope="col">Product</th>
													<th scope="col">Quantity</th>
													<th scope="col">Status</th>
													<th scope="col">Price</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${products.size() != 0 }">
													<c:forEach var="p" items="${products }">
														<tr>
															<td class="bd-t-none u-s-tb"><a target="_blank" href="/ho-admin/product/detail?id=${p.product.id}">
																	<div class="align-middle image-sm-size">
																		<img class="img-radius align-top m-r-15" src="/images/products/${p.product.category.producer.name.toLowerCase()}/${p.product.photo}" alt="" />
																		<div class="d-inline-block">
																			<h6 class="f-w-600">${p.product.name}</h6>
																		</div>
																	</div>
															</a></td>
															<td class="digits"><div class="span badge badge-pill pill-badge-success f-12">${p.quantity}</div></td>
															<td><span class="status-position font-info f-weight"><i class="fa fa-circle font-info m-r-15"> </i>Active</span></td>
															<td>
																<div class="span badge badge-pill pill-badge-secondary">
																	<fmt:formatNumber type="number" maxFractionDigits="3" value="${p.product.importPrice}" />
																	VNĐ
																</div>
															</td>
														</tr>
													</c:forEach>
												</c:if>
												<c:if test="${products.size() == 0 }">
													<tr>
														<td style="color: red; font-weight: bold; text-align: center;" colspan="4">Chưa có sản phẩm nào</td>
													</tr>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-6 xl-100 box-col-12">
							<div class="card">
								<div class="card-header">
									<h5>TOP CUSTOMER TRANSACTIONS</h5>
									<div class="card-header-right">
										<ul class="list-unstyled card-option">
											<li><i class="icofont icofont-double-left"></i></li>
											<li><i class="view-html fa fa-code"></i></li>
											<li><i class="icofont icofont-maximize full-card"></i></li>
											<li><i class="icofont icofont-minus minimize-card"></i></li>
											<li><i class="icofont icofont-refresh reload-card"></i></li>
											<li><i class="icofont icofont-error close-card"></i></li>
										</ul>
									</div>
								</div>
								<div class="card-body">
									<div class="user-status table-responsive">
										<table class="table table-bordernone">
											<thead>
												<tr>
													<th scope="col">Name</th>
													<th scope="col">Phone</th>
													<!-- <th scope="col">Email</th>  -->
													<th scope="col">Quantity Products</th>
													<th scope="col">Total Buy</th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${customers.size() != 0 }">
													<c:forEach var="cus" items="${customers}">
														<tr>
															<td class="bd-t-none u-s-tb"><a target="_blank" href="/ho-admin/customer/detail?id=${cus.account.username}">
																	<div class="align-middle image-sm-size">
																		<img class="img-radius align-top m-r-15 rounded-circle" src="/images/avatars/${cus.account.photo}" alt="">
																		<div class="d-inline-block">
																			<h6>${cus.account.name}</h6>
																		</div>
																	</div>
															</a></td>
															<td>${cus.account.phone}</td>
															<%-- <td>${cus.account.email} </td> --%>
															<td style="text-align: center">
																<div class="span badge badge-pill pill-badge-info f-12">${cus.quantity}</div>
															</td>
															<td><div class="span badge badge-pill pill-badge-secondary">
																	<fmt:formatNumber type="number" maxFractionDigits="3" value="${cus.totalBuy}" />
																	VNĐ
																</div></td>
														</tr>
													</c:forEach>
												</c:if>
												<c:if test="${customers.size() == 0 }">
													<tr>
														<td style="color: red; font-weight: bold; text-align: center;" colspan="4">Chưa có khách hàng nào</td>
													</tr>
												</c:if>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- <div class="col-sm-12">
							<div class="card">
								<div class="card-header">
									<h5>Revenue Chart</h5>
								</div>
								<div class="card-body">
									<div id="column-chart"></div>
								</div>
							</div>
						</div> -->
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
	<!-- feather icon js-->
	<script src="/assets/js/prism/prism.min.js"></script>
	<script src="/assets/js/clipboard/clipboard.min.js"></script>
	<script src="/assets/js/counter/jquery.waypoints.min.js"></script>
	<script src="/assets/js/counter/jquery.counterup.min.js"></script>
	<script src="/assets/js/counter/counter-custom.js"></script>
	<script src="/assets/js/custom-card/custom-card.js"></script>
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/height-equal.js"></script>
	<script src="/assets/js/datepicker/daterange-picker/moment.min.js"></script>
	<script src="/assets/js/datepicker/daterange-picker/daterangepicker.js"></script>
	<!-- Sidebar jquery-->
	<script src="/assets/js/sidebar-menu.js"></script>
	<script src="/assets/js/config.js"></script>
	<!-- Plugins JS start-->
	<%--  <script src="/assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="/assets/js/chart/apex-chart/stock-prices.js"></script> --%>
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/tooltip-init.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<script>
		$(document).ready(function() {
			$('input[name="daterange"]').daterangepicker();
		})

		$(function() {

			var start = moment().subtract(29, 'Ngày');
			var end = moment();

			function cb(start, end) {
				$('#reportrange span').html(
						start.format('D MMM, YYYY') + ' - '
								+ end.format('D MMM, YYYY'));
			}

			$('#reportrange').daterangepicker(
					{
						startDate : start,
						endDate : end,
						ranges : {
							'Hôm Nay' : [ moment(), moment() ],
							'1 Ngày Trước' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'7 Ngày Trước' : [ moment().subtract(6, 'days'),
									moment() ],
							'30 Ngày Trước' : [ moment().subtract(29, 'days'),
									moment() ],
							'Tháng Này' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Tháng Trước' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						}
					}, cb);

			cb(start, end);

		});
	</script>
	<%-- <script>
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
				            columnWidth: '30%',
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
				            text: 'VNĐ'
				        }
				    },
				    fill: {
				        opacity: 1

				    },
				    tooltip: {
				        y: {
				            formatter: function (val) {
				                return val + " VNĐ"
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
	</script> --%>
	<!-- Plugin used-->
</body>
</html>
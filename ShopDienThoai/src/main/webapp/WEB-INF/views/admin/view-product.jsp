<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String sb = String.valueOf(request.getAttribute(MENU));
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Creative admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="pixelstrap">
<link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">
<link rel="shortcut icon" href="/assets/images/favicon.png"
	type="image/x-icon">
<title>HopeOnline -- View Customer Detail</title>
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Font Awesome-->
<link rel="stylesheet" type="text/css"
	href="/assets/css/fontawesome.css">
<!-- ico-font-->
<link rel="stylesheet" type="text/css" href="/assets/css/icofont.css">
<!-- Themify icon-->
<link rel="stylesheet" type="text/css" href="/assets/css/themify.css">
<!-- Flag icon-->
<link rel="stylesheet" type="text/css" href="/assets/css/flag-icon.css">
<!-- Feather icon-->
<link rel="stylesheet" type="text/css"
	href="/assets/css/feather-icon.css">
<link rel="stylesheet" type="text/css"
	href="/assets/css/feather-icon.css">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="/assets/css/prism.css">
<!-- Plugins css Ends-->
<link rel="stylesheet" type="text/css"
	href="/assets/css/sweetalert2.css">
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css"
	media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">
<style type="text/css">
.product-detail p {
	font-size: 16px
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

				<!-- Container-fluid starts-->
				<form:form class="theme-form" novalidate="novalidate"
					modelAttribute="product" method="post"
					enctype="multipart/form-data">
					<div class="container-fluid">

						<div class="row">
							<div class="card bg-header col-sm-12 text-center row"
								style="margin: 0 auto">
								<div class="card-body"
									style="font-size: 26px; line-height: 50px;">
									<img class="product-image__img"
										src="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}"
										alt="" style="max-height: 200px">
									<h3> 
										<b> ${product.name} </b>
									</h3>
									<h4 style="color:#3333FF;"><fmt:formatNumber type="number" maxFractionDigits="3"
										value="${product.importPrice}" /> VNĐ</h4>
									<h4>Lượt xem: ${product.views} lượt</h4>
								</div>
								<div class="row">
									<div class=" col-sm-4">
										<div class="card bg-header col-sm-12 ">
											<div class="card-header pt-3 pb-3" style="font-size: 26px">
												<b>Mô tả</b>
											</div>
											<div class="card-body product-detail text-left">
												${product.description }</div>
										</div>
									</div>
									<div class=" col-sm-4">
										<div class="card bg-header col-sm-12">
											<div class="card-header pt-3 pb-3"
												style="font-size: 20px; line-height: 40px">
												<b>Hãng điện thoại: ${product.category.producer.name}</b>
												<img class="img-radius img-80 align-top m-r-15 row"
													style="margin: 0 auto;"
													src="/images/producer/${product.category.producer.logo}"
													alt="loading" style="box-shadow: unset !important">
											</div>
											<div class="card-body product-detail text-left">
												<p>
													<b><font color="#ff0000">Địa chỉ:</font></b>
													${product.category.producer.address}
												</p>
												<p>
													<b><font color="#ff0000">Email:</font></b>
													${product.category.producer.email}
												</p>
												<p>
													<b><font color="#ff0000">SĐT:</font></b>
													${product.category.producer.phone}
												</p>
											</div>
										</div>
									</div>
									<div class=" col-sm-4">
										<div class="card bg-header col-sm-12 ">
											<div class="card-header pt-3 pb-3" style="font-size: 26px">
												<b>Tags</b>
											</div>
											<div class="card-body product-detail text-left">
												
												<c:if test="${product.available}">
													<p>
													<b><font color="#ff0000">Hàng có sẵn</font></b>
													</p>
												</c:if>
												<c:if test="${product.special}">
													<p>
													<b><font color="#ff0000">Đặc biệt</font></b>
													</p>
												</c:if>
												<c:if test="${product.latest}">
													<p>
													<b><font color="#ff0000">Hàng mới</font></b>
													</p>
												</c:if>
												<c:if test="${!product.available&&!product.special&&!product.latest}">
													<p>
													<b><font color="#ff0000">Không</font></b>
													</p>
												</c:if>
											</div>
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
	<script
		src="/assets/js/datepicker/date-time-picker/tempusdominus-bootstrap-4.min.js"></script>
	<script
		src="/assets/js/datepicker/date-time-picker/datetimepicker.custom.js"></script>


	<script src="/assets/js/datepicker/date-picker/datepicker.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.en.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.custom.js"></script>

	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page import="static com.hitech.utils.ViewUtils.*"%>

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
<title>HopeOnline -- Update Discount</title>
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
								<h3>FORM UPDATE DISCOUNT</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item">
										<a href="<%=URL_ADMIN_HOME%>">Home</a>
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
											<h5>UPDATE DISCOUNT</h5>
										</div>
										<div class="card-body switch-showcase height-equal">
											<form:form class="theme-form ${(error || isExistedId) ? 'was-validated' : ''}" novalidate="novalidate" modelAttribute="discount" method="post" enctype="multipart/form-data">
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
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="id">Mã khuyễn mãi</label>
													<div class="col-sm-9 input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="icofont icofont-key"></i>
															</span>
														</div>
														<input class="form-control" type="text" name="id" value="${discount.id }" readonly="readonly" />
													</div>
												</div>
												<div class="media form-group row">
													<label class="col-form-label col-sm-3">Current</label>
													<div class="media-body text-right icon-state col-sm-1">
														<label class="switch">
															<input type="checkbox" ${discount.current ? 'checked="checked"' : ''} name="current">
															<span class="switch-state bg-primary"></span>
														</label>
													</div>
												</div>
										
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="Product">Product</label>
													<div class="col-sm-9 input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="icofont icofont-brand-aliexpress"></i>
															</span>
														</div>
														<input class="form-control" value="${discount.product.name}" type="text" required="required" readonly="readonly" />
														<input type="hidden" name="productId" value="${discount.product.id }" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="percents">Percent</label>
													<div class="col-sm-9 input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="icofont icofont-sale-discount"></i>
															</span>
														</div>
														<form:input path="percents" class="form-control" type="number" required="required" />
														<form:errors path="percents" class="invalid-feedback" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="description">Description</label>
													<div class="col-sm-9 input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="icofont icofont-pencil-alt-2"></i>
															</span>
														</div>
														<form:input path="description" class="form-control" type="text" required="required" />
														<form:errors path="description" class="invalid-feedback" />
													</div>
												</div>
												<div class="card-footer">
													<button class="btn btn-primary" type="submit">Update</button>
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
	<!-- Plugins JS start-->
	<script src="/assets/js/chat-menu.js"></script>
	<script src="/assets/js/tooltip-init.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<!-- Plugin used-->

</body>
</html>
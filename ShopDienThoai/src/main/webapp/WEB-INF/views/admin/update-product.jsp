<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
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
<title>HOPE - UPDATE PRODUCT</title>
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

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">

<style>
.invalid-feedback {
	display: block
}
.panel-heading>.note-btn-group{
	border: 1px solid
}
.note-dropdown-menu{
	padding: 10px 20px !important;
	min-width: 200px !important;
}
button>span.note-icon-caret{
	display: none !important;
}

button>i{
	margin-right: 10px !important;
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
								<h3>FORM UPDATE PRODUCT</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="<%=URL_ADMIN_HOME%>">Home</a></li>

								</ol>
							</div>
							<div class="col-lg-6">
								<!-- Bookmark Start-->
								<div class="bookmark pull-right">
									<ul>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Tables"> <i data-feather="inbox"></i>
										</a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Chat"> <i data-feather="message-square"></i>
										</a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Icons"> <i data-feather="command"></i>
										</a></li>
										<li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Learning"> <i data-feather="layers"></i>
										</a></li>
										<li><a href="#"> <i class="bookmark-search" data-feather="star"></i>
										</a>
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
						<div class="col-sm-12 col-xl-12">
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-header">
											<h5>UPDATE PRODUCT</h5>
										</div>
										<form:form class="theme-form ${error == true ? 'was-validated' : '' }" modelAttribute="product" novalidate="novalidate" method="post" enctype="multipart/form-data">
											<div class="card-body">

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
													<label class="col-sm-3 col-form-label" for="name">Name</label>
													<div class="col-sm-9">
														<form:input path="name" class="form-control" required="required" minlength="2" maxlength="50" />
														<form:errors path="name" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="category">Category</label>
													<div class="col-sm-9">
														<form:select path="category" class="form-control">
															<form:options items="${listCategory}" itemLabel="name"></form:options>
														</form:select>
														<form:errors path="category" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label">Image</label>
													<div class="col-sm-9">
														<div class="img-radius img-80 align-top m-r-15">
															<img class="img-100" id="photo" src="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}" alt="#">
														</div>
														<input name="image" class="form-control" type="file" id="imgInp" accept="image/*" value="${product.photo}">
													</div>
												</div>
												<%-- <div class="form-group row">
													<label class="col-sm-3 col-form-label" for="producer">Producer</label>
													<div class="col-sm-9">
														<form:select path="producer" class="form-control">
															<form:options items="${listProducer}" itemLabel="name"></form:options>
														</form:select>
														<form:errors path="producer"  />
													</div>
												</div> --%>
												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="importPrice">Import Price</label>
													<div class="col-sm-9">
														<form:input path="importPrice" class="form-control" required="required" min="1000" max="999999999" />
														<form:errors path="importPrice" />
													</div>
												</div>


												<fieldset class="form-group row">
													<label class="col-form-label col-sm-3">Is Available</label>
													<div class="col-sm-9">
														<form:checkbox path="available" />
														<form:errors path="available" />
													</div>
												</fieldset>
												<fieldset class="form-group row">
													<label class="col-form-label col-sm-3">Is Special</label>
													<div class="col-sm-9">
														<form:checkbox path="special" />
														<form:errors path="special" />
													</div>
												</fieldset>
												<fieldset class="form-group row">
													<label class="col-form-label col-sm-3">Is Latest</label>
													<div class="col-sm-9">
														<form:checkbox path="latest" />
														<form:errors path="latest" />
													</div>
												</fieldset>

												<div class="form-group row">
													<label class="col-sm-3 col-form-label" for="description">Description</label>
													<div class="col-sm-9">
														<form:textarea path="description" class="form-control" required="required"/>
														<form:errors path="description" />
													</div>
												</div>
											</div>
											<div class="card-footer">
												<a href="<%=URL_ADMIN_DISCOUNT_INSERT%>?productId=<%=request.getParameter("id")%>" class="btn btn-primary">Update Discount</a>
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
			<!-- footer start-->
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
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<!-- Plugins JS Ends-->
	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<!-- login js-->
	<!-- Plugin used-->
	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.readAsDataURL(input.files[0]);

				reader.onload = function(e) {
					$('#photo').attr('src', e.target.result);
				}

			}
		}
		$(document).ready(function() {
			$('#description').summernote();
			readURL(this);
		});
		$("#imgInp").change(function() {
			readURL(this);
		});
	</script>
</body>
</html>
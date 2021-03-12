<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
								<h3>PROFILE</h3>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="<%=URL_ADMIN_HOME%>">Home</a>
									</li>

								</ol>
							</div>
							<div class="col-lg-6">
								<!-- Bookmark Start-->
								<div class="bookmark pull-right">
									<ul>
										<li><a href="#" data-container="body"
											data-toggle="popover" data-placement="top" title=""
											data-original-title="Tables"> <i data-feather="inbox"></i>
										</a></li>
										<li><a href="#" data-container="body"
											data-toggle="popover" data-placement="top" title=""
											data-original-title="Chat"> <i
												data-feather="message-square"></i>
										</a></li>
										<li><a href="#" data-container="body"
											data-toggle="popover" data-placement="top" title=""
											data-original-title="Icons"> <i data-feather="command"></i>
										</a></li>
										<li><a href="#" data-container="body"
											data-toggle="popover" data-placement="top" title=""
											data-original-title="Learning"> <i data-feather="layers"></i>
										</a></li>
										<li><a href="#"> <i class="bookmark-search"
												data-feather="star"></i>
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
											<h5>INSERT CATEGORIES</h5>
										</div>
										<form:form
											class="theme-form ${(error || isExistName ) ? 'was-validated' : '' }"
											modelAttribute="category" novalidate="novalidate">
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
														<form:input path="name" class="form-control"
															required="required" minlength="2" maxlength="50" />
														<form:errors path="name" class="invalid-feedback" />
															<c:if test="${isExistName}">
															<div class="invalid-feedback">${errorName}</div>
														</c:if>
													</div>
												</div>
											</div>
											<div class="card-footer">
												<button class="btn btn-primary" type="submit">Create</button>
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
	<script
		src="/assets/js/vector-map/map/jquery-jvectormap-world-mill-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-us-aea-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-uk-mill-en.js"></script>
	<script src="/assets/js/vector-map/map/jquery-jvectormap-au-mill.js"></script>
	<script
		src="/assets/js/vector-map/map/jquery-jvectormap-chicago-mill-en.js"></script>
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
</body>
</html>
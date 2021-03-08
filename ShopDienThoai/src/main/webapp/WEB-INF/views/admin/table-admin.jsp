<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static com.hitech.constraints.ViewConstraint.*"%>
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
<link rel="stylesheet" type="text/css"
	href="/assets/css/feather-icon.css">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="/assets/css/prism.css">
<!-- Plugins css Ends-->
<link rel="stylesheet" type="text/css" href="/assets/css/sweetalert2.css">
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
									<h5>LIST MANAGER</h5>
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
													<th scope="col">Name</th>
													<th scope="col">Username</th>
													<th scope="col">Gender</th>
													<th scope="col">Email</th>
													<th scope="col">Phone</th>
													<th scope="col"></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="acc" items="${list}">
													<tr>
														<td>
															<div class="d-flex">
																<img
																	class="img-radius img-60 align-top m-r-15 rounded-circle"
																	src="/images/avatars/${acc.photo}" alt="">
																<div class="d-flex flex-column justify-content-center">
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
															<%-- <button class="btn btn-pill btn-outline-primary btn-sm" type="button">View</button>
															<button class="btn btn-pill btn-outline-success btn-sm" type="button">Edit</button>
															<button class="btn btn-pill btn-outline-danger btn-sm delete-item" data-id="${acc.username}">Delete</button> --%>

															<button class="btn btn-pill btn-outline-primary btn-sm"
																type="button">View</button>
															<a class="btn btn-pill btn-outline-success btn-sm" href="<%=URL_ADMIN_ADMIN_UPDATE%>?id=${acc.username}"">Edit</a>
															<button class="btn btn-pill btn-outline-danger btn-sm delete-item" data-id="${acc.username}">Delete</button>
															<%-- <form method="post" action="/ho-manager/admin/delete">
																<input type="hidden" name="username" value="${acc.username}"/>
																<button class="btn btn-pill btn-outline-danger btn-sm" type="submit">Delete</button>
															</form> --%>

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
	<script>
		$(document).ready(function() {
			$('.delete-item').click(function() {
				swal({
					  title: "Thông báo!",
					  text: "Bạn có chắc chắn muôn xóa người dùng này không",
					  icon: "warning",
					  buttons: true,
					  dangerMode: true,
					})
					.then((willDelete) => {
							if(willDelete == true){
								$.ajax({
									url : "<%=URL_ADMIN_ADMIN_DELETE%>",
									method : "POST",
									data : {
										username : $(this).data('id')
									},
									success : function(data) {
										if(data == true){
											swal("Thông báo!", "Bạn đã xóa thành công!", "success").then(() => location.reload());
										}else{
											swal("Thông báo!", "Không thể xóa người dùng này!", "danger");
										}
									},
									error : function() {

									}
								});
							}
					});
			});
		});
				/* if(){
					$.ajax({
						url : "/ho-manager/admin/delete",
						method : "POST",
						data : {
							username : $(this).data('id')
						},
						success : function(data) {
							alert(data);
						},
						error : function() {

						}
					});
				} */
	
	//jquery	
	/* $(document).ready(function(){
		$('.delete-item').click(function(){
			var username = $(this).data('id');
			swal({
			  title: "Thông báo?",
			  text: "Bạn có chắc chắn xóa tài khoản " + username + " không?",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
		//swal("Good job!", "You clicked the button!", "error");
			.then((willDelete) => {
			  if(willDelete == true){
				  $.ajax({
					  url: "/ho-manager/admin/delete",
					  method: "POST",
					  data: {
						  username: username
					  },
					  success: function(data){
						 if(data == true) location.reload();
					  },
 					  error: function(data){
						  
					  },
				  });
			  }
			});
			//promise
		})
	}); */
	
	</script>
	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>HOPE - TABLE STATUS</title>
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
<link rel="stylesheet" type="text/css" href="/assets/css/feather-icon.css">
<!-- Plugins css start-->
<link rel="stylesheet" type="text/css" href="/assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="/assets/css/prism.css">
<link rel="stylesheet" type="text/css" href="/assets/css/datatables.css">
<!-- Plugins css Ends-->
<link rel="stylesheet" type="text/css" href="/assets/css/sweetalert2.css">
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">

<style type="text/css">
table tbody td {
	padding: 20px !important;
}

table thead {
	background: #f3eded;
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
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header">
									<h5>List Status</h5>
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
								<div class="card-body ">
									<div class="sales-product-table table-responsive">
										<table class="table table-bordernone" id="basic-1">
											<thead>
												<tr>
													<th scope="col">Status ID</th>
													<th scope="col">Name</th>

													<th scope="col"></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="status" items="${listStatus}">
													<tr>
														<td>
															<span>${status.id}</span>
														</td>
														<td>
															<span>${status.name}</span>
														</td>
														<td>

															<a class="btn btn-pill btn-outline-success btn-sm" href="/ho-admin/status/update?id=${status.id}">Edit</a>
															<button class="btn btn-pill btn-outline-danger btn-sm delete-item" onClick="onDelete(this)" data-id="${status.id}" data-name="${status.name}">Delete</button>

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
	<!--  Pagination -->
	<script src="/assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
	<script src="/assets/js/datatable/datatables/datatable.custom.js"></script>
	<script>
			
		function onDelete(elm){ 
		var id = $(elm).data('id');
		var name = $(elm).data('name');
				swal({
				  title: "Thông báo?",
				  text: "Bạn có chắc chắn xóa trạng thái " + name  + " không?",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if(willDelete == true){
					  $.ajax({
						  url: '<%=URL_ADMIN_STATUS_DELETE%>',
						  method: "POST",
						  data: {
							  id: id
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
			}
		
		
		
		
		</script>
	<!-- login js-->
	<!-- Plugin used-->
</body>
</html>
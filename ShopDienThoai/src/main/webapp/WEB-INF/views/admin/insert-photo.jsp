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
<title>HopeOnline -- Insert Images</title>
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
<!-- Plugins css Ends-->
<!-- Bootstrap css-->
<link rel="stylesheet" type="text/css" href="/assets/css/bootstrap.css">
<!-- App css-->
<link rel="stylesheet" type="text/css" href="/assets/css/style.css">
<link id="color" rel="stylesheet" href="/assets/css/light-1.css" media="screen">
<!-- Responsive css-->
<link rel="stylesheet" type="text/css" href="/assets/css/responsive.css">

<!-- styles -->
<link href="https://danielmg.org/assets/demo/uploader/css/jquery.dm-uploader.min.css?v=v10" rel="stylesheet">
<style type="text/css">
.preview-img {
	width: 64px;
	height: 64px;
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
									<h5>List Photo</h5>
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
								<div class="card-body p-3">
									<div class="sales-product-table table-responsive">

										<table class="table table-bordernone">
											<thead>
												<tr class="text-center">
													<!-- <th>STT</th> -->
													<th>Hình ảnh</th>
													<th></th>
												</tr>
											</thead>
											<tbody id="photo-body">
												<c:forEach var="p" items="${photos}">
													<tr class="text-center">
														<%-- <td scope="col">${p.id}</td> --%>
														<td scope="col">
															<div class="img-radius align-top">
																<img class="img-100" id="photo" src="/images/photos/${p.link }" alt="#">
															</div>
														</td>
														<td>
															<button class="btn btn-pill btn-outline-danger btn-sm delete-item" data-id="${p.id}">Delete</button>
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

					<div class="row" id="add-photo">
						<div class="col-xl-12">
							<div class="card">
								<div class="card-header">
									<h5>Add Photo</h5>
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
								<div class="card-body p-3">
									<div class="row">
										<div class="col-md-6 col-sm-12">

											<div id="drag-and-drop-zone" class="dm-uploader p-5 text-center">
												<h3 class="mb-5 mt-5 text-muted">Drag &amp; drop Files here</h3>

												<div class="btn btn-primary btn-block mb-5">
													<span>Open the file Browser</span>
													<input type="file" title='Click to add Files' />
												</div>
											</div>
											<!-- /uploader -->

											<div class="mt-2">
												<a href="#" class="btn btn-primary" id="btnApiStart">
													<i class="fa fa-play"></i>
													Start
												</a>
												<a href="#" class="btn btn-danger" id="btnApiCancel">
													<i class="fa fa-stop"></i>
													Stop
												</a>
											</div>
										</div>
										<div class="col-md-6 col-sm-12">
											<div class="card h-100">
												<div class="card-header">File List</div>

												<ul class="list-unstyled p-2 d-flex flex-column col" id="files">
													<li class="text-muted text-center empty">No files uploaded.</li>
												</ul>
											</div>
										</div>
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

	<!-- Theme js-->
	<script src="/assets/js/script.js"></script>
	<script src="/assets/js/theme-customizer/customizer.js"></script>
	<script src="https://danielmg.org/assets/demo/uploader/js/jquery.dm-uploader.min.js?v=v10"></script>
	<script src="https://danielmg.org/assets/demo/uploader/js/ui-main.js?v=v10"></script>

	<script src="https://danielmg.org/assets/demo/uploader/js/ui-multiple.js?v=v10"></script>
	<script src="/js/photo-plugin/controls.js"></script>
	<script src="/assets/js/sweet-alert/sweetalert.min.js"></script>

	<script>
		//jquery	
		$(document).ready(function(){			
			addListenerForBtnDelete();
		}); 
		
		  function addListenerForBtnDelete(){
				$('.delete-item').on('click',function(){
					var id = $(this).data('id');
					
					swal({
					  title: "Thông báo?",
					  text: "Bạn có chắc chắn xóa hình này không?",
					  icon: "warning",
					  buttons: true,
					  dangerMode: true,
					})
					.then((willDelete) => {
					  if(willDelete == true){
						  $.ajax({
							  url: '<%=URL_ADMIN_PHOTO_DELETE%>',
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
				})
			}
		
		
		</script>
	<!-- File item template -->
	<script type="text/html" id="files-template">
  <li class="media">
    <img class="mr-3 mb-2 preview-img" src="https://danielmg.org/assets/image/noimage.jpg?v=v10" alt="Generic placeholder image">
    <div class="media-body mb-1">
      <p class="mb-2">
        <strong>%%filename%%</strong> - Status: <span class="text-muted">Waiting</span>
      </p>
      <div class="progress mb-2">
        <div class="progress-bar progress-bar-striped progress-bar-animated bg-primary" 
          role="progressbar"
          style="width: 0%" 
          aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
        </div>
      </div>
      
      <p class="controls mb-2">
        
        <button href="#" class="btn btn-sm btn-danger cancel" role="button" disabled="disabled">Cancel</button>
      </p>
      
      <hr class="mt-1 mb-1" />
    </div>
  </li>
</script>
</body>
</html>
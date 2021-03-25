<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.entities.Account"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="format-detection" content="telephone=no">
<title>HOPE ONLINE</title>
<link rel="icon" type="image/png" href="images/favicon.png">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Niramit:wght@500&display=swap" rel="stylesheet">

<!-- fonts -->
<link rel="stylesheet" href="css.css?family=Roboto:400,400i,500,500i,700,700i">
<!-- css -->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="vendor/owl-carousel/assets/owl.carousel.min.css">
<link rel="stylesheet" href="vendor/photoswipe/photoswipe.css">
<link rel="stylesheet" href="vendor/photoswipe/default-skin/default-skin.css">
<link rel="stylesheet" href="vendor/select2/css/select2.min.css">
<link rel="stylesheet" href="css/style.css">

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

<!-- font - fontawesome -->
<link rel="stylesheet" href="vendor/fontawesome/css/all.min.css">
<!-- font - stroyka -->
<link rel="stylesheet" href="fonts/stroyka/stroyka.css">
<style type="text/css">
body {
	font-family: 'Source Serif Pro', serif;
}
</style>

</head>
<body>
	<!-- site -->
	<div class="site">
		<header class="site__header d-lg-block d-none">
			<div class="site-header">

				<!-- mobile site__header -->
				<jsp:include page="layouts/header.jsp"></jsp:include>
				<!-- mobile site__header / end -->

				<!-- desktop site__header -->
				<jsp:include page="layouts/header_mobile.jsp"></jsp:include>
				<!-- desktop site__header / end -->

				<div class="site-header__nav-panel">
					<jsp:include page="layouts/nav.jsp"></jsp:include>
				</div>
			</div>
		</header>
		<!-- site__body -->
		<div class="site__body">
			<div class="page-header">
				<div class="page-header__container container">
					<div class="page-header__breadcrumb">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="index.html">Trang chủ</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item">
									<a href="">Tài khoản</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Hồ sơ</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
			<div class="block">
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-3 d-flex">
							<div class="account-nav flex-grow-1">
								<h4 class="account-nav__title">Navigation</h4>
								<ul>
									<li class="account-nav__item account-nav__item--active">
										<a href="/">Trang chủ</a>
									</li>

									<li class="account-nav__item">
										<a href="account-orders.html">Lịch sử đặt hàng</a>
									</li>
									<li class="account-nav__item">
										<a href="account-order-details.html">Chi tiết đơn hàng</a>
									</li>

									<li class="account-nav__item">
										<a href="/change-pasword">Đổi mật khẩu</a>
									</li>
									<li class="account-nav__item">
										<a href="account-login.html">Đăng xuất</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-lg-9 mt-4 mt-lg-0">
							<div class="dashboard">
								<div class="dashboard__profile card profile-card">
									<div class="card-body profile-card__body">
										<div class="profile-card__avatar">
											<img src="/images/avatars/${profile.photo}" alt="">
										</div>
										<div class="address-card__name">${profile.username}</div>
										<div class="profile-card__email">${profile.email}</div>
										<!-- <div class="profile-card__edit">
											<a href="account-profile.html" class="btn btn-secondary btn-sm">Edit Profile</a>
										</div> -->
									</div>
								</div>
								<div class="dashboard__address card address-card address-card--featured">

									<div class="address-card__body">
										<div class="address-card__name">${profile.name}</div>
										<div class="address-card__row">
											<div class="address-card__row-title">Giới tính</div>
											<div class="address-card__row-content">
												<c:if test="${profile.gender}">
													<span class="badge badge-pill pill-badge-primary">Nam</span>
												</c:if>
												<c:if test="${!profile.gender}">
													<span class="badge badge-pill pill-badge-success">Nữ</span>
												</c:if>
											</div>
										</div>
										<div class="address-card__row">
											<div class="address-card__row-title">Ngày sinh</div>
											<div class="address-card__row-content">${profile.birthday}</div>
										</div>
										<div class="address-card__row">
											<div class="address-card__row-title">Số điện thoại</div>
											<div class="address-card__row-content">${profile.phone }</div>
										</div>
										<div class="address-card__row">
											<div class="address-card__row-title">Email</div>
											<div class="address-card__row-content">${profile.email}</div>
										</div>
										<div class="address-card__footer">
											<div class="address-card__row-title">Địa chỉ</div>
											<div class="address-card__row-content">${profile.address}</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- site__body / end -->


		<!-- site__body -->
		<div class="site__body">
			<div class="page-header">
				<div class="page-header__container container"></div>
			</div>
			<div class="block">
				<div class="container">
					<div class="row">

						<div class="col-12 col-lg-12 mt-4 mt-lg-0">
							<div class="card">
								<div class="card-header">
									<h5>Chỉnh sửa Hồ Sơ</h5>
								</div>
								<div class="card-divider"></div>
								<form:form class="theme-form ${(error || isExistEmail) ? 'was-validated' : ''}" novalidate="novalidate" modelAttribute="profile" method="post" enctype="multipart/form-data">
									<div class="card-body datetime-picker">
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
											<label class="col-sm-3 col-form-label" for="username">TÊN ĐĂNG NHẬP</label>
											<div class="col-sm-9  input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">
														<i class="icofont icofont-users"></i>
													</span>
												</div>
												<input type="text" name="username" value="${profile.username }" class="form-control" readonly="readonly" />
												<input type="hidden" name="password" value="*********" class="form-control" readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label" for="name">HỌ VÀ TÊN:</label>
											<div class="col-sm-9 input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">
														<i class="icofont icofont-pencil-alt-5"></i>
													</span>
												</div>
												<form:input path="name" class="form-control" required="required" />
												<form:errors path="name" class="invalid-feedback" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label" for="email">EMAIL:</label>
											<div class="col-sm-9 input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">
														<i class="icofont icofont icofont-email"></i>
													</span>
												</div>
												<form:input path="email" class="form-control" required="required" />
												<form:errors path="email" class="invalid-feedback" />
												<c:if test="${isExistEmail}">
													<div class="invalid-feedback">${errorEmail}</div>
												</c:if>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">NGÀY SINH</label>
											<div class="col-sm-9 ">
												<div class="input-group date" id="dt-date" data-target-input="nearest">
													<div class="input-group-append" data-target="#dt-date" data-toggle="datetimepicker">
														<div class="input-group-text">
															<i class="fa fa-calendar"></i>
														</div>
													</div>
													<form:input path="birthday" required="required" class="form-control datetimepicker-input digits" disabled="disabled" data-target="#dt-date" />
												</div>
												<form:errors path="birthday" class="invalid-feedback" />
											</div>
										</div>

										<fieldset class="form-group">
											<div class="row">
												<label class="col-form-label col-sm-3 pt-0">GIỚI TÍNH</label>
												<div class="col-sm-9 ">
													<div class="radio radio-primary pl-3">
														<form:radiobutton path="gender" value="0" class="form-check-input" />
														<label for="gender1">Nữ</label>
													</div>
													<div class="radio radio-primary pl-3">
														<form:radiobutton path="gender" value="1" class="form-check-input" />
														<label for="gender2">Nam</label>
													</div>
													<form:errors path="gender" />
												</div>
												<form:errors path="gender" />
											</div>
										</fieldset>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label">HÌNH ẢNH</label>
											<div class="col-sm-9">
												<div class="avatar p-2">
													<img class="img-100 rounded-circle" id="avatar" src="/images/avatars/${profile.photo}" alt="#">
												</div>
												<input name="image" class="form-control" type="file" id="imgInp" accept="image/*">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label" for="address">ĐỊA CHỈ:</label>
											<div class="col-sm-9 input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">
														<i class="icofont icofont-home"></i>
													</span>
												</div>
												<form:input path="address" class="form-control" required="required" />
												<form:errors path="address" class="invalid-feedback" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 col-form-label" for="phone">SỐ ĐIỆN THOẠI</label>
											<div class="col-sm-9 input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">
														<i class="icofont icofont-phone"></i>
													</span>
												</div>
												<form:input path="phone" class="form-control" pattern="(84|0[3|5|7|8|9])+([0-9]{8})" required="required" />
												<%-- <form:errors path="phone" class="invalid-feedback" /> --%>
											</div>

										</div>
									</div>
									<div class="card-footer">
										<button class="btn btn-success" type="submit">Cập nhật</button>
										<button class="btn btn-danger" type="reset">Hủy</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- site__body / end -->





		<!-- site__footer -->
		<jsp:include page="layouts/footer.jsp"></jsp:include>
		<!-- site__footer / end -->
	</div>
	<!-- site / end -->
	<!-- quickview-modal -->

	<div id="quickview-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl">
			<div class="modal-content"></div>
		</div>
	</div>
	<!-- quickview-modal / end -->
	<!-- mobilemenu -->


	<!-- mobilemenu / end -->
	<!-- photoswipe -->
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="pswp__bg"></div>
		<div class="pswp__scroll-wrap">
			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>
			<div class="pswp__ui pswp__ui--hidden">
				<div class="pswp__top-bar">
					<div class="pswp__counter"></div>
					<button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
					<!--<button class="pswp__button pswp__button&#45;&#45;share" title="Share"></button>-->
					<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
					<button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
					<div class="pswp__share-tooltip"></div>
				</div>
				<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
				<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
				<div class="pswp__caption">
					<div class="pswp__caption__center"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- photoswipe / end -->
	<!-- js -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="vendor/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendor/nouislider/nouislider.min.js"></script>
	<script src="vendor/photoswipe/photoswipe.min.js"></script>
	<script src="vendor/photoswipe/photoswipe-ui-default.min.js"></script>
	<script src="vendor/select2/js/select2.min.js"></script>
	<script src="js/number.js"></script>
	<script src="js/main.js"></script>
	<script src="js/header.js"></script>
	<script src="vendor/svg4everybody/svg4everybody.min.js"></script>
	<script>
		svg4everybody();
	</script>
	<!-- DATETIME PICKER -->

	<script src="/assets/js/datepicker/date-time-picker/moment.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/tempusdominus-bootstrap-4.min.js"></script>
	<script src="/assets/js/datepicker/date-time-picker/datetimepicker.custom.js"></script>


	<script src="/assets/js/datepicker/date-picker/datepicker.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.en.js"></script>
	<script src="/assets/js/datepicker/date-picker/datepicker.custom.js"></script>

	<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.readAsDataURL(input.files[0]);

				reader.onload = function(e) {
					$('#avatar').attr('src', e.target.result);
				}

			}
		}

		$("#imgInp").change(function() {
			readURL(this);
		});
	</script>
</body>
</html>
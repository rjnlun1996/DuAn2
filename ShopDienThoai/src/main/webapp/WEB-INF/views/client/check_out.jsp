<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="format-detection" content="telephone=no">
<title>Shop Dien Thoai</title>
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
<!-- font - fontawesome -->
<link rel="stylesheet" href="vendor/fontawesome/css/all.min.css">
<!-- font - stroyka -->
<link rel="stylesheet" href="fonts/stroyka/stroyka.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
<link rel="stylesheet" type="text/css" href="/assets/css/sweetalert2.css">
<style type="text/css">
body {
	font-family: 'Source Serif Pro', serif;
}

.invalid-feedback {
	display: block;
}

.was-validated .form-control:valid, .form-control.is-valid {
	background-image: none !important;
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
									<a href="/">Trang chủ</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item">
									<a href="">Giỏ Hàng</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Thanh Toán</li>
							</ol>
						</nav>
					</div>
					<div class="page-header__title">
						<h1>Thanh Toán</h1>
					</div>
				</div>
			</div>
			<div class="checkout block">
				<div class="container">
					<form:form class="theme-form ${error ? 'was-validated' : ''}" modelAttribute="order" method="post">
						<div class="row">
							<c:if test="${cart == null ||  cart.productDto.values().size() == 0}">
								<div class="col-12">
									<h3 class="text-danger text-center">Giỏ hàng không có gì để thanh toán</h3>
									<div class="text-center">
										<a href="/" class="btn btn-primary">Mua sắm</a>
									</div>
								</div>
							</c:if>
							<c:if test="${cart != null && cart.productDto.values().size() > 0}">
								<c:if test="${error != null}">
									<div class="col-12 alert alert-danger" role="alert">${error}</div>
								</c:if>
								<div class="col-12 col-lg-6 col-xl-7">
									<div class="card mb-lg-0">
										<div class="card-body">
											<h3 class="card-title">Chi tiết Giao Hàng</h3>
											<div class="form-group">
												<label for="receiver"> Họ và Tên </label>
												<form:input type="text" class="form-control" path="receiver" placeholder="Họ và Tên " />
												<form:errors path="receiver" class="invalid-feedback" />
											</div>
											<div class="form-group">
												<label for="address">Địa chỉ người nhận</label>
												<form:input path="address" class="form-control" id="checkout-street-address" placeholder="Địa chỉ người nhận" />
												<form:errors path="address" class="invalid-feedback" />
											</div>
											<div class="form-row">
												<div class="form-group col-md-6">
													<label for="checkout-email">Địa chỉ email</label>
													<input type="email" class="form-control" id="checkout-email" placeholder="Địa chỉ email" value="${user.email}" readonly="readonly">
												</div>
												<div class="form-group col-md-6">
													<label for="phone">Số điện thoại</label>
													<form:input path="phone" class="form-control" placeholder="Số điện thoại" />
													<form:errors path="phone" class="invalid-feedback" />
												</div>
											</div>
										</div>
										<div class="card-divider"></div>
										<div class="card-body">
											<h3 class="card-title">Khác</h3>
											<div class="form-group">
												<label for="checkout-comment">
													Ghi chú
													<span class="text-muted">(Tùy chọn)</span>
												</label>
												<form:textarea path="description" class="form-control" rows="4" />
											</div>
										</div>
									</div>
								</div>
								<div class="col-12 col-lg-6 col-xl-5 mt-4 mt-lg-0">
									<div class="card mb-0">
										<div class="card-body">
											<h3 class="card-title">Giỏ hàng của bạn</h3>
											<table class="checkout__totals">
												<thead class="checkout__totals-header">
													<tr>
														<th>Sản Phẩm</th>
														<th>Tổng</th>
													</tr>
												</thead>
												<tbody class="checkout__totals-products">
													<c:forEach items="${cart.productDto.values()}" var="prodDTO">
														<tr>
															<td>
																<span class="text-info">${prodDTO.product.name }</span>
																x
																<span class="text-danger f-12">${prodDTO.quantity }</span>
															</td>
															<td>
																<fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice}" />
																VNĐ
															</td>
														</tr>
													</c:forEach>
												</tbody>
												<tbody class="checkout__totals-subtotals">
													<tr>
														<th>Số lượng sản phẩm</th>
														<td>${cart.number}</td>
													</tr>
													<tr>
														<th>Tổng giá sản phẩm</th>
														<td>
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.amountTotal}" />
															VNĐ
														</td>
													</tr>
													<tr>
														<th>Tổng giá khuyến mãi</th>
														<td>
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.discountPrice}" />
															VNĐ
														</td>
													</tr>
												</tbody>
												<tfoot class="checkout__totals-footer">
													<tr>
														<th>Tổng tiền</th>
														<td class="text-danger">
															<fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.total}" />
															VNĐ
														</td>
													</tr>
												</tfoot>
											</table>
											<div class="checkout__agree form-group">
												<table class="checkout__totals">
													<tboby class="checkout__totals-subtotals">
														<tr>
															<th>Ngày giao hàng dự kiến</th>
															<td class="text-danger">
															<jsp:setProperty name="now" property="time" value="${now.getTime() + 3 * 24 * 60 * 60 * 1000}"/>
															<fmt:formatDate pattern="dd-MM-yyyy" value="${now}" />
																
															</td>
														</tr>
													</tboby>
												</table>
											</div>
											<button type="submit" class="btn btn-primary btn-xl btn-block">Thanh Toán</button>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</form:form>
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
	<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script src="/assets/js/sweet-alert/sweetalert.min.js"></script>
	<script src="js/cart.js"></script>
	<script>
		svg4everybody();
	</script>
</body>
</html>
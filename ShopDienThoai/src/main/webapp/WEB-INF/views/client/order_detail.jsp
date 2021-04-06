<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" type="text/css" href="/assets/css/fontawesome.css">
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
									<a href="/">Trang Chủ</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item">
									<a href="">Đơn hàng</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Lịch sử đơn hàng</li>
							</ol>
						</nav>
					</div>
					<div class="page-header__title">
						<h1>Lịch sử đơn hàng</h1>
					</div>
				</div>
			</div>
			<div class="block">
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-3 d-flex">
							<div class="account-nav flex-grow-1">
								<h4 class="account-nav__title"></h4>
								<ul>
									<li class="account-nav__item ">
										<a href="/">Trang chủ</a>
									</li>

									<li class="account-nav__item account-nav__item--active">
										<a href="/order_history">Lịch sử đặt hàng</a>
									</li>
									<li class="account-nav__item">
										<a href="/order_detail">Đơn hàng đang giao</a>
									</li>

									<li class="account-nav__item">
										<a href="/change-password">Đổi mật khẩu</a>
									</li>
									<li class="account-nav__item">
										<a href="/logout">Đăng xuất</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-lg-9 mt-4 mt-lg-0">
							<div class="card">
								<div class="order-list">
									<table>
										<thead class="order-list__header">
											<tr>
												<th class="order-list__column-label" colspan="2">Sản phẩm</th>
												<th class="order-list__column-quantity">Số lượng</th>
												<th class="order-list__column-quantity">Giảm giá</th>
												<th class="order-list__column-total">Giá tiền</th>
											</tr>
										</thead>
										<tbody class="order-list__products">
											<c:set var="productTotal" value="0"></c:set>
											<c:forEach items="${order.orderDetails }" var="od">
												<c:set var="productTotal" value="${productTotal + od.quantity }"></c:set>
												<tr>
													<td class="order-list__column-image">
														<div class="product-image">
															<a href="" class="product-image__body">
																<img class="product-image__img" src="/images/products/${od.product.category.producer.name.toLowerCase()}/${od.product.photo}" alt="">
															</a>
														</div>
													</td>
													<td class="order-list__column-product">
														<a style="text-decoration: none; color: blue" href="/detail_product?productId=${od.product.id}">${od.product.name }</a>
													</td>
													<td class="order-list__column-quantity" data-title="Qty:">${od.quantity }</td>
													<td class="order-list__column-quantity" data-title="Qty:">${od.discount == null ? 0 :  od.discount.percents} %</td>
													<td class="order-list__column-total" style="color: green">
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${od.product.importPrice}" />
														VNĐ
													</td>
												</tr>
											</c:forEach>
										</tbody>
										<tbody class="order-list__subtotals">
											<tr>
												<td class="order-list__column-label" colspan="3">Số lượng sản phẩm</td>
												<td class="order-list__column-total">${productTotal }</td>
											</tr>
											<tr>
												<td class="order-list__column-label" colspan="3">Tổng tiền</td>
												<td class="order-list__column-total" style="color: blue">
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calAmountTotal()}" />
													VNĐ
												</td>
											</tr>
											<tr>
												<td class="order-list__column-label" colspan="3">Tổng khuyến mãi</td>
												<td class="order-list__column-total">
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calDiscountPrice()}" />
													VNĐ
												</td>
											</tr>
										</tbody>
										<tfoot class="order-list__footer">
											<tr>
												<th class="order-list__column-label" colspan="3">Tổng tiền cần thanh toán</th>
												<td class="order-list__column-total" style="color: red">
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${order.calOrder()}" />
													VNĐ
												</td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
							<div class="row mt-3 no-gutters mx-n2">
								<div class="col-sm-6 col-12 px-2 mt-sm-0 mt-3">
									<div class="card address-card">
										<div class="address-card__body">
											<div class="address-card__badge address-card__badge--muted">Ghi chú</div>
											<div class="address-card__row">
												<c:if test="${order.description.trim().equals('')}">
													<p style="color: red">Không có ghi chú</p>
												</c:if>
												<c:if test="${!order.description.trim().equals('')}">
												${order.description}
											</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-12 px-2">
									<div class="card address-card">
										<div class="address-card__body">
											<div class="address-card__badge address-card__badge--muted">Địa chỉ giao hàng</div>
											<div class="address-card__name" style="text-transform: capitalize;">${order.receiver}</div>
											<div class="address-card__row" style="color: blue">${order.address}</div>
											<div class="address-card__row">
												<div class="address-card__row-title">Số điện thoại</div>
												<div class="address-card__row-content">${order.phone}</div>
											</div>
											<div class="address-card__row">
												<div class="address-card__row-title">Địa chỉ Email</div>
												<div class="address-card__row-content">${user.email}</div>
											</div>
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
		$(function() {
			$('[data-toggle="tooltip"]').tooltip()
		})
		svg4everybody();
	</script>
</body>
</html>



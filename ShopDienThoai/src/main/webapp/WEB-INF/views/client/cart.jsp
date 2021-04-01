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
									<a href="">Breadcrumb</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
							</ol>
						</nav>
					</div>
					<div class="page-header__title">
						<h1>Shopping Cart</h1>
					</div>
				</div>
			</div>
			<div class="cart block">
				<div class="container">
					<table class="cart__table cart-table">
						<thead class="cart-table__head">
							<tr class="cart-table__row">
								<th class="cart-table__column cart-table__column--image">Image</th>
								<th class="cart-table__column cart-table__column--product">Product</th>
								<th class="cart-table__column cart-table__column--price">Price</th>
								<th class="cart-table__column cart-table__column--quantity">Quantity</th>
								<th class="cart-table__column cart-table__column--total">Total</th>
								<th class="cart-table__column cart-table__column--remove"></th>
							</tr>
						</thead>
						<tbody class="cart-table__body">
							<c:if test="${cart == null ||  cart.productDto.values().size() == 0}">
								<tr>
									<td style="color: red; text-align: center; font-weight: bold; padding: 10px" colspan="6">Bạn chưa có sản phẩm</td>
								</tr>
							</c:if>
							<c:forEach items="${cart.productDto.values()}" var="prodDTO">
								<tr class="cart-table__row">
									<td class="cart-table__column cart-table__column--image">
										<div class="product-image">
											<a href="" class="product-image__body">
												<img class="product-image__img" src="/images/products/${prodDTO.product.category.producer.name.toLowerCase()}/${prodDTO.product.photo}" alt="">
											</a>
										</div>
									</td>
									<td class="cart-table__column cart-table__column--product">
										<a href="" class="cart-table__product-name">${prodDTO.product.name}</a>
									</td>
									<td class="cart-table__column cart-table__column--price" data-title="Price">
										<fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice}" />
										VNĐ
									</td>
									<td class="cart-table__column cart-table__column--quantity" data-title="Quantity">
										<div class="input-number">
											<input class="form-control input-number__input" id="number-${prodDTO.product.id }" type="number" min="1" value="${prodDTO.quantity }">
											<div class="input-number__add"></div>
											<div class="input-number__sub"></div>
										</div>
									</td>
									<td class="cart-table__column cart-table__column--total" data-title="Total">
										<fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice * prodDTO.quantity}" />
										VNĐ
									</td>
									<td class="cart-table__column cart-table__column--remove">
										<button type="button" class="btn btn-light btn-sm btn-svg-icon text-success" data-toggle="tooltip" data-placement="top" title="Cập nhật" onclick="themVaoGioHang(updateCart(${prodDTO.product.id }))">
											<i class="fa fa-check"></i>
										</button>

										<button type="button" class="btn btn-light btn-sm btn-svg-icon text-danger" data-toggle="tooltip" data-placement="bottom" title="Xóa" onclick="deleteProductCart(${prodDTO.product.id })">
											<i class="fa fa-times"></i>
										</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="cart__actions d-flex justify-content-end">
						
						<div class="cart__buttons">
							<a href="/" class="btn btn-primary">Tiếp tục mua sắm</a>
							<!-- <a href="" class="btn btn-primary cart__update-button">Update Cart</a> -->
						</div>
					</div>
					<div class="row justify-content-end pt-5">
						<div class="col-12 col-md-7 col-lg-6 col-xl-6">
							<div class="card">
								<div class="card-body">
									<h3 class="card-title">Thông tin thanh toán</h3>
									<table class="cart__totals">
										<thead class="cart__totals-header">
											<tr>
												<th>Số lượng sản phẩm</th>
												<td>${cart.number}</td>
											</tr>
										</thead>
										<tbody class="cart__totals-body">
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
										<tfoot class="cart__totals-footer">
											<tr>
												<th>Tổng tiền cần thanh toán</th>
												<td class="text-danger">
													<fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.total}" />
													VNĐ
												</td>
											</tr>
										</tfoot>
									</table>
									<a class="btn btn-primary btn-xl btn-block cart__checkout-button" href="/check_out">Thanh toán</a>
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
		$(function () {
		  $('[data-toggle="tooltip"]').tooltip()
		})
		svg4everybody();
	</script>
</body>
</html>
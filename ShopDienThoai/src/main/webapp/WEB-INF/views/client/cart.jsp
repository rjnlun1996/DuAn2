<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
									<a href="index.html">Home</a>
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
							<tr class="cart-table__row">
								<td class="cart-table__column cart-table__column--image">
									<div class="product-image">
										<a href="" class="product-image__body">
											<img class="product-image__img" src="images/products/product-1.jpg" alt="">
										</a>
									</div>
								</td>
								<td class="cart-table__column cart-table__column--product">
									<a href="" class="cart-table__product-name">Electric Planer Brandix KL370090G 300 Watts</a>
									<ul class="cart-table__options">
										<li>Color: Yellow</li>
										<li>Material: Aluminium</li>
									</ul>
								</td>
								<td class="cart-table__column cart-table__column--price" data-title="Price">$699.00</td>
								<td class="cart-table__column cart-table__column--quantity" data-title="Quantity">
									<div class="input-number">
										<input class="form-control input-number__input" type="number" min="1" value="2">
										<div class="input-number__add"></div>
										<div class="input-number__sub"></div>
									</div>
								</td>
								<td class="cart-table__column cart-table__column--total" data-title="Total">$1,398.00</td>
								<td class="cart-table__column cart-table__column--remove">
									<button type="button" class="btn btn-light btn-sm btn-svg-icon">
										<svg width="12px" height="12px">
                                    <use xlink:href="images/sprite.svg#cross-12"></use>
                                 </svg>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="cart__actions">
						<form class="cart__coupon-form">
							<label for="input-coupon-code" class="sr-only">Password</label>
							<input type="text" class="form-control" id="input-coupon-code" placeholder="Coupon Code">
							<button type="submit" class="btn btn-primary">Apply Coupon</button>
						</form>
						<div class="cart__buttons">
							<a href="index.html" class="btn btn-light">Continue Shopping</a>
							<a href="" class="btn btn-primary cart__update-button">Update Cart</a>
						</div>
					</div>
					<div class="row justify-content-end pt-5">
						<div class="col-12 col-md-7 col-lg-6 col-xl-5">
							<div class="card">
								<div class="card-body">
									<h3 class="card-title">Cart Totals</h3>
									<table class="cart__totals">
										<thead class="cart__totals-header">
											<tr>
												<th>Subtotal</th>
												<td>$5,877.00</td>
											</tr>
										</thead>
										<tbody class="cart__totals-body">
											<tr>
												<th>Shipping</th>
												<td>
													$25.00
													<div class="cart__calc-shipping">
														<a href="#">Calculate Shipping</a>
													</div>
												</td>
											</tr>
											<tr>
												<th>Tax</th>
												<td>$0.00</td>
											</tr>
										</tbody>
										<tfoot class="cart__totals-footer">
											<tr>
												<th>Total</th>
												<td>$5,902.00</td>
											</tr>
										</tfoot>
									</table>
									<a class="btn btn-primary btn-xl btn-block cart__checkout-button" href="checkout.html">Proceed to checkout</a>
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
	<script>
		svg4everybody();
	</script>
</body>
</html>
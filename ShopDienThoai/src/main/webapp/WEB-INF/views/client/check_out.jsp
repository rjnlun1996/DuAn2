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
								<li class="breadcrumb-item active" aria-current="page">Checkout</li>
							</ol>
						</nav>
					</div>
					<div class="page-header__title">
						<h1>Checkout</h1>
					</div>
				</div>
			</div>
			<div class="checkout block">
				<div class="container">
					<div class="row">
						<div class="col-12 col-lg-6 col-xl-7">
							<div class="card mb-lg-0">
								<div class="card-body">
									<h3 class="card-title">Billing details</h3>
									<div class="form-group">
										<label for="name"> Họ và Tên </label>
										<input type="text" class="form-control" id="name" placeholder="Họ và Tên ">
									</div>
									<div class="form-group">
										<label for="checkout-company-name">
											Company Name
											<span class="text-muted">(Optional)</span>
										</label>
										<input type="text" class="form-control" id="checkout-company-name" placeholder="Company Name">
									</div>
									<div class="form-group">
										<label for="checkout-country">Country</label>
										<select id="checkout-country" class="form-control form-control-select2">
											<option>Select a country...</option>
											<option>United States</option>
											<option>Russia</option>
											<option>Italy</option>
											<option>France</option>
											<option>Ukraine</option>
											<option>Germany</option>
											<option>Australia</option>
										</select>
									</div>
									<div class="form-group">
										<label for="checkout-street-address">Street Address</label>
										<input type="text" class="form-control" id="checkout-street-address" placeholder="Street Address">
									</div>
									<div class="form-group">
										<label for="checkout-address">
											Apartment, suite, unit etc.
											<span class="text-muted">(Optional)</span>
										</label>
										<input type="text" class="form-control" id="checkout-address">
									</div>
									<div class="form-group">
										<label for="checkout-city">Town / City</label>
										<input type="text" class="form-control" id="checkout-city">
									</div>
									<div class="form-group">
										<label for="checkout-state">State / County</label>
										<input type="text" class="form-control" id="checkout-state">
									</div>
									<div class="form-group">
										<label for="checkout-postcode">Postcode / ZIP</label>
										<input type="text" class="form-control" id="checkout-postcode">
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="checkout-email">Email address</label>
											<input type="email" class="form-control" id="checkout-email" placeholder="Email address">
										</div>
										<div class="form-group col-md-6">
											<label for="checkout-phone">Phone</label>
											<input type="text" class="form-control" id="checkout-phone" placeholder="Phone">
										</div>
									</div>
									<div class="form-group">
										<div class="form-check">
											<span class="form-check-input input-check">
												<span class="input-check__body">
													<input class="input-check__input" type="checkbox" id="checkout-create-account">
													<span class="input-check__box"></span>
													<svg class="input-check__icon" width="9px" height="7px">
                                             <use xlink:href="images/sprite.svg#check-9x7"></use>
                                          </svg>
												</span>
											</span>
											<label class="form-check-label" for="checkout-create-account">Create an account?</label>
										</div>
									</div>
								</div>
								<div class="card-divider"></div>
								<div class="card-body">
									<h3 class="card-title">Shipping Details</h3>
									<div class="form-group">
										<div class="form-check">
											<span class="form-check-input input-check">
												<span class="input-check__body">
													<input class="input-check__input" type="checkbox" id="checkout-different-address">
													<span class="input-check__box"></span>
													<svg class="input-check__icon" width="9px" height="7px">
                                             <use xlink:href="images/sprite.svg#check-9x7"></use>
                                          </svg>
												</span>
											</span>
											<label class="form-check-label" for="checkout-different-address">Ship to a different address?</label>
										</div>
									</div>
									<div class="form-group">
										<label for="checkout-comment">
											Order notes
											<span class="text-muted">(Optional)</span>
										</label>
										<textarea id="checkout-comment" class="form-control" rows="4"></textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6 col-xl-5 mt-4 mt-lg-0">
							<div class="card mb-0">
								<div class="card-body">
									<h3 class="card-title">Your Order</h3>
									<table class="checkout__totals">
										<thead class="checkout__totals-header">
											<tr>
												<th>Product</th>
												<th>Total</th>
											</tr>
										</thead>
										<tbody class="checkout__totals-products">
											<tr>
												<td>Electric Planer Brandix KL370090G 300 Watts × 2</td>
												<td>$1,398.00</td>
											</tr>
											<tr>
												<td>Undefined Tool IRadix DPS3000SY 2700 watts × 1</td>
												<td>$849.00</td>
											</tr>
											<tr>
												<td>Brandix Router Power Tool 2017ERXPK × 3</td>
												<td>$3,630.00</td>
											</tr>
										</tbody>
										<tbody class="checkout__totals-subtotals">
											<tr>
												<th>Subtotal</th>
												<td>$5,877.00</td>
											</tr>
											<tr>
												<th>Store Credit</th>
												<td>$-20.00</td>
											</tr>
											<tr>
												<th>Shipping</th>
												<td>$25.00</td>
											</tr>
										</tbody>
										<tfoot class="checkout__totals-footer">
											<tr>
												<th>Total</th>
												<td>$5,882.00</td>
											</tr>
										</tfoot>
									</table>
									<div class="payment-methods">
										<ul class="payment-methods__list">
											<li class="payment-methods__item payment-methods__item--active">
												<label class="payment-methods__item-header">
													<span class="payment-methods__item-radio input-radio">
														<span class="input-radio__body">
															<input class="input-radio__input" name="checkout_payment_method" type="radio" checked="checked">
															<span class="input-radio__circle"></span>
														</span>
													</span>
													<span class="payment-methods__item-title">Direct bank transfer</span>
												</label>
												<div class="payment-methods__item-container">
													<div class="payment-methods__item-description text-muted">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.</div>
												</div>
											</li>
											<li class="payment-methods__item">
												<label class="payment-methods__item-header">
													<span class="payment-methods__item-radio input-radio">
														<span class="input-radio__body">
															<input class="input-radio__input" name="checkout_payment_method" type="radio">
															<span class="input-radio__circle"></span>
														</span>
													</span>
													<span class="payment-methods__item-title">Check payments</span>
												</label>
												<div class="payment-methods__item-container">
													<div class="payment-methods__item-description text-muted">Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</div>
												</div>
											</li>
											<li class="payment-methods__item">
												<label class="payment-methods__item-header">
													<span class="payment-methods__item-radio input-radio">
														<span class="input-radio__body">
															<input class="input-radio__input" name="checkout_payment_method" type="radio">
															<span class="input-radio__circle"></span>
														</span>
													</span>
													<span class="payment-methods__item-title">Cash on delivery</span>
												</label>
												<div class="payment-methods__item-container">
													<div class="payment-methods__item-description text-muted">Pay with cash upon delivery.</div>
												</div>
											</li>
											<li class="payment-methods__item">
												<label class="payment-methods__item-header">
													<span class="payment-methods__item-radio input-radio">
														<span class="input-radio__body">
															<input class="input-radio__input" name="checkout_payment_method" type="radio">
															<span class="input-radio__circle"></span>
														</span>
													</span>
													<span class="payment-methods__item-title">PayPal</span>
												</label>
												<div class="payment-methods__item-container">
													<div class="payment-methods__item-description text-muted">Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="checkout__agree form-group">
										<div class="form-check">
											<span class="form-check-input input-check">
												<span class="input-check__body">
													<input class="input-check__input" type="checkbox" id="checkout-terms">
													<span class="input-check__box"></span>
													<svg class="input-check__icon" width="9px" height="7px">
                                             <use xlink:href="images/sprite.svg#check-9x7"></use>
                                          </svg>
												</span>
											</span>
											<label class="form-check-label" for="checkout-terms">
												I have read and agree to the website
												<a target="_blank" href="terms-and-conditions.html">terms and conditions</a>
												*
											</label>
										</div>
									</div>
									<button type="submit" class="btn btn-primary btn-xl btn-block">Place Order</button>
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
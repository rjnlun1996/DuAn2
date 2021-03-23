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
								<li class="breadcrumb-item active" aria-current="page">Wish List</li>
							</ol>
						</nav>
					</div>
					<div class="page-header__title">
						<h1>Wish List</h1>
					</div>
				</div>
			</div>
			<div class="block">
				<div class="container">
					<table class="wishlist">
						<thead class="wishlist__head">
							<tr class="wishlist__row">
								<th class="wishlist__column wishlist__column--image">Image</th>
								<th class="wishlist__column wishlist__column--product">Product</th>
								<th class="wishlist__column wishlist__column--price">Price</th>
								<th class="wishlist__column wishlist__column--tocart"></th>
								<th class="wishlist__column wishlist__column--remove"></th>
							</tr>
						</thead>
						<tbody class="wishlist__body">


							<tr class="wishlist__row">
								<td class="wishlist__column wishlist__column--image">
									<div class="product-image">
										<a href="" class="product-image__body">
											<img class="product-image__img" src="images/products/product-5.jpg" alt="">
										</a>
									</div>
								</td>
								<td class="wishlist__column wishlist__column--product">
									<a href="" class="wishlist__product-name">Brandix Router Power Tool 2017ERXPK</a>
									<div class="wishlist__product-rating">
										<div class="rating">
											<div class="rating__body">
												<svg class="rating__star rating__star--active" width="13px" height="12px">
                                          <g class="rating__fill">
                                             <use xlink:href="images/sprite.svg#star-normal"></use>
                                          </g>
                                          <g class="rating__stroke">
                                             <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                          </g>
                                       </svg>
												<div class="rating__star rating__star--only-edge rating__star--active">
													<div class="rating__fill">
														<div class="fake-svg-icon"></div>
													</div>
													<div class="rating__stroke">
														<div class="fake-svg-icon"></div>
													</div>
												</div>
												<svg class="rating__star rating__star--active" width="13px" height="12px">
                                          <g class="rating__fill">
                                             <use xlink:href="images/sprite.svg#star-normal"></use>
                                          </g>
                                          <g class="rating__stroke">
                                             <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                          </g>
                                       </svg>
												<div class="rating__star rating__star--only-edge rating__star--active">
													<div class="rating__fill">
														<div class="fake-svg-icon"></div>
													</div>
													<div class="rating__stroke">
														<div class="fake-svg-icon"></div>
													</div>
												</div>
												<svg class="rating__star rating__star--active" width="13px" height="12px">
                                          <g class="rating__fill">
                                             <use xlink:href="images/sprite.svg#star-normal"></use>
                                          </g>
                                          <g class="rating__stroke">
                                             <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                          </g>
                                       </svg>
												<div class="rating__star rating__star--only-edge rating__star--active">
													<div class="rating__fill">
														<div class="fake-svg-icon"></div>
													</div>
													<div class="rating__stroke">
														<div class="fake-svg-icon"></div>
													</div>
												</div>
												<svg class="rating__star rating__star--active" width="13px" height="12px">
                                          <g class="rating__fill">
                                             <use xlink:href="images/sprite.svg#star-normal"></use>
                                          </g>
                                          <g class="rating__stroke">
                                             <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                          </g>
                                       </svg>
												<div class="rating__star rating__star--only-edge rating__star--active">
													<div class="rating__fill">
														<div class="fake-svg-icon"></div>
													</div>
													<div class="rating__stroke">
														<div class="fake-svg-icon"></div>
													</div>
												</div>
												<svg class="rating__star rating__star--active" width="13px" height="12px">
                                          <g class="rating__fill">
                                             <use xlink:href="images/sprite.svg#star-normal"></use>
                                          </g>
                                          <g class="rating__stroke">
                                             <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                          </g>
                                       </svg>
												<div class="rating__star rating__star--only-edge rating__star--active">
													<div class="rating__fill">
														<div class="fake-svg-icon"></div>
													</div>
													<div class="rating__stroke">
														<div class="fake-svg-icon"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="wishlist__product-rating-legend">11 Reviews</div>
									</div>
								</td>

								<td class="wishlist__column wishlist__column--price">$1,210.00</td>
								<td class="wishlist__column wishlist__column--tocart">
									<button type="button" class="btn btn-primary btn-sm">Add To Cart</button>
								</td>
								<td class="wishlist__column wishlist__column--remove">
									<button type="button" class="btn btn-light btn-sm btn-svg-icon">
										<svg width="12px" height="12px">
                                    <use xlink:href="images/sprite.svg#cross-12"></use>
                                 </svg>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
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
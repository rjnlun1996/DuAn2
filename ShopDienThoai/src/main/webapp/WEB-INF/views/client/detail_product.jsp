<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
									<a href="/">Trang Chủ</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item">
									<a href="">${product.category.producer.name }</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
								<li class="breadcrumb-item active" aria-current="page">${product.name }</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
			<div class="block">
				<div class="container">
					<div class="product product--layout--standard" data-layout="standard">
						<div class="product__content">
							<!-- .product__gallery -->
							<div class="product__gallery">
								<div class="product-gallery">
									<div class="product-gallery__featured">
										<button class="product-gallery__zoom">
											<svg width="24px" height="24px">
                                       <use xlink:href="images/sprite.svg#zoom-in-24"></use>
                                    </svg>
										</button>
										<div class="owl-carousel" id="product-image">
											<div class="product-image product-image--location--gallery">
												<a href="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}" data-width="700" data-height="700" class="product-image__body" target="_blank">
													<img class="product-image__img" src="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}" alt="">
												</a>
											</div>
											<div class="product-image product-image--location--gallery">

												<a href="images/products/product-16-1.jpg" data-width="700" data-height="700" class="product-image__body" target="_blank">
													<img class="product-image__img" src="images/products/product-16-1.jpg" alt="">
												</a>
											</div>
											<div class="product-image product-image--location--gallery">

												<a href="images/products/product-16-2.jpg" data-width="700" data-height="700" class="product-image__body" target="_blank">
													<img class="product-image__img" src="images/products/product-16-2.jpg" alt="">
												</a>
											</div>
											<div class="product-image product-image--location--gallery">

												<a href="images/products/product-16-3.jpg" data-width="700" data-height="700" class="product-image__body" target="_blank">
													<img class="product-image__img" src="images/products/product-16-3.jpg" alt="">
												</a>
											</div>
											<div class="product-image product-image--location--gallery">

												<a href="images/products/product-16-4.jpg" data-width="700" data-height="700" class="product-image__body" target="_blank">
													<img class="product-image__img" src="images/products/product-16-4.jpg" alt="">
												</a>
											</div>
										</div>
									</div>
									<div class="product-gallery__carousel">
										<div class="owl-carousel" id="product-carousel">
											<a href="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}" class="product-image product-gallery__carousel-item">
												<div class="product-image__body">
													<img class="product-image__img product-gallery__carousel-image" src="/images/products/${product.category.producer.name.toLowerCase()}/${product.photo}" alt="">
												</div>
											</a>

										</div>
									</div>
								</div>
							</div>
							<!-- .product__gallery / end -->
							<!-- .product__info -->
							<div class="product__info">
								<div class="product__wishlist-compare">
									<button type="button" class="btn btn-sm btn-light btn-svg-icon" data-toggle="tooltip" data-placement="right" title="Wishlist">
										<svg width="16px" height="16px">
                                    <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                 </svg>
									</button>
									<button type="button" class="btn btn-sm btn-light btn-svg-icon" data-toggle="tooltip" data-placement="right" title="Compare">
										<svg width="16px" height="16px">
                                    <use xlink:href="images/sprite.svg#compare-16"></use>
                                 </svg>
									</button>
								</div>
								<h1 class="product__name">${product.name }</h1>
								<div class="product__rating">
									<div class="product__rating-stars">
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
									</div>
									<div class="product__rating-legend">
										<a href="">${product.views } Views</a>
									</div>
								</div>
								<div class="product__description">${product.description}</div>
								<ul class="product__meta">
								</ul>
							</div>
							<!-- .product__info / end -->
							<!-- .product__sidebar -->
							<div class="product__sidebar">
								<div class="product__availability">
									Availability:
									<span class="text-success">In Stock</span>
								</div>
								<div class="product__prices">
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.importPrice}" />
									VNĐ
								</div>
								<!-- .product__options -->
								<form class="product__options">
									<div class="form-group product__option">
										<label class="product__option-label">Màu sắc</label>
										<div class="input-radio-color">
											<div class="input-radio-color__list">
												<label class="input-radio-color__item input-radio-color__item--white" style="color: #fff;" data-toggle="tooltip" title="White">
													<input type="radio" name="color">
													<span></span>
												</label>
												<label class="input-radio-color__item" style="color: #ffd333;" data-toggle="tooltip" title="Yellow">
													<input type="radio" name="color">
													<span></span>
												</label>
												<label class="input-radio-color__item" style="color: #ff4040;" data-toggle="tooltip" title="Red">
													<input type="radio" name="color">
													<span></span>
												</label>
												<label class="input-radio-color__item input-radio-color__item--disabled" style="color: #4080ff;" data-toggle="tooltip" title="Blue">
													<input type="radio" name="color" disabled="disabled">
													<span></span>
												</label>
											</div>
										</div>
									</div>

									<div class="form-group product__option">
										<label class="product__option-label" for="product-quantity">Số lượng</label>
										<div class="product__actions">
											<div class="product__actions-item">
												<div class="input-number product__quantity">
													<input id="product-quantity" class="input-number__input form-control form-control-lg" type="number" min="1" value="1">
													<div class="input-number__add"></div>
													<div class="input-number__sub"></div>
												</div>
											</div>
											<div class="product__actions-item product__actions-item--addtocart">
												<button class="btn btn-primary btn-lg">Thêm Vào Giỏ Hàng</button>
											</div>
											<div class="product__actions-item product__actions-item--wishlist">
												<button type="button" class="btn btn-secondary btn-svg-icon btn-lg" data-toggle="tooltip" title="Wishlist">
													<svg width="16px" height="16px">
                                             <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                          </svg>
												</button>
											</div>
										</div>
									</div>
								</form>
								<!-- .product__options / end -->
							</div>
							<!-- .product__end -->

						</div>
					</div>

				</div>
			</div>

			<!-- .block-products-carousel -->
			<div class="block block-products-carousel" data-layout="grid-5" data-mobile-grid-columns="2">
				<div class="container">
					<div class="block-header">
						<h3 class="block-header__title">Sản phẩm tương tự</h3>
						<div class="block-header__divider"></div>
						<div class="block-header__arrows-list">
							<button class="block-header__arrow block-header__arrow--left" type="button">
								<svg width="7px" height="11px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-left-7x11"></use>
                           </svg>
							</button>
							<button class="block-header__arrow block-header__arrow--right" type="button">
								<svg width="7px" height="11px">
                              <use xlink:href="images/sprite.svg#arrow-rounded-right-7x11"></use>
                           </svg>
							</button>
						</div>
					</div>
					<div class="block-products-carousel__slider">
						<div class="block-products-carousel__preloader"></div>
						<div class="owl-carousel">
							 <%-- <c:forEach var="prod" items="${sameProducts }">  --%>
							 <c:forEach  items="${sameProducts }" var="prod"> 
							<div class="block-products-carousel__column">
								<div class="block-products-carousel__cell">

									 
										<div class="product-card product-card--hidden-actions">
											<button class="product-card__quickview" type="button">
												<svg width="16px" height="16px">
                                       <use xlink:href="images/sprite.svg#quickview-16"></use>
                                    </svg>
												<span class="fake-svg-icon"></span>
											</button>
											<div class="product-card__image product-image">
												<a href="product.html" class="product-image__body">
													<img class="product-image__img" src="/images/products/${prod.category.producer.name.toLowerCase()}/${prod.photo}" alt="">
												</a>
											</div>
											<div class="product-card__info">
												<div class="product-card__name">
													<a href="/detail_product?productId=${prod.id}">${prod.name}</a>
												</div>
												<div class="product-card__rating">
													<div class="product-card__rating-stars">
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
													</div>
													<div class="product-card__rating-legend"> ${prod.views } Views</div>
												</div>
												<ul class="product-card__features-list">
													<li>Speed: 750 RPM</li>
													<li>Power Source: Cordless-Electric</li>
													<li>Battery Cell Type: Lithium</li>
													<li>Voltage: 20 Volts</li>
													<li>Battery Capacity: 2 Ah</li>
												</ul>
											</div>
											<div class="product-card__actions">
												<div class="product-card__availability">
													Availability:
													<span class="text-success">In Stock</span>
												</div>
												<div class="product-card__prices"><fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.importPrice}" />
									VNĐ</div>
												<div class="product-card__buttons">
													<button class="btn btn-primary product-card__addtocart" type="button">Thêm vào giỏ hàng</button>
													<button class="btn btn-secondary product-card__addtocart product-card__addtocart--list" type="button">Add To Cart</button>
													<button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__wishlist" type="button">
														<svg width="16px" height="16px">
                                             <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                          </svg>
														<span class="fake-svg-icon fake-svg-icon--wishlist-16"></span>
													</button>
													
												</div>
											</div>
										</div>
 
								</div>
							</div>
							
									 </c:forEach> 
						</div>
					</div>
				</div>
			</div>
			<!-- .block-products-carousel / end -->
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
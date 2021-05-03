<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="format-detection" content="telephone=no">
<title>HOPE ONLINE</title>
<link rel="icon" type="image/png" href="/images/favicon.ico">

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


<style type="text/css">
body {
	font-family: 'Source Serif Pro', serif;
}

.block-slideshow__slide-image {
	background-size: contain !important;
}
</style>

</head>
<body>
	<!-- site -->
	<div class="site">

		<!-- mobile site__header -->
		<jsp:include page="layouts/header_mobile.jsp"></jsp:include>
		<!-- mobile site__header / end -->

		<header class="site__header d-lg-block d-none">
			<div class="site-header">
				<!-- header -->
				<jsp:include page="layouts/header.jsp"></jsp:include>
				<!-- header / end -->

				<div class="site-header__nav-panel">
					<jsp:include page="layouts/nav_index.jsp"></jsp:include>
				</div>
			</div>
		</header>
		<!-- site__body -->
		<div class="site__body">
			<!-- .block-slideshow -->
			<div class="block-slideshow block-slideshow--layout--with-departments block">
				<div class="container">
					<div class="row">
						<div class="col-lg-3 d-none d-lg-block"></div>
						<div class="col-12 col-lg-9">
							<div class="block-slideshow__body">
								<div class="owl-carousel">
									<a class="block-slideshow__slide" href="">
										<div class="block-slideshow__slide-image block-slideshow__slide-image--desktop" style="background-image: url('images/logos/banner2.jpg')"></div>
										<div class="block-slideshow__slide-image block-slideshow__slide-image--mobile" style="background-image: url('images/logos/banner2.jpg')"></div>
									</a>


									<a class="block-slideshow__slide" href="">
										<div class="block-slideshow__slide-image block-slideshow__slide-image--desktop" style="background-image: url('images/logos/banner3.jpg')"></div>
										<div class="block-slideshow__slide-image block-slideshow__slide-image--mobile" style="background-image: url('images/logos/banner3.jpg')"></div>
									</a>

									<a class="block-slideshow__slide" href="">
										<div class="block-slideshow__slide-image block-slideshow__slide-image--desktop" style="background-image: url('images/logos/banner1.jpg')"></div>
										<div class="block-slideshow__slide-image block-slideshow__slide-image--mobile" style="background-image: url('images/logos/banner1.jpg')"></div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- .block-slideshow / end -->
			<!-- .block-features -->

			<!-- .block-features / end -->
			<!-- .block-products-carousel -->
			<div class="block block-products-carousel" data-layout="grid-4" data-mobile-grid-columns="2">
				<div class="container">
					<div class="block-header">
						<h3 class="block-header__title">Sản Phẩm Giảm Giá</h3>
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
							<c:forEach items="${saleProduct }" var="prod" varStatus="loop">
								<div class="block-products-carousel__column">
									<div class="block-products-carousel__cell">
										<div class="product-card product-card--hidden-actions">
											<button class="product-card__quickview" type="button">
												<svg width="16px" height="16px">
                                       <use xlink:href="images/sprite.svg#quickview-16"></use>
                                    </svg>
												<span class="fake-svg-icon"></span>
											</button>
											<div class="product-card__badges-list">
												<div class="product-card__badge product-card__badge--sale">Sale</div>
											</div>
											<div class="product-card__image product-image">
												<a href="/detail_product?productId=${prod.id}" class="product-image__body">
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
																<svg class="rating__star" width="13px" height="12px">
                                                   <g class="rating__fill">
                                                      <use xlink:href="images/sprite.svg#star-normal"></use>
                                                   </g>
                                                   <g class="rating__stroke">
                                                      <use xlink:href="images/sprite.svg#star-normal-stroke"></use>
                                                   </g>
                                                </svg>
																<div class="rating__star rating__star--only-edge">
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
													<div class="product-card__rating-legend">9 Reviews</div>
												</div>
											</div>
											<div class="product-card__actions">
												<div class="product-card__availability">
													Availability:
													<span class="text-success">In Stock</span>
												</div>
												<div class="product-card__prices">
													<span class="product-card__new-price">
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.importPrice - prod.importPrice * listDiscount.get(loop.index) / 100}" />
														VNĐ
													</span>
													<span class="product-card__old-price">
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.importPrice}" />
														VNĐ
													</span>

												</div>
												<div class="product-card__buttons">
													<button class="btn btn-primary product-card__addtocart" type="button" style="font-size: 12px" onclick="themVaoGioHang(addCartIndex(${prod.id}))">Thêm Vào Giỏ Hàng</button>
													<button class="btn btn-secondary product-card__addtocart product-card__addtocart--list" type="button">Thêm Vào Giỏ Hàng</button>
													<button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__wishlist" type="button">
														<svg width="16px" height="16px">
                                             <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                          </svg>
														<span class="fake-svg-icon fake-svg-icon--wishlist-16"></span>
													</button>
													<button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__compare" type="button">
														<svg width="16px" height="16px">
                                             <use xlink:href="images/sprite.svg#compare-16"></use>
                                          </svg>
														<span class="fake-svg-icon fake-svg-icon--compare-16"></span>
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
			<!-- .block-banner -->
			<div class="block block-banner">
				<div class="container">
					<a href="" class="block-banner__body">
						<div class="block-banner__image block-banner__image--desktop" style="background-image: url('images/logos/logo-1.png')"></div>
						
					</a>
				</div>
			</div>
			<!-- .block-banner / end -->
			<!-- .block-products -->
			<c:forEach items="${producers }" var="pro">
				<div class="block block-products block-products--layout--large-first" data-mobile-grid-columns="2">
					<div class="container">
						<div class="block-header">
							<h3 class="block-header__title">Điện Thoại ${pro.name }</h3>
							<div class="block-header__divider"></div>
						</div>
						<div class="block-products__body">
							<div class="block-products__list">
								<c:forEach var="cate" items="${pro.categories }">
									<c:forEach var="prod" items="${cate.products }">
										<div class="block-products__list-item">
											<div class="product-card product-card--hidden-actions">
												<button class="product-card__quickview" type="button">
													<svg width="16px" height="16px">
                                    <use xlink:href="images/sprite.svg#quickview-16"></use>
                                 </svg>
													<span class="fake-svg-icon"></span>
												</button>
												<div class="product-card__badges-list">
													<div class="product-card__badge product-card__badge--hot">Hot</div>
												</div>
												<div class="product-card__image product-image">
													<a href="/detail_product?productId=${prod.id}" class="product-image__body">
														<img class="product-image__img" src="/images/products/${prod.category.producer.name.toLowerCase()}/${prod.photo}" alt="">
													</a>
												</div>
												<div class="product-card__info">
													<div class="product-card__name">
														<a href="/detail_product?productId=${prod.id}">${prod.name }</a>
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
														<div class="product-card__rating-legend">11 Reviews</div>
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
													<div class="product-card__prices">
														<fmt:formatNumber type="number" maxFractionDigits="3" value="${prod.importPrice}" />
														VNĐ
													</div>
													<div class="product-card__buttons">
														<button class="btn btn-primary product-card__addtocart" type="button" onclick="themVaoGioHang(addCartIndex(${prod.id}))">Thêm Vào Giỏ Hàng</button>
														<button class="btn btn-secondary product-card__addtocart product-card__addtocart--list" type="button">Thêm Vào Giỏ Hàng</button>
														<button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__wishlist" type="button">
															<svg width="16px" height="16px">
                                          <use xlink:href="images/sprite.svg#wishlist-16"></use>
                                       </svg>
															<span class="fake-svg-icon fake-svg-icon--wishlist-16"></span>
														</button>
														<button class="btn btn-light btn-svg-icon btn-svg-icon--fake-svg product-card__compare" type="button">
															<svg width="16px" height="16px">
                                          <use xlink:href="images/sprite.svg#compare-16"></use>
                                       </svg>
															<span class="fake-svg-icon fake-svg-icon--compare-16"></span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>			
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
	<jsp:include page="layouts/menu_mobile.jsp"></jsp:include>
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
	<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script src="js/cart.js"></script>
	<script>
		svg4everybody();
	</script>
</body>
</html>
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
<title>HopeOnline -- GIỚI THIỆU</title>
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
	/* font-family: 'Source Serif Pro', serif; */
	font-family: rl_book, tahoma, arial, helvetica, sans-serif;
	/* line-height: 38px; */
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
					<jsp:include page="layouts/nav.jsp"></jsp:include>
				</div>
			</div>
		</header>

		<!-- desktop site__header / end -->
		<!-- site__body -->
		<div class="site__body">
			<div class="block about-us">
				<div class="about-us__image"></div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-12 col-xl-10">

							<div class="about-us__team">
								<h2 class="about-us__team-title">VỀ CHÚNG TÔI</h2>

								<div class="about-us__team-subtitle text-muted" style="font-size: 20px; line-height: 40px;">
									Website
									<a href="/">
										<strong>HOPE ONLINE</strong>
									</a>
									ra đời nhằm giúp cho khách hàng có thể dễ dàng đặt mua điện thoại di động qua mạng, bạn không cần phải mất công đi đến các cửa hàng hay siêu thị nữa, bạn chỉ việc ngồi tại nhà lựa chọn kỹ lưỡng và đặt mua qua mạng internet, sản phẩm sẽ được chuyển đến tận nhà cho bạn, sau khi sản phẩm được chuyển đến nơi, khách hàng có thể kiểm tra kỹ lưỡng rồi mới phải thanh toán.
								</div>
							</div>

							<div class="about-us__team">
								<h2 class="about-us__team-title">CHÚNG TÔI CUNG CẤP CÁC DÒNG SẢN PHẨM CỦA</h2>

								<!-- .block-products / end -->
								<!-- .block-categories -->

								<div class="container">
									<div class="block-header"></div>
									<div class="block-categories__list">
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Samsung.png" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Samsung</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Apple.jpg" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Apple</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Oppo.jpg" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Oppo</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Huawei.jpg" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Huawei</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/vivo2.png" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Vivo</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Vsmart.jpg" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Vsmart</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Xiaomi2.jpg" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Xiaomi</a>
													</div>

												</div>
											</div>
										</div>
										<div class="block-categories__item category-card category-card--layout--classic">
											<div class="category-card__body">
												<div class="category-card__image">
													<a href="">
														<img src="images/producer/Sony.png" alt="">
													</a>
												</div>
												<div class="category-card__content">
													<div class="category-card__name">
														<a href="">Sony</a>
													</div>

												</div>
											</div>
										</div>



									</div>
								</div>

								<!-- .block-categories / end -->
								<!-- .block-products-carousel -->


							</div>
							<div class="about-us__team">


								<div class="about-us__team-subtitle text-muted" style="font-size: 20px; line-height: 40px;">Nếu bạn thích và tin yêu sản phẩm này của chúng tôi. Có thể gửi cho bạn bè cùng sử dụng. Chúng tôi vô cùng biết ơn về điều đó !</div>
								<a href="/contact">
									<button type="button" class="btn btn-outline-dark">LIÊN HỆ VỚI CHÚNG TÔI</button>
								</a>

							</div>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- site__body / end -->
	<!-- site__footer -->
	<!-- desktop site__header / end -->
	<!-- site__body -->
	<!--  <div class="site__body">
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
									<a href="">Giới thiệu</a>
									<svg class="breadcrumb-arrow" width="6px" height="9px">
                                 <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                              </svg>
								</li>
							</ol>
						</nav>
					</div>

				</div>
			</div>
            <div class="container">
               <div class="row">
                  <div class="col-12 col-lg-4 order-1 order-lg-0">
                     <div class="block block-sidebar block-sidebar--position--start">
                    
                        <div class="block-sidebar__item">
                           <div class="widget-aboutus widget">
                              <h4 class="widget__title">GIỚI THIỆU CHUNG</h4>
                              <div class="widget__title_line" style="border-top:2px solid #f48200;"></div>
                              <div class="widget-aboutus__text">Website <strong>HOPE ONLINE</strong> ra đời nhằm giúp cho khách hàng có thể dễ dàng đặt mua điện thoại di động qua mạng, bạn không cần phải mất công đi đến các cửa hàng hay siêu thị nữa, bạn chỉ việc ngồi tại nhà lựa chọn kỹ lưỡng và đặt mua qua mạng internet, sản phẩm sẽ được chuyển đến tận nhà cho bạn, sau khi sản phẩm được chuyển đến nơi, khách hàng có thể kiểm tra kỹ lưỡng rồi mới phải thanh toán. </div>
                         
                           </div>
                        </div>
                     
                        <div class="block-sidebar__item">
                           <div class="widget-posts widget">
                              <h4 class="widget__title">Chúng tôi cung cấp các dòng sản phẩm của: </h4>
                               <div class="widget__title_line" style="border-top:2px solid #f48200;"></div>
                              <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Samsung.png" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Samsung </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                              
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Oppo.jpg" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Oppo </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Apple.jpg" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Apple </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Huawei.jpg" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Huawei  </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/vivo2.png" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Vivo </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Sony.png" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Sony </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Xiaomi2.jpg" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Xiaomi </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                               <div class="widget-posts__list">
                                 <div class="widget-posts__item">
                                    <div class="widget-posts__image"><a href=""><img src="images/producer/Vsmart.jpg" alt=""></a></div>
                                    <div class="widget-posts__info">
                                       <div class="widget-posts__name"><a href="">Vsmart </a></div>
                 
                                    </div>
                                 </div>
                              
                              </div>
                           </div>
                        </div>
                       <div class="block-sidebar__item">
                           <div class="widget-aboutus widget">
                              <h4 class="widget__title"></h4>
                              <div class="widget__title_line" style="border-top:2px solid #f48200;"></div>
                              <div class="widget-aboutus__text">Nếu bạn thích và tin yêu sản phẩm này của chúng tôi. Có thể gửi cho bạn bè cùng sử dụng. Chúng tôi vô cùng biết ơn về điều đó !</div>
                         
                           </div>
                        </div>
                      
                     </div>
                  </div>
                  <div class="col-12 col-lg-8">
                     <div class="block">
                        <div class="posts-view">
                           <div class="posts-view__list posts-list posts-list--layout--classic">
                              <div class="posts-list__body">
                                 <div class="posts-list__item">
                                    <div class="post-card post-card--layout--grid post-card--size--lg">
                                       <div class="post-card__image"><a href=""><img src="images/banners/ab1.png" alt=""></a></div>
                                       
                                    </div>
                                 </div>
                                 <div class="posts-list__item">
                                    <div class="post-card post-card--layout--grid post-card--size--lg">
                                       <div class="post-card__image"><a href=""><img src="images/banners/ab2.jpg" alt=""></a></div>
                                   
                                    </div>
                                 </div>
                           <div class="posts-list__item">
                                    <div class="post-card post-card--layout--grid post-card--size--lg">
                                       <div class="post-card__image"><a href=""><img src="images/banners/tks.png" alt=""></a></div>
                                   
                                    </div>
                                 </div>
                         
                              </div>
                           </div>
                 
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div> -->

	<!-- site__body / end -->
	<!-- site__footer -->

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



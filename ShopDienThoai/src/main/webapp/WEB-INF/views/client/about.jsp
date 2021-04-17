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
<title>HopeOnline -- Giới thiệu</title>
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

		<!-- site__body -->
	         <!-- desktop site__header / end --><!-- site__body -->
         <div class="site__body">
            <div class="block about-us">
               <div class="about-us__image"></div>
               <div class="container">
                  <div class="row justify-content-center">
                     <div class="col-12 col-xl-10">
                        <div class="about-us__body">
                           <h1 class="about-us__title">Về chúng tôi</h1>
                           <div class="about-us__text typography">
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lacus metus, convallis ut leo nec, tincidunt eleifend justo. Ut felis orci, hendrerit a pulvinar et, gravida ac lorem. Sed vitae molestie sapien, at sollicitudin tortor.</p>
                              <p>Duis id volutpat libero, id vestibulum purus.Donec euismod accumsan felis,egestas lobortis velit tempor vitae. Integer eget velit fermentum, dignissim odio non, bibendum velit.</p>
                           </div>
                           <div class="about-us__team">
                              <h2 class="about-us__team-title">Meat Our Team</h2>
                              <div class="about-us__team-subtitle text-muted">Want to work in our friendly team?<br><a href="contact-us.html">Contact us</a> and we will consider your candidacy.</div>
                              <div class="about-us__teammates teammates">
                                 <div class="owl-carousel">
                                    <div class="teammates__item teammate">
                                       <div class="teammate__avatar"><img src="" alt=""></div>
                                       <div class="teammate__name">Michael Russo</div>
                                       <div class="teammate__position text-muted">Chief Executive Officer</div>
                                    </div>
                                    <div class="teammates__item teammate">
                                       <div class="teammate__avatar"><img src="images/teammates/teammate-2.jpg" alt=""></div>
                                       <div class="teammate__name">Katherine Miller</div>
                                       <div class="teammate__position text-muted">Marketing Officer</div>
                                    </div>
                                    <div class="teammates__item teammate">
                                       <div class="teammate__avatar"><img src="images/teammates/teammate-3.jpg" alt=""></div>
                                       <div class="teammate__name">Anthony Harris</div>
                                       <div class="teammate__position text-muted">Finance Director</div>
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



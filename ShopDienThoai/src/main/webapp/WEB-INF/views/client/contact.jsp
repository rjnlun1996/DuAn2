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
<title>HopeOnline -- Liên hệ</title>
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
                              <a href="">Liên hệ</a> 
                              <svg class="breadcrumb-arrow" width="6px" height="9px">
                                
                              </svg>
                          
                        </ol>
                     </nav>
                  </div>
                  <div class="page-header__title">
                     <h1>Contact Us</h1>
                  </div>
               </div>
            </div>
            <div class="block">
               <div class="container">
                  <div class="card mb-0 contact-us">
                     <div class="contact-us__map"><iframe src="../../maps/embed.html?q=Holbrook-Palmer%20Park&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe></div>
                     <div class="card-body">
                        <div class="contact-us__container">
                           <div class="row">
                              <div class="col-12 col-lg-6 pb-4 pb-lg-0">
                                 <h4 class="contact-us__header card-title">Our Address</h4>
                                 <div class="contact-us__address">
                                    <p>715 Fake Ave, Apt. 34, New York, NY 10021 USA<br>Email: stroyka@example.com<br>Phone Number: +1 754 000-00-00</p>
                                    <p><strong>Opening Hours</strong><br>Monday to Friday: 8am-8pm<br>Saturday: 8am-6pm<br>Sunday: 10am-4pm</p>
                                    <p><strong>Comment</strong><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit suscipit mi, non tempor nulla finibus eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                 </div>
                              </div>
                              <div class="col-12 col-lg-6">
                                 <h4 class="contact-us__header card-title">Leave us a Message</h4>
                                 <form>
                                    <div class="form-row">
                                       <div class="form-group col-md-6"><label for="form-name">Your Name</label> <input type="text" id="form-name" class="form-control" placeholder="Your Name"></div>
                                       <div class="form-group col-md-6"><label for="form-email">Email</label> <input type="email" id="form-email" class="form-control" placeholder="Email Address"></div>
                                    </div>
                                    <div class="form-group"><label for="form-subject">Subject</label> <input type="text" id="form-subject" class="form-control" placeholder="Subject"></div>
                                    <div class="form-group"><label for="form-message">Message</label> <textarea id="form-message" class="form-control" rows="4"></textarea></div>
                                    <button type="submit" class="btn btn-primary">Send Message</button>
                                 </form>
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



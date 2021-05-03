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
<title>HopeOnline -- LIÊN HỆ</title>
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
	font-family:rl_book,tahoma,arial,helvetica,sans-serif;
	/* line-height:38px; */
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
                     <h1 style="color:#666666">Liên hệ với chúng tôi</h1>
                  </div><br>
                  <h2 style="color:#666666">HOPE ONLINE</h2>
               </div>
            </div>
            <div class="block">
               <div class="container">
                <!--   <div class="card mb-0 contact-us"> -->
                    
                     <div class="card-body">
                      <!--   <div class="contact-us__container"> -->
                           <div class="row">
                              <div class="col-12 col-lg-6 pb-4 pb-lg-0">
                                 <h4 class="contact-us__header card-title">Địa chỉ</h4>
                                 <div class="contact-us__address">
                                    <p>391A Nam Kỳ Khởi Nghĩa, Phường 14, Quận 3, Thành phố Hồ Chí Minh<br><br>Email : Hopeonline321@gmail.com<br><br>Số điện thoại : 0969381853</p>
                                    <p><strong>Giờ mở cửa : </strong><br> 8:00 AM - 10:00 PM</p>
                                    
                                 </div>
                              </div>
                              <div class="col-12 col-lg-6 pb-4 pb-lg-0">
                               <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2669295095066!2d106.68008651474896!3d10.79085629231172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528d4a7c59c09%3A0x8e2f7cbc924be1db!2zMzkxYSBOYW0gS-G7syBLaOG7n2kgTmdoxKlhLCBQaMaw4budbmcgMTQsIFF14bqtbiAzLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1618402861346!5m2!1svi!2s" width="550" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe> 
                              </div>
                           </div>
                       <!--  </div> -->
                     </div>
                  <!-- </div> -->
                 <!--  <div class="card-body"> -->
                 <br>
                 <br>
                <div class="col-12 col-lg-12 pb-6 pb-lg-6">
                                 <h4 class="contact-us__header card-title" style="color:#666666">Để lại lời nhắn với chúng tôi</h4><br>
                                 <form>
                                    <div class="form-row">
                                       <div class="form-group col-md-6"><label for="form-name">Tên của bạn</label> <input style="border: 1px solid #007bff;" type="text" id="form-name" class="form-control" placeholder="Tên của bạn"></div>
                                       <div class="form-group col-md-6"><label for="form-email">Email</label> <input  style="border: 1px solid #007bff;" type="email" id="form-email" class="form-control" placeholder="Địa chỉ Email"></div>
                                    </div>
                                    <div class="form-group"><label for="form-subject">Tiêu đề</label> <input  style="border: 1px solid #007bff;" type="text" id="form-subject" class="form-control" placeholder="Tiêu đề"></div>
                                    <div class="form-group"><label for="form-message">Nội dung</label> <textarea  style="border: 1px solid #007bff;"  id="form-message" class="form-control" rows="8"></textarea></div>
                                    <button type="submit" class="btn btn-primary">Gửi</button>
                                 </form>
                              </div>
       <!--                        
         </div> -->
                 
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



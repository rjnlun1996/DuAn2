<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- data-sticky-mode - one of [pullToShow, alwaysOnTop] -->
<div class="nav-panel nav-panel--sticky" data-sticky-mode="pullToShow">
	<div class="nav-panel__container container">
		<div class="nav-panel__row">

			<!-- navbar tìm sản phẩm dựa trên loại sản phẩm -- start -->
			<jsp:include page="./nav_category.jsp"></jsp:include>
			<!-- navbar tìm sản phẩm dựa trên loại sản phẩm -- end -->

			<!-- .nav-links -->
			<div class="nav-panel__nav-links nav-links">
				<ul class="nav-links__list">

					<li class="nav-links__item">
						<a class="nav-links__item-link" href="/">
							<div class="nav-links__item-body">Trang chủ</div>
						</a>
					</li>
					<li class="nav-links__item">
						<a class="nav-links__item-link" href="/about">
							<div class="nav-links__item-body">Giới thiệu</div>
						</a>
					</li>
					<li class="nav-links__item">
						<a class="nav-links__item-link" href="/contact">
							<div class="nav-links__item-body">Liên hệ</div>
						</a>
					</li>


				</ul>
			</div>
			<!-- .nav-links / end -->

			<!-- navbar right  -- start -->
			<jsp:include page="./nav_right_cart.jsp"></jsp:include>
			<!-- navbar right -- end -->

		</div>
	</div>
</div>
<!-- desktop site__header / end -->

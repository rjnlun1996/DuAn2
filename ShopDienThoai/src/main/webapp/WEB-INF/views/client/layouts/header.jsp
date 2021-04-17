<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="site-header__middle container">
	<div class="site-header__logo">
		<a href="/">
			<!-- logo -->
			<img src="/images/logos/capture1.jpg" width="226px" height="46px">
                           
			<!-- logo / end -->
		</a>
	</div>
	<div class="site-header__search">
		<div class="search search--location--header">
			<div class="search__body">
				<form class="search__form" action="">
					<input class="search__input" name="search" placeholder="Tìm kiếm sản phẩm yêu thích của bạn" aria-label="Site search" type="text" autocomplete="off">
					<button class="search__button search__button--type--submit" type="submit">
						<svg width="20px" height="20px">
                                    <use xlink:href="images/sprite.svg#search-20"></use>
                                 </svg>
					</button>
					<div class="search__border"></div>
				</form>
				<div class="search__suggestions suggestions suggestions--location--header"></div>
			</div>
		</div>
	</div>
	<div class="site-header__phone">
		<div class="site-header__phone-title">DỊCH VỤ KHÁCH HÀNG</div>
		<div class="site-header__phone-number">1900 1084</div>
	</div>
</div>
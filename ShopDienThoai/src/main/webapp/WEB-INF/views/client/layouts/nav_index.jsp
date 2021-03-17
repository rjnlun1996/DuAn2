<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- data-sticky-mode - one of [pullToShow, alwaysOnTop] -->
<div class="nav-panel nav-panel--sticky" data-sticky-mode="pullToShow">
	<div class="nav-panel__container container">
		<div class="nav-panel__row">

			<!-- navbar tìm sản phẩm dựa trên loại sản phẩm -- start -->
			<jsp:include page="./nav_category_index.jsp"></jsp:include>
			<!-- navbar tìm sản phẩm dựa trên loại sản phẩm -- end -->

			<!-- .nav-links -->
			<div class="nav-panel__nav-links nav-links">
				<ul class="nav-links__list">

					<li class="nav-links__item">
						<a class="nav-links__item-link" href="../../item/stroyka-tools-store-html-template/23326943.html">
							<div class="nav-links__item-body">Trang chủ</div>
						</a>
					</li>
					
					<li class="nav-links__item nav-links__item--has-submenu">
						<a class="nav-links__item-link" href="shop-grid-3-columns-sidebar.html">
							<div class="nav-links__item-body">
								Sản phẩm
								<svg class="nav-links__item-arrow" width="9px" height="6px">
                                             <use xlink:href="images/sprite.svg#arrow-rounded-down-9x6"></use>
                                          </svg>
							</div>
						</a>
						<div class="nav-links__submenu nav-links__submenu--type--menu">
							<!-- .menu -->
							<div class="menu menu--layout--classic">
								<div class="menu__submenus-container"></div>
								<ul class="menu__list">
									<li class="menu__item">
										<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
										<div class="menu__item-submenu-offset"></div>
										<a class="menu__item-link" href="shop-grid-3-columns-sidebar.html">
											Theo nhà sản xuất
											<svg class="menu__item-arrow" width="6px" height="9px">
                                                      <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                                   </svg>
										</a>
										<div class="menu__submenu">
											<!-- .menu -->
											<div class="menu menu--layout--classic">
												<div class="menu__submenus-container"></div>
												<ul class="menu__list">
													<li class="menu__item">
														<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
														<div class="menu__item-submenu-offset"></div>
														<a class="menu__item-link" href="shop-grid-3-columns-sidebar.html">3 Columns Sidebar</a>
													</li>

												</ul>
											</div>
											<!-- .menu / end -->
										</div>
									</li>

									<li class="menu__item">
										<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
										<div class="menu__item-submenu-offset"></div>
										<a class="menu__item-link" href="product.html">
											Theo loại sản phẩm
											<svg class="menu__item-arrow" width="6px" height="9px">
                                                      <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                                   </svg>
										</a>
										<div class="menu__submenu">
											<!-- .menu -->
											<div class="menu menu--layout--classic">
												<div class="menu__submenus-container"></div>
												<ul class="menu__list">
													<li class="menu__item">
														<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
														<div class="menu__item-submenu-offset"></div>
														<a class="menu__item-link" href="product.html">Product</a>
													</li>
													<li class="menu__item">
														<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
														<div class="menu__item-submenu-offset"></div>
														<a class="menu__item-link" href="product-alt.html">Product Alt</a>
													</li>
													<li class="menu__item">
														<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
														<div class="menu__item-submenu-offset"></div>
														<a class="menu__item-link" href="product-sidebar.html">Product Sidebar</a>
													</li>
												</ul>
											</div>
											<!-- .menu / end -->
										</div>
									</li>
									<li class="menu__item">
										<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
										<div class="menu__item-submenu-offset"></div>
										<a class="menu__item-link" href="cart.html">Sản phẩm mới nhất</a>
									</li>
									<li class="menu__item">
										<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
										<div class="menu__item-submenu-offset"></div>
										<a class="menu__item-link" href="cart.html">Sản phẩm bán chạy</a>
									</li>
									<li class="menu__item">
										<!-- This is a synthetic element that allows to adjust the vertical offset of the submenu using CSS. -->
										<div class="menu__item-submenu-offset"></div>
										<a class="menu__item-link" href="cart.html">Sản phẩm khuyễn mãi</a>
									</li>


								</ul>
							</div>
							<!-- .menu / end -->
						</div>
					</li>



					<li class="nav-links__item">
						<a class="nav-links__item-link" href="../../item/stroyka-tools-store-html-template/23326943.html">
							<div class="nav-links__item-body">Giới thiệu</div>
						</a>
					</li>
					<li class="nav-links__item">
						<a class="nav-links__item-link" href="../../item/stroyka-tools-store-html-template/23326943.html">
							<div class="nav-links__item-body">Liên hệ</div>
						</a>
					</li>


				</ul>
			</div>
			<!-- .nav-links / end -->

			<!-- navbar của giỏ hàng -- start -->
			<jsp:include page="./nav_cart.jsp"></jsp:include>
			<!-- navbar của giỏ hàng -- end -->

		</div>
	</div>
</div>
<!-- desktop site__header / end -->

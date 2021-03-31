<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="nav-panel__departments">
	<!-- .departments -->
	<div class="departments departments--open departments--fixed" data-departments-fixed-by=".block-slideshow">
		<div class="departments__body">
			<div class="departments__links-wrapper">
				<div class="departments__submenus-container"></div>
				<ul class="departments__links">

					<c:forEach items="${producers }" var="pro">
						<li class="departments__item">
							<a class="departments__item-link" href="">
								Điện Thoại ${pro.name }
								<svg class="departments__item-arrow" width="6px" height="9px">
                                                   <use xlink:href="images/sprite.svg#arrow-rounded-right-6x9"></use>
                                                </svg>
							</a>
							<div class="departments__submenu departments__submenu--type--megamenu departments__submenu--size--xl">
								<!-- .megamenu -->
								<div class="megamenu megamenu--departments">
									<div class="megamenu__body p-3">
										<div class="row">
											<c:forEach items="${pro.categories }" var="cate">
												<div class="col-4 pt-3">
													<ul class="megamenu__links megamenu__links--level--0">
														<li class="megamenu__item megamenu__item--with-submenu">
															<a href="" style="font-weight: bold">${cate.name}</a>
															<ul class="megamenu__links megamenu__links--level--1">
																<c:forEach items="${cate.products }" var="prod">
																	<li class="megamenu__item">
																		<a href="/detail_product?productId=${prod.id}">${prod.name }</a>
																	</li>
																</c:forEach>
															</ul>
														</li>
														<%-- <li class="megamenu__item">
														<a href="">${cate.name }</a>
													</li> --%>

													</ul>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
								<!-- .megamenu / end -->
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<button class="departments__button">
			<svg class="departments__button-icon" width="18px" height="14px">
                                       <use xlink:href="images/sprite.svg#menu-18x14"></use>
                                    </svg>
			Danh Mục Sản Phấm
			<svg class="departments__button-arrow" width="9px" height="6px">
                                       <use xlink:href="images/sprite.svg#arrow-rounded-down-9x6"></use>
                                    </svg>
		</button>
	</div>
</div>
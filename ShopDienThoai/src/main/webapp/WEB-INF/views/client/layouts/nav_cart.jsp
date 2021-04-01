<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.entities.Account"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
Account user = (Account) session.getAttribute(SessionConstraint.USER);
%>

<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String sb = String.valueOf(request.getAttribute(CMENU));
%>

<style type="text/css">
.account-menu__form-title {
	font-family: 'Dancing Script', cursive;
	font-size: 20px;
}
</style>


<div class="nav-panel__indicators">
	<div class="indicator">
		<a href="wishlist.html" class="indicator__button">
			<span class="indicator__area">
				<svg width="20px" height="20px">
                                          <use xlink:href="images/sprite.svg#heart-20"></use>
                                       </svg>
				<span class="indicator__value">0</span>
			</span>
		</a>
	</div>
	<div class="indicator indicator--trigger--click">
		<a href="cart.html" class="indicator__button">
			<span class="indicator__area">
				<svg width="20px" height="20px">
                                          <use xlink:href="images/sprite.svg#cart-20"></use>
                                       </svg>
				<c:if test="${cart != null }">
					<span class="indicator__value" id="cart-number">${cart.productDto.values().size()}</span>
				</c:if>
				<c:if test="${cart == null }">
					<span class="indicator__value" id="cart-number">0</span>
				</c:if>
			</span>
		</a>
		<div class="indicator__dropdown">
			<!-- .dropcart -->
			<div class="dropcart dropcart--style--dropdown">
				<div class="dropcart__body" id="render-cart">
					<div class="dropcart__products-list">
						<c:if test="${cart == null ||  cart.productDto.values().size() == 0}">
							<h4 style="color:red; text-align: center">Bạn chưa có sản phẩm</h4>
						</c:if>
						<c:forEach items="${cart.productDto.values()}" var="prodDTO">
							<div class="dropcart__product">
								<div class="product-image dropcart__product-image">
									<a href="/detail_product?productId=${prodDTO.product.id}" class="product-image__body">
										<img class="product-image__img" src="/images/products/${prodDTO.product.category.producer.name.toLowerCase()}/${prodDTO.product.photo}" alt="">
									</a>
								</div>
								<div class="dropcart__product-info">
									<div class="dropcart__product-name">
										<a href="/detail_product?productId=${prodDTO.product.id}">${prodDTO.product.name}</a>
									</div>
									<!-- <ul class="dropcart__product-options">
									<li>Color: Yellow</li>
									<li>Material: Aluminium</li>
								</ul> -->
									<div class="dropcart__product-meta">
										<span class="dropcart__product-quantity">${prodDTO.quantity}</span>
										×
										<span class="dropcart__product-price" style="color:red">
											<fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice}" />
											VNĐ
										</span>
									</div>
								</div>
								<button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon" onclick="deleteProduct(${prodDTO.product.id})">
									<svg width="10px" height="10px">
                                                      <use xlink:href="images/sprite.svg#cross-10"></use>
                                                   </svg>
								</button>
							</div>
						</c:forEach>
					</div>
					<div class="dropcart__totals">
						<table>
							<tr>
								<th>Tổng Tiền</th>
								<td style="color: green; font-weight: bold">
									<c:if test="${cart == null }">0</c:if>
									<c:if test="${cart != null }">
									 <fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.getTotal()}" />
									</c:if>
									VNĐ
								</td>
							</tr>
						</table>
					</div>
					<div class="dropcart__buttons">
						<a class="btn btn-secondary" href="/cart">Xem chi tiết</a>
						<a class="btn btn-primary" href="checkout.html">Đặt hàng</a>
					</div>
				</div>
			</div>
			<!-- .dropcart / end -->
		</div>
	</div>


	<div class="indicator indicator--trigger--click">
		<a href="account-login.html" class="indicator__button">
			<span class="indicator__area">
				<svg width="20px" height="20px">
					<use xlink:href="images/sprite.svg#person-20"></use></svg>
			</span>
		</a>
		<div class="indicator__dropdown">
			<div class="account-menu">
				<div class="account-menu__form-title text-primary">Hope Online, Xin chào !!!</div>

				<c:if test="${not empty message}">
					<div class="alert alert-danger">${message}</div>
				</c:if>
				<c:if test="${user == null}">
					<form method="POST" action="<%=URL_LOGIN_NAV%>" class="account-menu__form mb-0 mt-2">

						<div class="form-group">
							<input type="text" name="username" class="form-control form-control-sm" placeholder="Tên đăng nhập hoặc email">
							<div class="invalid-feedback">Vui lòng nhập username hoặc email</div>
						</div>
						<div class="form-group">
							<div class="account-menu__form-forgot">
								<input type="password" name="password" class="form-control form-control-sm" placeholder="Mật khẩu">
								<div class="invalid-feedback">Vui lòng nhập mật khẩu</div>
								<a href="<%=URL_FORGET_PASSWORD%>" class="account-menu__form-forgot-link">Quên mật khẩu?</a>
							</div>
						</div>
						<div class="form-group account-menu__form-button mt-4 mb-0">
							<button type="submit" class="btn btn-primary btn-sm">Đăng nhập</button>
						</div>
					</form>
					<div class="form-group account-menu__form-button mb-3 mt-0">
						<a href="<%=URL_REGISTER%>">Tạo tài khoản</a>
					</div>
				</c:if>
				<c:if test="${user != null}">
					<div class=" account-menu__form d-flex text-center">
						<img class="img-radius mr-3 mt-0 mb-2 rounded-circle" width="45" src="/images/avatars/${user.photo}" alt="">
						<div class="d-flex flex-column justify-content-center">
							<h6 class="f-w-600">${user.name}</h6>
						</div>
					</div>

					<div class="form-group account-menu__form-button mb-3 mt-0">

						<a href="<%=URL_REGISTER%>">Tạo tài khoản</a>
					</div>


					<div class="account-menu__divider"></div>
					<ul class="account-menu__links account-menu__form">
						<li class="<%=renderSubmenuClass(sb, URL_PROFILE)%>">
							<a class="sidebar-header" href="<%=URL_PROFILE%>">
								<i class="far fa-address-book mr-3"></i>
								<span>Hồ sơ</span>
							</a>
						</li>

						<li class="<%=renderSubmenuClass(sb, URL_CHANGE_PASSWORD)%>">
							<a class="sidebar-header" href="<%=URL_CHANGE_PASSWORD%>">
								<i class="fas fa-unlock-alt mr-3"></i>
								<span> Đổi mật khẩu</span>
							</a>
						</li>
						<li class="">
							<a class="sidebar-header" href="">
								<i class="fas fa-history mr-3"></i>
								<span>Lịch sử đơn hàng</span>
							</a>
						</li>


					</ul>
					<div class="account-menu__divider"></div>
					<ul class="account-menu__links">
						<li>
							<a href="/logout">
								<i class="fas fa-power-off mr-3"></i>
								Đăng xuất
							</a>
						</li>
					</ul>

				</c:if>
			</div>
		</div>
	</div>
</div>
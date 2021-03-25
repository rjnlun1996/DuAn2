<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.hitech.constraints.SessionConstraint"%>
<%@ page import="com.hitech.entities.Account"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%
Account user = (Account) session.getAttribute(SessionConstraint.USER);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String sb = String.valueOf(request.getAttribute(CMENU));
%>

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
				<span class="indicator__value">3</span>
			</span>
		</a>
		<div class="indicator__dropdown">
			<!-- .dropcart -->
			<div class="dropcart dropcart--style--dropdown">
				<div class="dropcart__body">
					<div class="dropcart__products-list">
						<div class="dropcart__product">
							<div class="product-image dropcart__product-image">
								<a href="product.html" class="product-image__body">
									<img class="product-image__img" src="images/products/product-1.jpg" alt="">
								</a>
							</div>
							<div class="dropcart__product-info">
								<div class="dropcart__product-name">
									<a href="product.html">Electric Planer Brandix KL370090G 300 Watts</a>
								</div>
								<ul class="dropcart__product-options">
									<li>Color: Yellow</li>
									<li>Material: Aluminium</li>
								</ul>
								<div class="dropcart__product-meta">
									<span class="dropcart__product-quantity">2</span>
									×
									<span class="dropcart__product-price">$699.00</span>
								</div>
							</div>
							<button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon">
								<svg width="10px" height="10px">
                                                      <use xlink:href="images/sprite.svg#cross-10"></use>
                                                   </svg>
							</button>
						</div>
					</div>
					<div class="dropcart__totals">
						<table>
							<tr>
								<th>Subtotal</th>
								<td>$5,877.00</td>
							</tr>
						</table>
					</div>
					<div class="dropcart__buttons">
						<a class="btn btn-secondary" href="cart.html">Xem chi tiết</a>
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

				<form class="account-menu__form">
					<div class="account-menu__form-title">Đăng nhập vào tài khoản của bạn</div>
					<div class="form-group">
						<input id="header-signin-email" type="email" class="form-control form-control-sm" placeholder="Tên đăng nhập hoặc email">
					</div>
					<div class="form-group">
						<div class="account-menu__form-forgot">
							<input id="header-signin-password" type="password" class="form-control form-control-sm" placeholder="Mật khẩu">
							<a href="/forget-password" class="account-menu__form-forgot-link">Quên mật khẩu?</a>
						</div>
					</div>
					<div class="form-group account-menu__form-button">
						<button type="submit" class="btn btn-primary btn-sm">Đăng nhập</button>
					</div>
					<div class="form-group account-menu__form-button">
						<a href="<%=URL_REGISTER%>">Tạo tài khoản</a>
					</div>
				</form>
				<div class="account-menu__divider"></div>
				<ul class="account-menu__links">
					<!-- <li>
						<a href="/profile">Hồ sơ</a>
					</li> -->
					<li class="<%=renderSubmenuClass(sb, URL_PROFILE)%>">
						<a class="sidebar-header" href="<%=URL_PROFILE%>">
							<i data-feather="user"></i>
							<span>Hồ sơ</span>
						</a>
					</li>

					<li class="<%=renderSubmenuClass(sb, URL_CHANGE_PASSWORD)%>">
						<a class="sidebar-header" href="<%=URL_CHANGE_PASSWORD%>">
							<i data-feather="user"></i>
							<span>Đổi mật khẩu</span>
						</a>
					</li>
					<!-- 
					<li>
						<a href="/change-password">Đổi mật khẩu</a>
					</li> -->
					<li>
						<a href="account-orders.html">Lịch sử đơn hàng</a>
					</li>

				</ul>
				<div class="account-menu__divider"></div>
				<ul class="account-menu__links">
					<li>
						<a href="/logout">Đăng xuất</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="dropcart__products-list">
	<c:if test="${cart == null }">
		<h4 style="color: red; text-align: center">Bạn chưa có sản phẩm</h4>
	</c:if>
	<c:forEach items="${cart.productDto.values()}" var="prodDTO">
		<div class="dropcart__product">
			<div class="product-image dropcart__product-image">
				<a href="product.html" class="product-image__body">
					<img class="product-image__img" src="/images/products/${prodDTO.product.category.producer.name.toLowerCase()}/${prodDTO.product.photo}" alt="">
				</a>
			</div>
			<div class="dropcart__product-info">
				<div class="dropcart__product-name">
					<a href="product.html">${prodDTO.product.name}</a>
				</div>
				<!-- <ul class="dropcart__product-options">
									<li>Color: Yellow</li>
									<li>Material: Aluminium</li>
								</ul> -->
				<div class="dropcart__product-meta">
					<span class="dropcart__product-quantity">${prodDTO.quantity}</span>
					×
					<span class="dropcart__product-price" style="color: red">
						<fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice}" />
						VNĐ
					</span>
				</div>
			</div>
			<button type="button" class="dropcart__product-remove btn btn-light btn-sm btn-svg-icon">
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
	<a class="btn btn-primary" href="/checkout">Đặt hàng</a>
</div>
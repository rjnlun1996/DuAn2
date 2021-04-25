<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="static com.hitech.utils.ViewUtils.*"%>
<%@ page import="static com.hitech.constraints.CViewConstraint.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="cart block" id="template-cart">
	<div class="container">
		<table class="cart__table cart-table">
			<thead class="cart-table__head">
				<tr class="cart-table__row">
					<th class="cart-table__column cart-table__column--image">Image</th>
					<th class="cart-table__column cart-table__column--product">Product</th>
					<th class="cart-table__column cart-table__column--price">Price</th>
					<th class="cart-table__column cart-table__column--quantity">Quantity</th>
					<th class="cart-table__column cart-table__column--total">Total</th>
					<th class="cart-table__column cart-table__column--remove"></th>
				</tr>
			</thead>
			<tbody class="cart-table__body">
				<c:if test="${cart == null ||  cart.productDto.values().size() == 0}">
					<tr>
						<td style="color: red; text-align: center; font-weight: bold; padding: 10px" colspan="6">Bạn chưa có sản phẩm</td>
					</tr>
				</c:if>
				<c:forEach items="${cart.productDto.values()}" var="prodDTO">
					<tr class="cart-table__row">
						<td class="cart-table__column cart-table__column--image">
							<div class="product-image">
								<a href="" class="product-image__body"> <img class="product-image__img" src="/images/products/${prodDTO.product.category.producer.name.toLowerCase()}/${prodDTO.product.photo}" alt="">
								</a>
							</div>
						</td>
						<td class="cart-table__column cart-table__column--product"><a href="" class="cart-table__product-name">${prodDTO.product.name}</a></td>
						<td class="cart-table__column cart-table__column--price" data-title="Price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice}" /> VNĐ</td>
						<td class="cart-table__column cart-table__column--quantity" data-title="Quantity">
							<div class="input-number">
								<input class="form-control input-number__input" id="number-${prodDTO.product.id }" type="number" min="1" value="${prodDTO.quantity }">
								<div class="input-number__add"></div>
								<div class="input-number__sub"></div>
							</div>
						</td>
						<td class="cart-table__column cart-table__column--total" data-title="Total"><fmt:formatNumber type="number" maxFractionDigits="3" value="${prodDTO.product.importPrice * prodDTO.quantity}" /> VNĐ</td>
						<td class="cart-table__column cart-table__column--remove">
							<button type="button" class="btn btn-light btn-sm btn-svg-icon text-success" data-toggle="tooltip" data-placement="top" title="Cập nhật" onclick="themVaoGioHang(updateCart(${prodDTO.product.id }))">
								<i class="fa fa-check"></i>
							</button>

							<button type="button" class="btn btn-light btn-sm btn-svg-icon text-danger" data-toggle="tooltip" data-placement="bottom" title="Xóa" onclick="deleteProductCart(${prodDTO.product.id })">
								<i class="fa fa-times"></i>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="cart__actions d-flex justify-content-end">

			<div class="cart__buttons">
				<a href="/" class="btn btn-primary">Tiếp tục mua sắm</a>
				<!-- <a href="" class="btn btn-primary cart__update-button">Update Cart</a> -->
			</div>
		</div>
		<div class="row justify-content-end pt-5">
			<div class="col-12 col-md-7 col-lg-6 col-xl-6">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title">Thông tin thanh toán</h3>
						<table class="cart__totals">
							<thead class="cart__totals-header">
								<tr>
									<th>Số lượng sản phẩm</th>
									<td>${cart.number}</td>
								</tr>
							</thead>
							<tbody class="cart__totals-body">
								<tr>
									<th>Tổng giá sản phẩm</th>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.amountTotal}" /> VNĐ</td>
								</tr>
								<tr>
									<th>Tổng giá khuyến mãi</th>
									<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.discountPrice}" /> VNĐ</td>
								</tr>
							</tbody>
							<tfoot class="cart__totals-footer">
								<tr>
									<th>Tổng tiền cần thanh toán</th>
									<td class="text-danger"><fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.total}" /> VNĐ</td>
								</tr>
							</tfoot>
						</table>
						<a class="btn btn-primary btn-xl btn-block cart__checkout-button" href="/check_out">Thanh toán</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
package com.hitech.cart;

import java.util.HashMap;

import com.hitech.entities.Product;

public class Cart extends HashMap<String, ProductDTO> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long amountTotal;
	private long discountPrice;
	private long total;

	public long getAmountTotal() {
		return amountTotal;
	}

	public void setAmountTotal(long amountTotal) {
		this.amountTotal = amountTotal;
	}

	public long getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(long discountPrice) {
		this.discountPrice = discountPrice;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	@SuppressWarnings("unlikely-arg-type")
	public void addProduct(Product product, int quantity, int discount) {
		ProductDTO proDTO = this.get(product.getId());
		if (proDTO == null) {
			proDTO = new ProductDTO();
			proDTO.setProduct(product);
			proDTO.setQuantity(quantity);
			proDTO.setDiscount(discount);

			proDTO.calAmount();
		}

		proDTO.setQuantity(quantity);
		proDTO.calAmount();

		// cart
		this.calculate();
	}
	
	@SuppressWarnings("unlikely-arg-type")
	public void removeProduct(Product product) {
		this.remove(product.getId());

		// cart
		this.calculate();
	}

	private void calculate() {
		this.calAmountTotal();
		this.calDiscountPrice();		

		this.calTotal();
	}

	public void calDiscountPrice() {
		long discountPrice = 0;
		for (ProductDTO prod : this.values()) {
			total += prod.getProduct().getImportPrice() * prod.getQuantity() * (100 - prod.getDiscount());
		}
		this.discountPrice = discountPrice;
	}

	public void calAmountTotal() {
		long amountTotal = 0;
		for (ProductDTO prod : this.values()) {
			total += prod.getAmount();
		}
		this.amountTotal = amountTotal;
	}

	public void calTotal() {
		this.total = this.getAmountTotal() - this.getDiscountPrice();
	}

}

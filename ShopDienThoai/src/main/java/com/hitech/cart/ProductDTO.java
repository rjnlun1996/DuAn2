package com.hitech.cart;

import com.hitech.entities.Product;

public class ProductDTO{
	
	private Product product;
	private int quantity;
	private int discount;
	private long amount;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}	

	public void calAmount() {
		this.amount = this.product.getImportPrice() * this.quantity;
	}

}
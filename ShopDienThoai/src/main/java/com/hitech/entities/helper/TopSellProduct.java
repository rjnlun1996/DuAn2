package com.hitech.entities.helper;

import com.hitech.entities.Product;

public class TopSellProduct {
	
	private int quantity;
	private Product product;
	
	public TopSellProduct() {
		super();
	}
	
	public TopSellProduct(Product product, int quantity) {
		super();
		this.quantity = quantity;
		this.product = product;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}

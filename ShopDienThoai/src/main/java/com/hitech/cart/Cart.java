package com.hitech.cart;

import java.util.Map;

import com.hitech.entities.Product;

public class Cart {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Map<Integer, ProductDTO> productDto;
	private long amountTotal;
	private long discountPrice;
	private long total;	
	

	public Map<Integer, ProductDTO> getProductDto() {
		return productDto;
	}

	public void setProductDto(Map<Integer, ProductDTO> productDto) {
		this.productDto = productDto;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

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
		ProductDTO proDTO = this.productDto.get(product.getId());
		if (proDTO == null) {
			proDTO = new ProductDTO();
			proDTO.setProduct(product);
			proDTO.setQuantity(quantity);
			proDTO.setDiscount(discount);

			proDTO.calAmount();
		}

		proDTO.setQuantity(quantity);
		proDTO.calAmount();
		
		this.productDto.put(product.getId(), proDTO);

		// cart
		this.calculate();
	}
	
	@SuppressWarnings("unlikely-arg-type")
	public void removeProduct(Product product) {
		this.productDto.remove(product.getId());

		// cart
		this.calculate();
	}

	public void calculate() {
		this.calAmountTotal();
		this.calDiscountPrice();		

		this.calTotal();
	}

	public void calDiscountPrice() {
		long discountPrice = 0;
		for (ProductDTO prod : this.productDto.values()) {
			if(prod.getDiscount() != 0) {
				discountPrice +=  prod.getAmount() * prod.getDiscount() / 100;
			}
		}
		this.discountPrice = discountPrice;
	}

	public void calAmountTotal() {
		long amountTotal = 0;
		for (ProductDTO prod : this.productDto.values()) {
			amountTotal += prod.getAmount();
		}
		this.amountTotal = amountTotal;
	}
	
	public long calTotal() {		
		this.total = this.amountTotal - this.discountPrice;
		return this.total;
	}
	

}

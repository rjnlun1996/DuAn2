package com.hitech.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "OrderDetails")
public class OrderDetail extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderDetailId")
	private int id;

	@Column
	private int productId;

	@Column
	private int quantity;

	@Column
	private double amount;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "orderId", nullable = false)
	@JsonBackReference
	private Order order;

	@ManyToOne
	@JoinColumn(name = "productId", nullable = false, insertable = false, updatable = false)
	@JsonBackReference
	private Product product;

//	@OneToMany(mappedBy = "orderDetail")
//	@JsonManagedReference
//	private Set<Discount> discounts;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "discountId", nullable = false)
	@JsonBackReference
	private Discount discount;

	public OrderDetail() {
	}

	public OrderDetail(int id, int productId, int quantity, double amount, Order order, Product product,
			Discount discount) {
		super();
		this.id = id;
		this.productId = productId;
		this.quantity = quantity;
		this.amount = amount;
		this.order = order;
		this.product = product;
		this.discount = discount;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Discount getDiscount() {
		return discount;
	}

	public void setDiscount(Discount discount) {
		this.discount = discount;
	}

}

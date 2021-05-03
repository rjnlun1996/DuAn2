package com.hitech.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "Discount")
public class Discount extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "discountId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Min(value = 1, message = "Giảm giá phải lớn hơn hoặc bằng 1%")
	@Column
	private int percents;

	@Column
	private String description;

	@Column(name = "isCurrent")
	private boolean current;

	@ManyToOne
	@JoinColumn(name = "productId", nullable = false)
	@JsonBackReference
	private Product product;

//	@ManyToOne
//	@JoinColumn(name = "orderDetailId", nullable = false)
//	@JsonBackReference
//	private OrderDetail orderDetail;
	
//	@OneToMany(mappedBy = "discount")
//	@JsonManagedReference
//	private Set<OrderDetail> orderDetails;

	public Discount() {
		super();
	}


	public Discount(int id, int percents, String description, boolean current, Product product) {
		super();
		this.id = id;
		this.percents = percents;
		this.description = description;
		this.current = current;
		this.product = product;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPercents() {
		return percents;
	}

	public void setPercents(int percents) {
		this.percents = percents;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isCurrent() {
		return current;
	}

	public void setCurrent(boolean current) {
		this.current = current;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}

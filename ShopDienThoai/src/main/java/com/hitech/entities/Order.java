package com.hitech.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "Orders")
public class Order extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderId")
	private int id;
	
	@Column
	private Date requireDate;
	
	@Column
	private String	receiver;
	
	@Column
	private String	address;
	
	@Column
	private String	description;
	
	@Column
	private String	phone ;
	
	@Column
	private double total;
	
	@ManyToOne
	@JoinColumn(name="username",nullable = false)
	@JsonBackReference
	private Account account;
	
	@OneToMany(mappedBy = "order")
	@JsonManagedReference
	private Set<OrderDetail> orderDetails;
	
	@OneToMany(mappedBy = "order")
	@JsonManagedReference
	private Set<StatusOrder> statusOrders;
	
	public double getTotal() {
		return total;
	}

	public Set<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public Order() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Date getRequireDate() {
		return requireDate;
	}

	public void setRequireDate(Date requireDate) {
		this.requireDate = requireDate;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Set<StatusOrder> getStatusOrders() {
		return statusOrders;
	}

	public void setStatusOrders(Set<StatusOrder> statusOrders) {
		this.statusOrders = statusOrders;
	}
		
}

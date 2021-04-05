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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "Orders")
public class Order extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderId")
	private int id;

	@Column
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date requireDate;

	@Column
	@NotBlank(message = "Vui lòng nhập Tên người nhận !!! ")
	@Size(min = 2, max = 20, message = "Tên người nhận phải từ {min} đến {max}")
	private String receiver;

	@Column
	@NotBlank(message = "Vui lòng nhập Địa chỉ giao hàng !!! ")
	private String address;

	@Column
	private String description;

	@Column
	@Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})", message = "Vui lòng nhập Số điện thoại đúng định dạng")
	private String phone;

	@Column
	private long total;

	@ManyToOne
	@JoinColumn(name = "username", nullable = false)
	@JsonBackReference
	private Account account;

	@OneToMany(mappedBy = "order")
	@JsonManagedReference
	private Set<OrderDetail> orderDetails;

	@OneToMany(mappedBy = "order")
	@JsonManagedReference
	private Set<StatusOrder> statusOrders;

	public long getTotal() {
		return total;
	}

	public Set<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public Order() {
	}

	public Order(int id) {
		super();
		this.id = id;
	}

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

	public long calDiscountPrice() {
		long discountPrice = 0;
		for (OrderDetail orderDetail : this.orderDetails) {
			if (orderDetail.isEnabled() && orderDetail.getDiscountId() != 0) {
				discountPrice += orderDetail.getProduct().getImportPrice() * orderDetail.getQuantity()
						* orderDetail.getDiscount().getPercents() / 100;
			}
		}
		return discountPrice;
	}

	public long calAmountTotal() {
		long amountTotal = 0;
		for (OrderDetail orderDetail : this.orderDetails) {
			if (orderDetail.isEnabled()) {
				amountTotal += orderDetail.getQuantity() * orderDetail.getProduct().getImportPrice();
			}
		}
		return amountTotal;
	}

	public long calOrder() {
		return this.calAmountTotal() - this.calDiscountPrice();
	}

	public void calOrderTotal() {
		this.total = this.calOrder();
	}
}

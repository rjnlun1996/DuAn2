package com.hitech.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "Accounts")
public class Account extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column
	@NotBlank(message="Vui lòng nhập Username !!! ")
	@Size(min = 5, max = 20, message = "Username phải từ {min} đến {max}")
	private String username;
	
	@Column
	@Email(message="Vui lòng nhập email đúng định dạng ! ")
	private String email;
	
	@Column
	@NotBlank(message="Vui lòng nhập Password !!! ")
	@Size(min = 5, max = 20, message = "Password phải từ {min} đến {max}")
	private String password;
	
	@Column
	@NotBlank(message="Vui lòng nhập Họ và Tên !!! ")
	private String name;
	
	@Column
	private boolean gender;
	
	@Column
	private String photo;
	
	@Column
	@NotBlank(message="Vui lòng nhập Địa chỉ !!! ")
	private String address;
	
	@Column
	@NotBlank(message="Vui lòng nhập Số điện thoại !!! ")
	@Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})", message = "Vui lòng nhập Số điện thoại đúng định dạng")
	private String phone ;

	@Column
	@NotNull(message="Vui lòng chọn ngày sinh !!! ")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date birthday;
	@Column(name = "isAdmin")
	private boolean admin;
	
	@OneToMany(mappedBy = "account")
	@JsonManagedReference
	private Set<Order> orders;
	
	public Account() {}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Account [username=" + username + ", email=" + email + ", password=" + password + ", name=" + name
				+ ", gender=" + gender + ", photo=" + photo + ", address=" + address + ", phone=" + phone
				+ ", birthday=" + birthday + ", admin=" + admin + ", orders=" + orders + "]";
	}	
	
}

/**
 * 
 */
package com.hitech.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonManagedReference;

/**
 * @author ADMIN
 *
 */
@Entity
@Table(name = "Producers")
public class Producer extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "producerId")
	private int id ;
	
	@Column
	@NotBlank(message="Vui lòng nhập tên !!! ")
	@Size(min = 5, max = 20, message = "Tên phải có từ {min} đến {max} kí tự")
	private String name;
	
	@Column
	private String logo;
	@Column
	@NotBlank(message="Vui lòng nhập địa chỉ !!! ")
	@Size( max = 9999, message = "Địa chỉ không được dài quá {max} kí tự")
	private String address;
	@Column
	@NotBlank(message="Vui lòng nhập email !!! ")
	@Email(message="Vui lòng nhập email đúng định dạng !")
	private String email ;
	@Column
	@NotBlank(message="Vui lòng nhập Số điện thoại !!! ")
	@Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})", message = "Vui lòng nhập Số điện thoại đúng định dạng")
	private String	phone ;
	
	@OneToMany(mappedBy = "producer")
	@JsonManagedReference
	private Set<Product> productsProducer;
	
	public Producer() {}

	public Set<Product> getProductsProducer() {
		return productsProducer;
	}


	public void setProductsProducer(Set<Product> productsProducer) {
		this.productsProducer = productsProducer;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	
	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
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
	
	
}

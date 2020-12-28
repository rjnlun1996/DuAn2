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
	@Column
	private int id ;
	@Column
	private String name;
	@Column
	private String logo;
	@Column
	private String address;
	@Column
	private String email ;
	@Column
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

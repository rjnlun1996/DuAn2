package com.hitech.entities;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Table(name = "Status")
@Entity
public class Status extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "statusId")
	private String id;
	
	@Column
	@NotBlank(message="Vui lòng nhập Tên Trạng Thái!")
	@Size(min = 2, max = 50, message = "Tên Trạng Thái phải từ {min} đến {max} kí tự")
	private String name;
	
	@OneToMany(mappedBy = "status")
	@JsonManagedReference
	private Set<StatusOrder> statusOrders;

	public Status() {
		super();
	}

	public Status(String id, String name, Set<StatusOrder> statusOrders) {
		super();
		this.id = id;
		this.name = name;
		this.statusOrders = statusOrders;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<StatusOrder> getStatusOrders() {
		return statusOrders;
	}

	public void setStatusOrders(Set<StatusOrder> statusOrders) {
		this.statusOrders = statusOrders;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}

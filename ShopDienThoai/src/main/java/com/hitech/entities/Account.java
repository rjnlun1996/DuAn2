package com.hitech.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table ( name = "Accounts")
public class Account extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column
	private int username;
	@Column
	private String email;
	@Column
	private String password;
	@Column
	private String name;
	@Column
	private boolean gender;
	@Column
	private String photo;
	@Column
	private String address;
	@Column
	private String phone ;
	@Column
	private Date birthday;
	@Column
	private boolean isAdmin;
	
	public Account() {}

	
	
}

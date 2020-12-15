package com.hitech.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Photos")
public class Photo{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int id;
	@Column
	private String	link;
	@OneToMany
	@JoinColumn(name = "productId",nullable = false)
	private Product productPhoto;
	
	public Photo() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Product getProductPhoto() {
		return productPhoto;
	}

	public void setProductPhoto(Product productPhoto) {
		this.productPhoto = productPhoto;
	}


	
}

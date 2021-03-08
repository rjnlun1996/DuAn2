package com.hitech.entities;

import java.io.Serializable;
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
@Table(name = "Products")
public class Product extends BaseEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "productId")
	private int id;
	
	@Column
	private String name;
	
	@Column
	private String	photo ;
	
	@Column
	private long importPrice;
	
	@Column
	private long salePrice;
	
	@Column
	private String description;
	
	@Column
	private int views;
	
	@Column
	private boolean	available;
	
	@Column
	private boolean	special;
	
	@Column
	private boolean	latest;
	
	@OneToMany(mappedBy = "product")
	@JsonManagedReference
	private Set<OrderDetail> orderDetails;
	
	@ManyToOne
	@JoinColumn(name = "producerId")
	@JsonBackReference
	private Producer producer;
	
	@ManyToOne
	@JoinColumn(name = "categoryId")
	@JsonBackReference
	private Category category;
	
	@OneToMany(mappedBy = "product")
	@JsonManagedReference
	private Set<Photo> photos;
	
	@OneToMany(mappedBy = "product")
	@JsonManagedReference
	private Set<Discount> discounts;
	
	public Product() {
		
	}
	

	public Product(int id) {
		super();
		this.id = id;
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

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public long getImportPrice() {
		return importPrice;
	}

	public void setImportPrice(long importPrice) {
		this.importPrice = importPrice;
	}

	public long getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(long salePrice) {
		this.salePrice = salePrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public boolean isSpecial() {
		return special;
	}

	public void setSpecial(boolean special) {
		this.special = special;
	}

	public boolean isLatest() {
		return latest;
	}

	public void setLatest(boolean latest) {
		this.latest = latest;
	}

	public Set<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(Set<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Producer getProducer() {
		return producer;
	}

	public void setProducer(Producer producer) {
		this.producer = producer;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Set<Photo> getPhotos() {
		return photos;
	}

	public void setPhotos(Set<Photo> photos) {
		this.photos = photos;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Set<Discount> getDiscounts() {
		return discounts;
	}

	public void setDiscounts(Set<Discount> discounts) {
		this.discounts = discounts;
	}	
	
}

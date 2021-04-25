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
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "Products")
public class Product extends BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "productId")
	private int id;

	@Column
	@NotBlank(message = "Vui lòng nhập Tên Sản Phẩm!")
	@Size(min = 2, max = 50, message = "Tên Danh Mục phải từ {min} đến {max} kí tự")
	private String name;

	@Column
	private String photo;

	@Column
	@Min(value = 1000, message = "Giá tiền phải lớn hơn {value}")
	@Max(value = 999999999, message = "Giá tiền phải lớn hơn {value}")
	private long importPrice;

	@Column
	private String description;

	@Column
	private int views;

	@Column
	private boolean available;

	@Column
	private boolean special;

	@Column
	private boolean latest;

	@OneToMany(mappedBy = "product")
	@JsonManagedReference
	private Set<OrderDetail> orderDetails;

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
	
	public int fetchDiscount() {
		if(this.discounts != null && this.discounts.size() > 0) {
			for(Discount disc: discounts) {
				if(disc.isCurrent() && disc.isEnabled()) {
					return disc.getPercents();
				}
			}
		}
		return 0;
	}

}

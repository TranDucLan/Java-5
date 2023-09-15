package com.phunglv.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;


@SuppressWarnings("serial")
@NamedQuery(
		name = "findByKeyword",
		query = "SELECT p FROM Product p WHERE p.name LIKE ?1"
)
@Data
@Entity @Table(name = "Products")
public class Product  implements Serializable{
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String name;
	String image;
	Double price;
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	Date createDate = new Date();
	Boolean available;
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;
	@JsonIgnore
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;
	public Product(Integer id, String name, String image, Double price, Date createDate, Boolean available,
			Category category, List<OrderDetail> orderDetails) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.createDate = createDate;
		this.available = available;
		this.category = category;
		this.orderDetails = orderDetails;
	}
	public Product() {
		super();
	}	
	
}

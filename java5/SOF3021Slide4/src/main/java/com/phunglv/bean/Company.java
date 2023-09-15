package com.phunglv.bean;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Component
public class Company {
	private String name = "FPT Polytechnic.";
	private String slogan = "Hoc hoc nua hoc mau";
	private String logo = "images/logos/Petrolimex.jpg";
	public Company(String name, String slogan, String logo) {
		super();
		this.name = name;
		this.slogan = slogan;
		this.logo = logo;
	}
	public Company() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSlogan() {
		return slogan;
	}
	public void setSlogan(String slogan) {
		this.slogan = slogan;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
}

/*
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
//@Component
public class Company {
	private String name = "FPT Polytechnic";
	private String slogan = "Hoc hoc nua hoc mau";
	private String logo = "images/logos/poly.png";
}
*/

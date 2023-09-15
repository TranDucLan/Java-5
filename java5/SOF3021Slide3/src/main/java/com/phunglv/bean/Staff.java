package com.phunglv.bean;

public class Staff {
	private String id;
	private String fullname;
	private String email;
	private Double salary;
	private Boolean gender;
	private String position;
	public Staff() {
		// TODO Auto-generated constructor stub
	}
	public Staff(String id, String fullname, String email, Double salary, Boolean gender, String position) {
		//super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.salary = salary;
		this.gender = gender;
		this.position = position;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
}

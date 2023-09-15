package com.phunglv.bean;

import java.util.List;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;



public class Staff3 {
	/*
	@NotNull
	private Integer id;	
	@NotBlank
	private String fullname;
	@NotNull
	private Boolean gender;
	@NotEmpty
	@Email
	private String email;		
	@NotNull
	@DecimalMin("9.5")
	private Double salary;			
	@NotEmpty
	private String position;
	
	@NotEmpty
	List<String> hobbies;
	
	public List<String> getHobbies() {
		return hobbies;
	}
	public void setHobbies(List<String> hobbies) {
		this.hobbies = hobbies;
	}
	*/
	
	
	@NotNull(message="Không được để trống id !")
	private Integer id;
	
	@NotBlank(message="Vui lòng nhập ho tên !")
	private String fullname;
	
	@NotBlank(message="Vui lòng nhập email !")
	@Email(message="Chua dung dinh dang email !")
	private String email;	
	
	@NotNull(message="Không được để trống salary !")
	@DecimalMin(value="0", message="Salary không hợp lệ !")
	@DecimalMax(value="100000", message="Salary không hợp lệ !")
	private Double salary;
	
	@NotNull(message="Vui long chon gioi tinh !")
	private Boolean gender;
	
	private String position;
	
	
	public Staff3() {
		// TODO Auto-generated constructor stub
		
		this.id = 0;
		this.fullname = "";
		this.email = "";
		this.salary = 0.0;
		this.gender = false;
		this.position = "";
		
	}
	public Staff3(Integer id, String fullname, String email, Double salary, Boolean gender, String position) {
		//super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.salary = salary;
		this.gender = gender;
		this.position = position;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	
	
	
}

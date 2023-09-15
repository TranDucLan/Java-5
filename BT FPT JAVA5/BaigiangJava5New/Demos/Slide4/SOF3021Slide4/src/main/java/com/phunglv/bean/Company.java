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
	private String name = "FPT Polytechnic";
	private String slogan = "Hoc hoc nua hoc mau";
	private String logo = "images/logos/poly.png";
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
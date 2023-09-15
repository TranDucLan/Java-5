package com.phunglv.bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BeanConfig {
	@Bean
	public Company getCompany() {
		Company company = new Company();
		company.setName("Petrolimex");
		company.setSlogan("Khoi nguon moi chuyen dong");
		company.setLogo("images/logos/Petrolimex.jpg");
		return company;
	}
}

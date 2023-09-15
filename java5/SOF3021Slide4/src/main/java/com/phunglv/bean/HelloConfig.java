package com.phunglv.bean;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class HelloConfig {
	
	//@Primary @Bean
	@Bean("bean1")
	public Company getCompany1() {
		return new Company();
	}
	//  @Bean
	@Bean("bean2")
	public Company getCompany2() {
		Company company = new Company();
		company.setName("Petrolimex");
		company.setSlogan("Khoi nguon moi chuyen dong");
		company.setLogo("images/logos/Petrolimex.jpg");
		return company;
	}

}

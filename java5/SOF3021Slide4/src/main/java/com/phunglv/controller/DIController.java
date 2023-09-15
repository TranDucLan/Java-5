package com.phunglv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phunglv.bean.Company;

@Controller
@RequestMapping("/home/")
public class DIController {
	
	@Autowired
	Company company;
	
	@ResponseBody
	@RequestMapping("index")
	public String index() {		
		return company.getName();
	}
	
	@RequestMapping("index1")
	public String index1(Model model) {
		model.addAttribute("company", company);
		return "home/index";
	}
	
	//-------------------------------------------
	
	/*
	@Autowired @Qualifier("bean1")
	Company company;
	
	@ResponseBody
	@RequestMapping("index")
	public String index() {		
		return company.getName();
	}
	
	@RequestMapping("index1")
	public String index1(Model model) {
		model.addAttribute("company", company);
		return "home/index";
	} 
	*/
}

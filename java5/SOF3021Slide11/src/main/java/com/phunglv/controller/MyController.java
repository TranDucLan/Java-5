package com.phunglv.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {
	@Autowired
	ServletContext application;
	@Autowired 
	HttpSession session;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse respone;
	@RequestMapping("/create")
	public String sayHello() {
		String fullname = request.getParameter("hoten");
		request.setAttribute("message", "Chao ban: "+fullname);
		return "hello";
	}
	
	@RequestMapping("/form.php")
	public String form() {	
		return "form";
	}
}

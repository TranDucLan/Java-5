package com.lab4.Controller;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.lab4.Service.CookieService;
import com.lab4.Service.ParamService;
import com.lab4.Service.SessionService;

@Controller
public class AccountController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	CookieService  CookieService;
	@Autowired
	ParamService ParamService;
	@Autowired 
	SessionService SessionService;
	@Autowired
	ServletContext app;
	
@GetMapping("account/login")
public String login1() {
	return "/account/login";
}
@PostMapping("account/login")
public String login2(Model model) {
	String un=ParamService.getString("username", "");
	String pw=ParamService.getString("password", "");
	boolean rm=ParamService.getBoolean("remember", false);
	if(un.equals("poly")&&pw.equals("123")) {
		SessionService.set("username",un);
		if(rm==true) {
			CookieService.add("user",un,10);
			model.addAttribute("message","tai khoan da duoc luu");
			model.addAttribute("username",un);
			
		}else {
			CookieService.remove("user");
			model.addAttribute("username","");
			model.addAttribute("message","tai khoan khong dc luu");
			}
		
	}else {
		model.addAttribute("message","dang nhap that bai");
	}
	return "/account/login";
}
}

package com.phunglv.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping("user/form")
	public String showForm() {
		return "user/login";
	}
	
	/*
	@RequestMapping("user/login.htm")
	public String login(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		if(id.equals("fpt") && pw.equals("poly")){
                    request.setAttribute("uid", id);
                    request.setAttribute("pwd", pw);
                    return "user/info";
		}
		request.setAttribute("message", "Sai thông tin đăng nhập !");
		return "user/login";
	}
	*/
	
	@RequestMapping("user/login.htm")
	public String login2(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		if(id.equals("fpt") && pw.equals("polytechnic")){
			model.addAttribute("uid", id);
			model.addAttribute("pwd", pw);
			return "user/info";
		}
		model.addAttribute("message", "Sai thông tin đăng nhập !");
		return "user/login";
	}
	
}
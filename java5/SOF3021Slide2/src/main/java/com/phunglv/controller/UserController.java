package com.phunglv.controller;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.phunglv.bean.User;


@Controller
@RequestMapping("user")
public class UserController {
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, HttpServletRequest request) {
            String id = request.getParameter("id");
            String pw = request.getParameter("password");
            if(id.equals("fpt") && pw.equals("polytechnic")){
                    model.addAttribute("message", "Dang nhap thanh cong !");
            }
            else{
                    model.addAttribute("message", "Sai thông tin đăng nhập !");
            }
            return "user/login";
	}
	
	//----------------------------------------------------
	/*
	@GetMapping("login")
	public String login() {
		return "user/login";
	}
	
	@PostMapping("login")
	public String login(ModelMap model, HttpServletRequest request) {
            String id = request.getParameter("id");
            String pw = request.getParameter("password");
            if(id.equals("fpt") && pw.equals("post")){
                    model.addAttribute("message", "Dang nhap thanh cong !");
            }
            else{
                    model.addAttribute("message", "Sai thông tin đăng nhập !");
            }
            return "user/login";
	}
	*/
	//-------------------------------------------
	/*
    //Xử dụng đối số action
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(Model model, 
			@RequestParam("id") String id, @RequestParam("password") String pw) {
            if(id.equals("fpt") && pw.equals("param")){
                    model.addAttribute("message", "Dang nhap thanh cong !");
            }
            else{
                    model.addAttribute("message", "Sai thông tin đăng nhập !");
            }
            return "user/login";
	}
	*/
	//-------------------------------------------------------------
	/*
	//Xử dụng JavaBean	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "user/login";
	} 
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(Model model, User user) {
		if(user.getId().equals("fpt") && user.getPassword().equals("bean")){
			model.addAttribute("message", "đăng nhập thanh cong!");
		}
		else{
			model.addAttribute("message", "Sai thông tin đăng nhập !");
		}
		return "user/login";
	}
	*/
	
}

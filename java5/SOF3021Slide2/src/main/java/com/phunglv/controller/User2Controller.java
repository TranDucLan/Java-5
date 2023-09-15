package com.phunglv.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user2/")
public class User2Controller {
	@RequestMapping(value="login2", method=RequestMethod.GET)
	public String login(ModelMap model,
			@CookieValue(value="uid", defaultValue="", required=false) String id, 
			@CookieValue(value="pwd", defaultValue="", required=false) String pw) {
		model.addAttribute("uid", id);
		model.addAttribute("pwd", pw);
		return "user/login2";
	}
	
	@RequestMapping(value="login2", method=RequestMethod.POST)
	public String login(ModelMap model, 
			@RequestParam("id") String id, 
			@RequestParam("password") String pw,
			@RequestParam(value="remember", defaultValue="false", required=false) Boolean rm,
			HttpServletResponse response) {
		if(id.equals("fpt") && pw.equals("polytechnic")){
			model.addAttribute("message", "Đăng nhập thành công!");
			/*
			 * Xử lý ghi nhớ tài khoản bằng cookie
			 */
			Cookie ckiId = new Cookie("uid", id);
			Cookie ckiPw = new Cookie("pwd", pw);
			
			int expiry = 0;			
			//System.out.println(rm);//test
			if(rm == true){				
				expiry = 10*24*60*60;
			}
			ckiId.setMaxAge(expiry);
			ckiPw.setMaxAge(expiry);
			// Gửi cookie về client để lưu lại
			response.addCookie(ckiId);
			response.addCookie(ckiPw);
		}
		else{
			model.addAttribute("message", "Sai thông tin đăng nhập !");			
			
		}
		return "user/login2";
	}
        @RequestMapping(value="doccookie", method=RequestMethod.GET)
        public String doccookie(ModelMap model, @CookieValue("uid") String id, @CookieValue("pwd")String pw){
            model.addAttribute("id", id);
            model.addAttribute("pw", pw);
            return "user/login2";
        }
}
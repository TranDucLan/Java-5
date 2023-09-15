package com.phunglv.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phunglv.bean.Account;

@Controller
public class ShareController {
	@RequestMapping("/sharer/index")
	public String index(Model model) {
		model.addAttribute("message", "Hello Spring");
		model.addAttribute("Hello Spring boot");
		model.addAttribute("now", new Date());
		model.addAttribute(new Date());
		model.addAttribute("user", new Account("TeoLV","123",true));
		model.addAttribute(new Account("GaiNT","abc",false));
		return "index";
	}
}

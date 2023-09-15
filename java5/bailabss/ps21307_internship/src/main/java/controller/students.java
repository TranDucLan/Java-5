package controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;

public class students {
	@Autowired
	HttpServletRequest request;

	@RequestMapping({  "home/index" })
	public String index() {
		return "redirect:/home/index.html#!/specializations";
	}
}

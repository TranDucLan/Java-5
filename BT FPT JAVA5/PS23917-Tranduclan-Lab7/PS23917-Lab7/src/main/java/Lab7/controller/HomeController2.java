package Lab7.controller;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController2 {
	@RequestMapping("/home/index2")
	public String index() {
	return "home/index2";
	}
	

}

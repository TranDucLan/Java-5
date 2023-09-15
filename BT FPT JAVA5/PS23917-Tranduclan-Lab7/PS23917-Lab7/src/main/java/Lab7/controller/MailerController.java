package Lab7.controller;

import javax.mail.MessagingException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import Lab7.service.MailerService;



@Controller
public class MailerController {
	@Autowired
	MailerService mailer;

	@ResponseBody
	@RequestMapping("/mailer/demo1")
	public String demo1(Model model) {
		try {
			mailer.send("tranduclan2@gmail.com", "alo", "alo");			
			return "OK";
		} catch (MessagingException e) {
			return e.getMessage();
		}
	}
	
	@ResponseBody
	@RequestMapping("/mailer/demo2")
	public String demo2(Model model) {		
			mailer.queue("tranduclan2@gmail.com", "alo", "alo");
//			mailer.queue("phungsts@gmail.com", "Subject2", "Body2");
//			mailer.queue("thangtqps15783@fpt.edu.vn", "Subject2", "Body2");
//			mailer.queue("phuongvddps16207@fpt.edu.vn", "Subject2", "Body2");
//			mailer.queue("duynhps18293@fpt.edu.vn", "Subject2", "Body2");
			return "Queue OK";		
	}
}


package com.phunglv.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.phunglv.bean.Staff;

@Controller

public class StaffController {
	private static List<Staff> staffs = new ArrayList<Staff>();
	
	@GetMapping("staff/index")
	public String login(Model model) {
		Staff staff = new Staff();
		staff.setId("NV001");
		staff.setFullname("Nguyễn Văn Tèo");
		staff.setEmail("teo@gmail.com");
		staff.setSalary(500.0);
		staff.setGender(true);
		staff.setPosition("MAN");
		model.addAttribute("staff", staff);
		staffs.add(staff);
		model.addAttribute("staffs", staffs);
		return "staff";
	} 
	@PostMapping("staff/save")
	public String login(Model model, @ModelAttribute("staff")Staff staff) {
		staffs.add(staff);
		model.addAttribute("staffs", staffs);
		return "staff";
	}	
	
	@RequestMapping(value="staff/detail/{id}", params="lnkEdit")
	public String edit(ModelMap model, @PathVariable("id") String id) {
		Staff st = new Staff();
		for(Staff t : staffs) {
			if(t.getId().equals(id)) {
				st = t;
				break;
			}
		}
		model.addAttribute("staffs", staffs);
		model.addAttribute("staff", st);
		return "staff";
	}		
}

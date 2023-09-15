package com.phunglv.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.phunglv.bean.Country;
import com.phunglv.bean.Staff;
import com.phunglv.bean.Staff2;

@Controller
public class Staff2Controller {
	private static List<Staff2> staffs = new ArrayList<Staff2>();
	
	@GetMapping("staff2/index")
	public String index(Model model) {
		Staff2 staff2 = new Staff2();
		staff2.setPosition("EMP");
		staff2.setHobbies(new String[] {"Travelling"});
		staffs.add(staff2);
		model.addAttribute("staff2", staff2);
		return "staff2";
	}
	@PostMapping("staff2/save")
	public String save(@ModelAttribute("staff2")Staff2 staff2) {
		System.out.println("-------------------------");
		System.out.println("Position: "+staff2.getPosition());	
		System.out.println("Hobbies: ");
		for(String hb : staff2.getHobbies() ) {
			System.out.println("- "+hb);
		}
		System.out.println("National: ");
		System.out.println("- Id: "+staff2.getCountry().getId());
		return "staff2";
	}
	
	@ModelAttribute("positions")
	public Map<String, String> getPositions(){
		Map<String, String> map = new HashMap<>();
		map.put("CEO","Chief Executive Officer");
		map.put("DIR","Director");
		map.put("MAN","Manager");
		map.put("EMP","Employee");
		return map;
	}
	
	@ModelAttribute("hobbies")
	public String[] getHobbies() {
		String[] hobbies = {"Du lịch", "Nghe nhạc", "Đọc sách ","Nhảy","Khác"};
		return hobbies;
	}
	
	@ModelAttribute("nationalities")
	public List<Country> getNationalities(){
		List<Country> list = new ArrayList<>();
		list.add(new Country("VN","Việt Nam"));
		list.add(new Country("US","United States"));
		list.add(new Country("SG","Singapore"));
		return list;
	}
}

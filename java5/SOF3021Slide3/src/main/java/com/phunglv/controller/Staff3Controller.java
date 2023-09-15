package com.phunglv.controller;

import java.util.ArrayList;
import java.util.List;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.phunglv.bean.Staff3;


@Controller
public class Staff3Controller {
private static List<Staff3> staffs = new ArrayList<Staff3>();
	
	@GetMapping("staff3/index")
	public String login(Model model) {		
		Staff3 staff = new Staff3();	
		
		staff.setId(1);
		staff.setFullname("Nguyễn Văn Tèo");
		staff.setEmail("teo@gmail.com");
		staff.setSalary(500.0);
		staff.setGender(true);
		staff.setPosition("MAN");	
		staffs.add(staff);

		model.addAttribute("staff3", staff);
		model.addAttribute("staffs", staffs);
		return "staff3";
	} 
	
	@PostMapping("staff3/save")
    public String validate(ModelMap model,
                    @Valid @ModelAttribute("staff3")Staff3 staff,  BindingResult errors) {
            if(errors.hasErrors()){
                    model.addAttribute("message", "some fields are not valid. Please fix them!");
            }
            else{
                    model.addAttribute("message", "All fields are valid!");
                    staffs.add(staff);
            }   
    		model.addAttribute("staffs", staffs);
            return "staff3";
    }
    
	@RequestMapping(value="staff3/detail/{id}", params="lnkEdit")
	public String edit(ModelMap model, @PathVariable("id") int id) {
		Staff3 st = new Staff3();
		for(Staff3 t : staffs) {
			if(t.getId()==id) {
				st = t;
				break;
			}
		}
		model.addAttribute("staffs", staffs);
		model.addAttribute("staff3", st);
		return "staff3";
	}		
}

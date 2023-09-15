package com.phunglv.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.phunglv.bean.Student;
import com.phunglv.bean.User;

@Controller
@RequestMapping("/student")
public class StudentController {
	private static List<Student> students = new ArrayList<Student>();
	 
    static {
    	students.add(new Student(1,"Lê Văn Phụng", 9.5, "UDPM"));
    	students.add(new Student(2,"Nguyễn Văn tèo",8.5, "WEB"));
    }
	@RequestMapping()
	public String index(Model model) {
		model.addAttribute("message", "Bạn gọi index()");
		model.addAttribute("students", students);
		return "student";	
	}
	
	@RequestMapping(params="btnInsert")
	public String insert(Model model, Student sv) {
		students.add(sv);
		model.addAttribute("message", "Bạn gọi insert()");
		model.addAttribute("students", students);
		return "student";
	}
	
	@RequestMapping(params="btnUpdate")
	public String update(Model model, Student sv) {
		
		for(int i=0;i<students.size();i++) {
			if(students.get(i).getMasv()==sv.getMasv()) {
				students.set(i, sv);
			}
		}
		model.addAttribute("message", "Bạn gọi update()");
		model.addAttribute("students", students);
		return "student";
	}
	
	@RequestMapping(params="btnDelete")
	public String delete(Model model, Student sv) {
		for(int i=0;i<students.size();i++) {
			if(students.get(i).getMasv()==sv.getMasv()) {
				students.remove(i);
			}
		}
		model.addAttribute("message", "Bạn gọi delete()");
		model.addAttribute("students", students);
		return "student";
	}
	/*
	@RequestMapping(params="lnkEdit")
	public String edit(ModelMap model) {
		model.addAttribute("message", "Bạn gọi edit()");
		return "student";
	}
	*/

	@RequestMapping(value="/detail/{id}", params="lnkEdit")
	public String edit(ModelMap model, @PathVariable("id") int mssv) {
		Student st = new Student();
		for(Student sv : students) {
			if(sv.getMasv()==mssv) {
				st = sv;
				break;
			}
		}
		
		model.addAttribute("message", "Bạn gọi edit()");
		model.addAttribute("students", students);
		model.addAttribute("SV", st);
		return "student";
	}

}
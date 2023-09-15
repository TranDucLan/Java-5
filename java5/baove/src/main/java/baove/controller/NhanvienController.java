package baove.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import baove.dao.NhanvienDAO;
import baove.entity.Nhanvien;




@Controller
public class NhanvienController {
	@Autowired
	NhanvienDAO dao;
	
	@RequestMapping("/nhanvien/index")
	public String index(Model model) {
		Nhanvien item = new Nhanvien();
		model.addAttribute("item", item);
		List<Nhanvien> items = dao.findAll();
		model.addAttribute("items", items);
		return "nhanvien/index";
	}

@RequestMapping("/nhanvien/edit/{manv}")
public String edit(Model model, @PathVariable("manv") String manv) {
	Nhanvien item = dao.findById(manv).get();
	model.addAttribute("item", item);
	List<Nhanvien> items = dao.findAll();
	model.addAttribute("items", items);
	return "nhanvien/index";
}

@RequestMapping("/nhanvien/create")
public String create(Nhanvien item) {
	dao.save(item);
	System.out.print(item.getManv());
	return "redirect:/nhanvien/index";
}

@RequestMapping("/nhanvien/update")
public String update(Nhanvien item) {
	dao.save(item);
	return "redirect:/nhanvien/edit/" + item.getManv();
}

@RequestMapping("/nhanvien/delete/{manv}")
public String create(@PathVariable("manv") String manv) {
	dao.deleteById(manv);
	return "redirect:/nhanvien/index";
}
}
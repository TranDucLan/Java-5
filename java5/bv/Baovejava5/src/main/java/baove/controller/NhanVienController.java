package baove.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import baove.dao.NhanVienDAO;
import baove.entity.NhanVien;



@Controller
public class NhanVienController {
	@Autowired
	NhanVienDAO dao;

	@RequestMapping("/nhanvien/form")
	public String index(Model model) {
		NhanVien item = new NhanVien();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "nhanvien/form";
	}

	@RequestMapping("/nhanvien/edit/{manv}")
	public String edit(Model model, @PathVariable("manv") String manv) {
		NhanVien item = dao.findById(manv).get();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "nhanvien/form";
	}

	@RequestMapping("/nhanvien/create")
	public String create(NhanVien item) {
		dao.save(item);
		System.out.print(item.getManv());
		return "redirect:/nhanvien/form";
	}

	@RequestMapping("/nhanvien/update")
	public String update(NhanVien item) {
		dao.save(item);
		return "redirect:/nhanvien/edit/list" + item.getManv();
	}

	@RequestMapping("/nhanvien/delete/{manv}")
	public String create(@PathVariable("manv") String manv) {
		dao.deleteById(manv);
		return "redirect:/nhanvien/form";
	}
//	@RequestMapping("/nhanvien/newcontact")
//	public String newcontact(Model model) {
//		nhanvien item = new nhanvien();
//		model.addAttribute("item", item);
//		return "nhanvien/form";
//	}
}
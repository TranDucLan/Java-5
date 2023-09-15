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

	@RequestMapping("/nhanvien/list")
	public String index(Model model) {
		NhanVien item = new NhanVien();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "category/list";
	}

	@RequestMapping("/nhanvien/edit/{manv}")
	public String edit(Model model, @PathVariable("manv") String manv) {
		NhanVien item = dao.findById(manv).get();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "category/form";
	}

	@RequestMapping("/nhanvien/create")
	public String create(NhanVien item) {
		dao.save(item);
		System.out.print(item.getManv());
		return "redirect:/category/list";
	}

	@RequestMapping("/category/update")
	public String update(NhanVien item) {
		dao.save(item);
		return "redirect:/nhanvien/edit/list" + item.getManv();
	}

	@RequestMapping("/nhanvien/delete/{manv}")
	public String create(@PathVariable("manv") String manv) {
		dao.deleteById(manv);
		return "redirect:/nhanvien/list";
	}
	@RequestMapping("/category/newcontact")
	public String newcontact(Model model) {
		NhanVien item = new NhanVien();
		model.addAttribute("item", item);
		return "category/form";
	}
}
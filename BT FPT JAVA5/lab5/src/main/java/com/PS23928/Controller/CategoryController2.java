package com.PS23928.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.PS23928.DAO.CategoryDAO;
import com.PS23928.Entity.Category;




@Controller
public class CategoryController2 {
	@Autowired
	CategoryDAO dao;
	
	@RequestMapping("/category/index2")
	public String index(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "category/index2";
	}

@RequestMapping("/category/edit2/{id}")
public String edit(Model model, @PathVariable("id") String id) {
	Category item = dao.findById(id).get();
	model.addAttribute("item", item);
	List<Category> items = dao.findAll();
	model.addAttribute("items", items);
	return "category/index2";
}

@RequestMapping("/category/create2")
public String create(Category item) {
	dao.save(item);
	System.out.print(item.getId());
	return "redirect:/category/index2";
}

@RequestMapping("/category/update2")
public String update(Category item) {
	dao.save(item);
	return "redirect:/category/edit2/" + item.getId();
}

@RequestMapping("/category/delete2/{id}")
public String create(@PathVariable("id") String id) {
	dao.deleteById(id);
	return "redirect:/category/index2";
}
}
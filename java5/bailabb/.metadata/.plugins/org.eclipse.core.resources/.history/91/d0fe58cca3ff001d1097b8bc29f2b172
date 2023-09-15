package com.phunglv.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.phunglv.dao.ProductDAO;
import com.phunglv.entity.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("/product/sort1")
	public String sort1(Model model) {
		List<Product> items = dao.findAll(); // truy van tat ca
		model.addAttribute("items", items);
		return "product/sort";
	}

	//---------------------------
	
	@RequestMapping("/product/sort2")
	public String sort2(Model model) {
		Sort sort = Sort.by(Direction.DESC,"price");
		List<Product> items = dao.findAll(sort); // truy van sort theo price, giam
		model.addAttribute("items", items);
		return "product/sort";
	}
	
	//-----------------------
	
	@RequestMapping("/product/sort")
	public String sort3(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = dao.findAll(sort);
		model.addAttribute("items", items);
		return "product/sort";
	}
	
	//--------------------------------------------------y
	@RequestMapping("/product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		return "product/page";
	}
}

package com.phunglv.controller;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phunglv.dao.CategoryDAO;
import com.phunglv.entity.Category;

@Controller
public class CategoryController1 {
	@Autowired
	EntityManager em;
	
	@ResponseBody
	@RequestMapping("/category/list1")
	public List<Category> list1(){
		SimpleJpaRepository<Category, String > repo = new SimpleJpaRepository<>(Category.class, em);
		return repo.findAll();	
	}
	/*	
	@Autowired
	CategoryDAO repo;
	@ResponseBody
	@RequestMapping("/category/list2")
	public List<Category> list2(){
		return repo.findAll();
	}
	*/
	@Autowired
	CategoryDAO repo;
	@RequestMapping("/category/list2")
	public String list3(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = repo.findAll();
		model.addAttribute("items", items);
		return "category/index";
	}
}

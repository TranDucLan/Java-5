package com.phunglv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phunglv.dao.AccountDAO;
import com.phunglv.entity.Account;

@Controller
public class CrudController {
	@Autowired
	AccountDAO dao;
	
	@ResponseBody
	@RequestMapping("/account/list")
	public List<Account> list(){
		List<Account> list = dao.findAll();
		return list;
	}
	@RequestMapping("/account/edit/{username}")
	public Account edit(@PathVariable("username")String username) {
		Account account = dao.getOne(username);
		return account;
	}
	@RequestMapping("/account/create")
	public Account create(Account item) {
		if(!dao.existsById(item.getUsername())) {
			dao.save(item);
			return item;
		}
		throw new RuntimeException("Ma tai khoan da ton tai");
	}
	@RequestMapping("/account/update")
	public Account update(Account item) {
		if(dao.existsById(item.getUsername())) {
			dao.save(item);
			return item;
		}
		throw new RuntimeException("Ma tai khoan da ton tai");
	}
	@RequestMapping("/account/delete/{username}")
	public void delete(@PathVariable("username") String username) {
		if(dao.existsById(username)) {
			dao.deleteById(username);
		}
		throw new RuntimeException("Khong tim thay tai khoan nay");
	}
}

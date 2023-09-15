package com.ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ps21307.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
	//.....
}

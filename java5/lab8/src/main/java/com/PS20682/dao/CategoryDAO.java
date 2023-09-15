package com.PS20682.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.PS20682.entity.Category;



public interface CategoryDAO extends JpaRepository<Category, String>{
}

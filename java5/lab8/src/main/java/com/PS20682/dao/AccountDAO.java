package com.PS20682.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.PS20682.entity.Account;



public interface AccountDAO extends JpaRepository<Account, String>{
	
}

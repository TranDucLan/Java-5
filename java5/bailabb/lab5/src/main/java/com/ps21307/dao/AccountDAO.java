package com.ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ps21307.entity.Account;



public interface AccountDAO extends JpaRepository<Account, String>{
}

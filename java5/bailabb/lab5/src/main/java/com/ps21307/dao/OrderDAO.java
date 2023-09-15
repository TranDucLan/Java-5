package com.ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ps21307.entity.Order;



public interface OrderDAO extends JpaRepository<Order, Long>{
}

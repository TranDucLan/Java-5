package com.PS20682.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.PS20682.entity.Order;



public interface OrderDAO extends JpaRepository<Order, Long>{
}

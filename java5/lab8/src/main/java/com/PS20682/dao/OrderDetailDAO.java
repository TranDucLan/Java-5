package com.PS20682.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.PS20682.entity.OrderDetail;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}
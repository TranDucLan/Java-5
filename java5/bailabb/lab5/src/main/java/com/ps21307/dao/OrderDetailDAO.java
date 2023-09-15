package com.ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ps21307.entity.OrderDetail;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}
package asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import asm.bean.OrderDetail;


@Repository
public interface OrderDetailRepo extends JpaRepository<OrderDetail, Long>{

}

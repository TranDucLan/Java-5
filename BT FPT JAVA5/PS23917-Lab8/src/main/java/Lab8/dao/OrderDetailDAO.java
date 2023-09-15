package Lab8.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import Lab8.entity.OrderDetail;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}
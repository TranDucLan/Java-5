package Lab8.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import Lab8.entity.Order;



public interface OrderDAO extends JpaRepository<Order, Long>{
}

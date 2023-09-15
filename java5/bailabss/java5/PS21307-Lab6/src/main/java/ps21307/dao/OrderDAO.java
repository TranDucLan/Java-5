package ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ps21307.entity.Order;






public interface OrderDAO extends JpaRepository<Order, Long>{
}

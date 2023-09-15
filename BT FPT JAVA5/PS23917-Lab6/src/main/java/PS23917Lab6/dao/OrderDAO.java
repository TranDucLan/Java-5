package PS23917Lab6.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS23917Lab6.entity.Order;






public interface OrderDAO extends JpaRepository<Order, Long>{
}

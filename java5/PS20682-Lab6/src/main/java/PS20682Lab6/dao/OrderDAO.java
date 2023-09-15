package PS20682Lab6.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS20682Lab6.entity.Order;






public interface OrderDAO extends JpaRepository<Order, Long>{
}

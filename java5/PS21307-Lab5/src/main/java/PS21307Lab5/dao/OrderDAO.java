package PS21307Lab5.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS21307Lab5.entity.Order;






public interface OrderDAO extends JpaRepository<Order, Long>{
}

package PS21307Lab6.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import PS21307Lab6.entity.Order;






public interface OrderDAO extends JpaRepository<Order, Long>{
}

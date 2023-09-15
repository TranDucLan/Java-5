package ps21307.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ps21307.entity.OrderDetail;






public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
}
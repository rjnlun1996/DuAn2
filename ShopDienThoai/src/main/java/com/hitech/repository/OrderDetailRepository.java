package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.hitech.entities.OrderDetail;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{
	
	List<OrderDetail> findByOrderIdAndEnabledTrue(int id);
	
	@Query("SELECT od FROM OrderDetail od WHERE od.order.id = ?1 AND od.product.id = ?2")
	OrderDetail findByOrderIdAndProductId(int orderId, int productId);
}

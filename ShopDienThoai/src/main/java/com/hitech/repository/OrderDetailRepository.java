package com.hitech.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitech.entities.OrderDetail;

@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{
	List<OrderDetail> findByOrderIdAndEnabledTrue(int id);
	
	List<OrderDetail> findByOrderIdAndProductId(int orderId,int productId);
}

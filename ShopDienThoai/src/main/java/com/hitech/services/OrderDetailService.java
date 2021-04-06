package com.hitech.services;

import java.util.List;

import com.hitech.entities.OrderDetail;

public interface OrderDetailService extends IBaseService<OrderDetail, Integer>{
	List<OrderDetail> findAllByOrderId(int id);
	boolean deleteByEnable(Integer id);
	
	OrderDetail findByOrderIdAndProductId(int orderId, int productId);
	
	Iterable<OrderDetail> saveAll(List<OrderDetail> orderDetails);
}

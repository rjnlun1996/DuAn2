package com.hitech.services;

import java.util.List;

import com.hitech.entities.Order;

public interface OrderService extends IBaseService<Order, Integer>{
	
	boolean deleteByEnable(Integer id);
	
	List<Order> findByEnabledTrue();
	
	List<Order> findOrderByUsername(String username);
	
	boolean existsById(int id);
}

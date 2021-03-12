package com.hitech.services;

import java.util.List;

import com.hitech.entities.Order;

public interface OrderService extends IBaseService<Order, Integer>{
	List<Order> findByEnabledTrue();
	boolean deleteByEnable(Integer id);
}
